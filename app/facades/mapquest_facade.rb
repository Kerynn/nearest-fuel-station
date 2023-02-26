class MapquestFacade 

  def self.get_route_details(start, finish)
    route_data = MapquestService.route_search(start, finish)
    MapquestDetails.new(route_data[:route])
  end
end
