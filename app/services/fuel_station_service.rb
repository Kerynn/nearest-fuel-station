class FuelStationService 

  def self.fuel_search(location)
    parse_data(conn.get("/api/alt-fuel-stations/v1/nearest.json?location=#{location}&fuel_type=ELEC&limit=1"))
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn 
    Faraday.new(url: 'https://developer.nrel.gov') do |f|
      f.params['api_key'] = ENV['NREL_API']
    end
  end
end