class BettlesController < ApplicationController
  def new
    @bettle = Bettle.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
  end

  def team_search
    @fixtures = Fixture.search(params[:search_term])
  end
end
