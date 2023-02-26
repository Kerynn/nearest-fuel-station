require 'rails_helper'

RSpec.describe MapquestService do 
  it 'can return the route request' do 
    response = MapquestService.route_search('5224 W 25th Ave, Denver, CO 80214', '2027 Depew St, Denver, CO 80214')
    
    expect(response).to be_a Hash
    expect(response).to have_key(:route)
    expect(response[:route]).to have_key(:sessionId)
    expect(response[:route]).to have_key(:distance)
    expect(response[:route]).to have_key(:formattedTime)
    expect(response[:route]).to have_key(:realTime)
    expect(response[:route]).to have_key(:legs)
    expect(response[:route][:legs]).to be_an Array
    expect(response[:route][:legs][0]).to have_key(:index)
    expect(response[:route][:legs][0]).to have_key(:maneuvers)
    expect(response[:route][:legs][0][:maneuvers]).to be_an Array
    expect(response[:route][:legs][0][:maneuvers][0]).to have_key(:distance)
    expect(response[:route][:legs][0][:maneuvers][0]).to have_key(:narrative)
    expect(response[:route][:legs][0][:maneuvers][0]).to have_key(:startPoint)
  end
end