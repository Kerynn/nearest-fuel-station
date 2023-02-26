class FuelStationFacade 

  def self.get_fuel_station(location)
    fuel_station_data = FuelStationService.fuel_search(location)
    FuelStation.new(fuel_station_data[:fuel_stations][0])
  end
end