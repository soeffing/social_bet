class BettlesController < ApplicationController
  include ActionController::Live
  
  def new
    @bettle = Bettle.new
    respond_to do |format|
      format.js 
    end
  end

  def create
     # attr_accessible :maker_id, :taker_id, :fixture_id, :free_bet, :win_maker, :win_taker, :expiration_time, :bettle_status_id, :taker_outcome_id, :maker_outcome_id
 
     # manipulating
     
     params[:bettle][:expiration_time] = expiration_time(params[:time_select], params[:bettle][:expiration_time], params[:days], params[:hours], params[:minutes])
    

     @bettle = current_user.made_bettles.build(bettle_params)
     # send the server sent event bettle created
     if @bettle.save
      $redis.publish('bettle.create', @bettle.to_json(:include => {:fixture => {:include => [:home_team, :abroad_team, :league]}}))
     end
     #respond_to do |format|
       #format.js
     #end
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
  end

  def index
    if current_user 
      @bettles = Bettle.where(:bettle_status_id => 1).where('maker_id != ? AND  expiration_time >= ?', current_user.id, Time.now)
    else
      @bettles = Bettle.where(:bettle_status_id => 1).where('expiration_time >= ?', Time.now).limit(2)
    end
    render :json => @bettles.to_json(:include => {:fixture => {:include => [:home_team, :abroad_team, :league]}})
  end

 
  # methods searches for a team -> used on 1. step of bettle creation process
  def team_search
    @fixtures = Fixture.search(params[:search_term])
  end

  # rails cast on live stream Rails 4
   def events
     response.headers["Content-Type"] = "text/event-stream"   
     redis = Redis.new
     redis.subscribe('bettle.create') do |on|
       on.message do |event, data|
         response.stream.write "data: #{data}\n\n"
       end
     end
   rescue IOError
     logger.info "Stream closed biatch"
   ensure 
     redis.quit
     response.stream.close
   end


  protected

  def bettle_params
    params.required(:bettle).permit(:maker_id, :taker_id, :fixture_id, :free_bet, :win_maker, :win_taker, :accepted, :expiration_time, :bettle_status_id, :taker_outcome_id, :maker_outcome_id)
  end

  def expiration_time(time_select, exp_param, days, hours, minutes)
    if time_select == "0"
      days.nil? ? d = 0 : d = days.to_i
      hours.nil? ? d = 0 : h = hours.to_i
      minutes.nil? ? d = 0 : m = minutes.to_i
      return Time.now.utc + d.days + h.hours + m.minutes
    elsif time_select == "1"
      date = exp_param.split(' ')[0].split('/')
      time = exp_param.split(' ')[1].split(':')
      return DateTime.new(date[2].to_i, date[0].to_i, date[1].to_i, time[0].to_i, time[1].to_i)
    end
  end
end
