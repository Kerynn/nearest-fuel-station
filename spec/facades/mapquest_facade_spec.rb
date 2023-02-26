require 'rails_helper'

RSpec.describe MapquestFacade do 
  it 'can return the mapquest object' do 
    mapquest = MapquestFacade.get_route_details('5224 W 25th Ave, Denver, CO 80214', '2027 Depew St, Denver, CO 80214')
  
    expect(mapquest).to be_an_instance_of(MapquestDetails)
  end
end