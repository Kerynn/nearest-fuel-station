class FuelStationSerializer 
  include JSONAPI::Serializer 

  set_id {"null"} 
  attributes :destination, :name, :address, :fuel_type, :access_times, :travel_info 
end