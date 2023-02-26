class FuelStation
  attr_reader :name,
              :fuel_type,
              :city,
              :state,
              :street_address,
              :zip,
              :access_times,
              :id

  def initialize(fuel_station_data)
    @name = fuel_station_data[:station_name]
    @fuel_type = fuel_station_data[:fuel_type_code]
    @city = fuel_station_data[:city]
    @state = fuel_station_data[:state]
    @street_address = fuel_station_data[:street_address]
    @zip = fuel_station_data[:zip]
    @access_times = fuel_station_data[:access_days_time]
    @id = fuel_station_data[:id]
  end

  def full_address 
    "#{street_address}, #{city}, #{state} #{zip}"
  end
end