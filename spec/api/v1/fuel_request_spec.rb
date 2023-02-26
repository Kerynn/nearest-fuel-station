require 'rails_helper'

RSpec.describe 'Fuel Service API' do 
  it 'returns the nearest fuel station response' do 

    get '/api/v1/nearest_fuel?location=denver,co'

    expect(response).to be_successful 

    fuel = JSON.parse(response.body, symbolize_names: true)
   
    expect(fuel).to be_a Hash
    expect(fuel).to have_key(:data)
    expect(fuel[:data]).to have_key(:id)
    expect(fuel[:data][:id]).to eq("null")
    expect(fuel[:data]).to have_key(:type)
    expect(fuel[:data][:type]).to eq("fuel_station")
    expect(fuel[:data]).to have_key(:attributes)
    expect(fuel[:data][:attributes]).to be_a Hash
    expect(fuel[:data][:attributes]).to have_key(:destination)
    expect(fuel[:data][:attributes][:destination]).to eq("201 W Colfax Ave, Denver, CO 80202")
    expect(fuel[:data][:attributes]).to have_key(:name)
    expect(fuel[:data][:attributes][:name]).to eq("City of Denver - Wellington E Webb Municipal Building")
    expect(fuel[:data][:attributes]).to have_key(:address)
    expect(fuel[:data][:attributes][:address]).to eq("201 W Colfax Ave, Denver, CO 80202")
    expect(fuel[:data][:attributes]).to have_key(:fuel_type)
    expect(fuel[:data][:attributes][:fuel_type]).to eq("ELEC")
    expect(fuel[:data][:attributes]).to have_key(:access_times)
    expect(fuel[:data][:attributes][:access_times]).to eq("Employee use only")
    expect(fuel[:data][:attributes]).to have_key(:travel_info)
    expect(fuel[:data][:attributes][:travel_info]).to be_a Hash
    expect(fuel[:data][:attributes][:travel_info]).to have_key(:Distance)
    expect(fuel[:data][:attributes][:travel_info][:Distance]).to eq("0.3 miles")
    expect(fuel[:data][:attributes][:travel_info]).to have_key(:Travel_time)
    expect(fuel[:data][:attributes][:travel_info][:Travel_time]).to eq("00:01:11")
    expect(fuel[:data][:attributes][:travel_info]).to have_key(:Directions)
    expect(fuel[:data][:attributes][:travel_info][:Directions]).to eq("Head toward Cherokee St on W Colfax Ave (I-70-BL). Go for 0.2 mi. Make a U-Turn onto W Colfax Ave (I-70-BL). Go for 509 ft. Arrive at W Colfax Ave (I-70-BL).")
  end
end