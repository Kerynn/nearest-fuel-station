class MapquestService 

  def self.route_search(start, finish)
    parse_data(conn.get("/directions/v2/route?from=#{start}&to=#{finish}"))
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn 
    Faraday.new(url: 'http://www.mapquestapi.com') do |f|
      f.params['key'] = ENV['MAPQUEST_API']
    end
  end
end