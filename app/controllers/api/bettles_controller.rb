class Api::BettlesController < Api::BaseController
  def index
    respond_with :api, Bettle.all
  end
 
  def show
    respond_with :api, Bettle.find(params[:id])
  end
 
  def create
    respond_with :api, Bettle.create(params[:Bettle])
  end
 
  def update
    respond_with :api, Bettle.update(params[:id], params[:Bettle])
  end
 
  def destroy
    respond_with :api, Bettle.destroy(params[:id])
  end
end