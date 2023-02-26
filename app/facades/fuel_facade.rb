class FuelFacade 

  def self.search_station(location)
    station_data = FuelStationService.fuel_search(location)
    station_details = FuelStation.new(station_data[:fuel_stations][0])
    station_address = station_details.full_address

    mapquest_data = MapquestService.route_search(location, station_address)
    mapquest_details = MapquestDetails.new(mapquest_data[:route])
    Fuel.new(station_details, mapquest_details)
  end
end