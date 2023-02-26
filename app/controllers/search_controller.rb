class SearchController < ApplicationController 

  def index 
    @location_query = params[:location]
    @fuel_station = FuelStationFacade.get_fuel_station(@location_query)
    @route_info = MapquestFacade.get_route_details(@location_query, @fuel_station.full_address)
  end
end