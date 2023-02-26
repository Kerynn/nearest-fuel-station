class Fuel 
  attr_reader :destination,
              :name,
              :address,
              :fuel_type,
              :access_times, 
              :distance,
              :travel_time,
              :directions

  def initialize(station_data, mapquest_data)
    @destination = station_data.full_address 
    @name = station_data.name
    @address = station_data.full_address 
    @fuel_type = station_data.fuel_type
    @access_times = station_data.access_times 
    @distance = mapquest_data.distance 
    @travel_time = mapquest_data.time 
    @directions = mapquest_data.direction_info
  end

  def travel_info
    {
      "Distance": "#{distance.round(1)} miles",
      "Travel_time": travel_time,
      "Directions": directions
    }
  end
end