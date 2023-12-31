class SearchController < ApplicationController
  def index 
    @parks = ParksFacade.parks_by_state(params[:state])
    @state = params[:state]
  end
end