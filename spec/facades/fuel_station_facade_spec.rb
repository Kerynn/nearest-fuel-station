require 'rails_helper'

RSpec.describe FuelStationFacade do 
  it 'can return the fuel station object' do 
    fuel_station = FuelStationFacade.get_fuel_station("5224 W 25th Ave, Denver, CO 80214")

    expect(fuel_station).to be_an_instance_of(FuelStation)
  end
end