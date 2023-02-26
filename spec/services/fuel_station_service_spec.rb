require 'rails_helper'

RSpec.describe FuelStationService do 
  it 'can return the nearest fuel stations by location' do 
    response = FuelStationService.fuel_search("5224 W 25th Ave, Denver, CO 80214")

    expect(response).to be_a Hash
    expect(response).to have_key(:latitude)
    expect(response).to have_key(:longitude)
    expect(response).to have_key(:fuel_stations)
    expect(response[:fuel_stations]).to be_an Array
    expect(response[:fuel_stations].count).to eq 1
    expect(response[:fuel_stations][0]).to have_key(:access_days_time)
    expect(response[:fuel_stations][0]).to have_key(:fuel_type_code)
    expect(response[:fuel_stations][0]).to have_key(:id)
    expect(response[:fuel_stations][0]).to have_key(:station_name)
    expect(response[:fuel_stations][0][:station_name]).to eq("Shake Shack - Tesla Supercharger")
    expect(response[:fuel_stations][0]).to have_key(:city)
    expect(response[:fuel_stations][0]).to have_key(:state)
    expect(response[:fuel_stations][0]).to have_key(:street_address)
    expect(response[:fuel_stations][0]).to have_key(:zip)
    expect(response[:fuel_stations][0]).to have_key(:country)
    expect(response[:fuel_stations][0]).to have_key(:distance)
  end
end