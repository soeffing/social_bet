class BettlesController < ApplicationController
  def new
    @bettle = Bettle.new
    respond_to do |format|
      format.js 
    end
  end

  def create
     # attr_accessible :maker_id, :taker_id, :fixture_id, :free_bet, :win_maker, :win_taker, :expiration_time, :bettle_status_id, :taker_outcome_id, :maker_outcome_id
 
     # manipulating
     
     params[:bettle][:expiration_time] = expiration_time(params[:time_select], params[:bettle][:expiration_time], params[:bettle][:days], params[:bettle][:hours], params[:bettle][:minutes])
    

     current_user.made_bettles.build(params[:bettle]).save
     respond_to do |format|
       format.js
     end
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
    @bettles = Bettle.where(:bettle_status_id => 1)
    render :json => @bettles.to_json(:include => {:fixture => {:include => [:home_team, :abroad_team, :league]}})
  end

  def team_search
    @fixtures = Fixture.search(params[:search_term])
  end


  protected

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
