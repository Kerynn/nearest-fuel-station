require 'rails_helper'

RSpec.describe FuelStation do 
  it 'exists and has attributes' do 
    fuel_station_data = {
            :access_code=>"public",
            :access_days_time=>"24 hours daily",
            :access_detail_code=>"CREDIT_CARD_ALWAYS",
            :cards_accepted=>"A D Debit M V",
            :date_last_confirmed=>nil,
            :expected_date=>nil,
            :fuel_type_code=>"ELEC",
            :groups_with_access_code=>"Public - Credit card at all times",
            :id=>254096,
            :open_date=>"2023-02-11",
            :owner_type_code=>"P",
            :status_code=>"E",
            :restricted_access=>false,
            :station_name=>"Shake Shack - Tesla Supercharger",
            :station_phone=>"877-798-3752",
            :updated_at=>"2023-02-16T21:36:47Z",
            :facility_type=>"PARKING_LOT",
            :geocode_status=>"GPS",
            :latitude=>39.748186,
            :longitude=>-105.057756,
            :city=>"Denver",
            :intersection_directions=>nil,
            :plus4=>nil,
            :state=>"CO",
            :street_address=>"2027 Depew St",
            :zip=>"80214",
            :country=>"US",
            :bd_blends=>nil,
            :cng_dispenser_num=>nil,
            :cng_fill_type_code=>nil,
            :cng_psi=>nil,
            :cng_renewable_source=>nil,
            :cng_total_compression=>nil,
            :cng_total_storage=>nil,
            :cng_vehicle_class=>nil,
            :e85_blender_pump=>nil,
            :e85_other_ethanol_blends=>nil,
            :ev_connector_types=>["TESLA"],
            :ev_dc_fast_num=>8,
            :ev_level1_evse_num=>nil,
            :ev_level2_evse_num=>nil,
            :ev_network=>"Tesla",
            :ev_network_web=>"https://www.tesla.com/supercharger",
            :ev_other_evse=>nil,
            :ev_pricing=>nil,
            :ev_renewable_source=>nil,
            :hy_is_retail=>nil,
            :hy_pressures=>nil,
            :hy_standards=>nil,
            :hy_status_link=>nil,
            :lng_renewable_source=>nil,
            :lng_vehicle_class=>nil,
            :lpg_primary=>nil,
            :lpg_nozzle_types=>nil,
            :ng_fill_type_code=>nil,
            :ng_psi=>nil,
            :ng_vehicle_class=>nil,
            :rd_blends=>nil,
            :rd_blends_fr=>nil,
            :rd_blended_with_biodiesel=>nil,
            :rd_max_biodiesel_level=>nil,
            :access_days_time_fr=>nil,
            :intersection_directions_fr=>nil,
            :bd_blends_fr=>nil,
            :groups_with_access_code_fr=>"Public - Carte de crédit en tout temps",
            :ev_pricing_fr=>nil,
            :distance=>0.38564,
            :distance_km=>0.62063
          }
  
    fuel_station = FuelStation.new(fuel_station_data)

    expect(fuel_station).to be_an_instance_of(FuelStation)
    expect(fuel_station.name).to eq("Shake Shack - Tesla Supercharger")
    expect(fuel_station.fuel_type).to eq("ELEC")
    expect(fuel_station.city).to eq("Denver")
    expect(fuel_station.state).to eq("CO")
    expect(fuel_station.street_address).to eq("2027 Depew St")
    expect(fuel_station.zip).to eq("80214")
    expect(fuel_station.access_times).to eq("24 hours daily")
    expect(fuel_station.id).to eq(254096)
    expect(fuel_station.full_address).to eq("2027 Depew St, Denver, CO 80214")
  end
end