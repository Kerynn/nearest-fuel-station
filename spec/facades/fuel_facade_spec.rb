require 'rails_helper'

RSpec.describe FuelFacade do 
  it 'returns a fuel object' do 
    fuel = FuelFacade.search_station('denver, co')

    expect(fuel).to be_an_instance_of(Fuel)
  end
end