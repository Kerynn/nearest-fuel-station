class Api::V1::FuelController < ApplicationController 

  def index     
    render json: FuelStationSerializer.new(FuelFacade.search_station(params[:location]))
  end
end