require 'rails_helper'

RSpec.describe 'find nearest fuel station' do 
  describe 'when I visit /' do 
    describe "and select 'Griffin Coffee from the start location drop down" do 
      it 'should show the closest electric fuel station to the user' do 
        visit root_path 

        select "Griffin Coffee", :from => "location"
        click_button "Find Nearest Station"

        expect(current_path).to eq search_path
        expect(page).to have_content("Nearest Fuel Station to 5224 W 25th Ave, Denver, CO 80214")
        expect(page).to have_content("Fuel Station: Shake Shack - Tesla Supercharger")
        expect(page).to have_content("Address: 2027 Depew St, Denver, CO 80214")
        expect(page).to have_content("Fuel Type: ELEC")
        expect(page).to have_content("Access Times: 24 hours daily")
      end

      it 'should have route information' do 
        visit root_path 

        select "Griffin Coffee", :from => "location"
        click_button "Find Nearest Station"

        expect(current_path).to eq search_path
        expect(page).to have_content("Distance to Nearest Station: 0.7 miles")
        expect(page).to have_content("Travel Time: 00:01:54")
        expect(page).to have_content("Directions: Head east on W 25th Ave. Go for 246 ft. Turn right onto Sheridan Blvd (CO-95). Go for 0.4 mi. Turn right onto W 20th Ave. Go for 0.2 mi. Turn right onto Depew St. Go for 174 ft. Arrive at Depew St.")
      end
    end
  end
end