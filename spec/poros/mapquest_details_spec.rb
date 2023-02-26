require 'rails_helper'

RSpec.describe MapquestDetails do 
  it 'exists and has attributes' do 
    mapquest_data = {
      "sessionId": "AHEA5wcAACoAAAAAAAAADAAAAIkAAAB42mPoZGBgZGJgYGDPSC1KtUrOFVHSNAByGdwfVk3h0Kj2NmW66BKjDqUZsACYxjtrIRovuorHMgic8jLVf-McIwikDYA0Aw7Qa1zbpgykWRkEmBgAs4gZgCTMz4g:car",
      "realTime": 129,
      "distance": 0.6997,
      "time": 114,
      "formattedTime": "00:01:54",
      "hasHighway": false,
      "hasTollRoad": false,
      "hasBridge": false,
      "hasSeasonalClosure": false,
      "hasTunnel": false,
      "hasFerry": false,
      "hasUnpaved": false,
      "hasTimedRestriction": false,
      "hasCountryCross": false,
      "legs": [
          {
              "index": 0,
              "hasTollRoad": false,
              "hasHighway": false,
              "hasBridge": false,
              "hasUnpaved": false,
              "hasTunnel": false,
              "hasSeasonalClosure": false,
              "hasFerry": false,
              "hasCountryCross": false,
              "hasTimedRestriction": false,
              "distance": 0.6997,
              "time": 129,
              "formattedTime": "00:02:09",
              "origIndex": 0,
              "origNarrative": "",
              "destIndex": 0,
              "destNarrative": "",
              "maneuvers": [
                  {
                      "index": 0,
                      "distance": 0.0466,
                      "narrative": "Head east on W 25th Ave. Go for 246 ft.",
                      "time": 18,
                      "direction": 8,
                      "directionName": "East",
                      "signs": [],
                      "maneuverNotes": [],
                      "formattedTime": "00:00:18",
                      "transportMode": "car",
                      "startPoint": {
                          "lat": 39.75302,
                          "lng": -105.05412
                      },
                      "turnType": 0,
                      "mapUrl": "",
                      "attributes": 0,
                      "iconUrl": "",
                      "streets": [
                          "W 25th Ave"
                      ]
                  },
                  {
                      "index": 1,
                      "distance": 0.371,
                      "narrative": "Turn right onto Sheridan Blvd (CO-95). Go for 0.4 mi.",
                      "time": 61,
                      "direction": 4,
                      "directionName": "South",
                      "signs": [],
                      "maneuverNotes": [],
                      "formattedTime": "00:01:01",
                      "transportMode": "car",
                      "startPoint": {
                          "lat": 39.75302,
                          "lng": -105.05324999999999
                      },
                      "turnType": 2,
                      "mapUrl": "",
                      "attributes": 0,
                      "iconUrl": "",
                      "streets": [
                          "CO-95",
                          "Sheridan Blvd"
                      ]
                  },
                  {
                      "index": 2,
                      "distance": 0.2492,
                      "narrative": "Turn right onto W 20th Ave. Go for 0.2 mi.",
                      "time": 43,
                      "direction": 7,
                      "directionName": "West",
                      "signs": [],
                      "maneuverNotes": [],
                      "formattedTime": "00:00:43",
                      "transportMode": "car",
                      "startPoint": {
                          "lat": 39.74763,
                          "lng": -105.05323999999999
                      },
                      "turnType": 2,
                      "mapUrl": "",
                      "attributes": 0,
                      "iconUrl": "",
                      "streets": [
                          "W 20th Ave"
                      ]
                  },
                  {
                      "index": 3,
                      "distance": 0.0329,
                      "narrative": "Turn right onto Depew St. Go for 174 ft.",
                      "time": 7,
                      "direction": 1,
                      "directionName": "North",
                      "signs": [],
                      "maneuverNotes": [],
                      "formattedTime": "00:00:07",
                      "transportMode": "car",
                      "startPoint": {
                          "lat": 39.747640000000004,
                          "lng": -105.05791999999998
                      },
                      "turnType": 2,
                      "mapUrl": "",
                      "attributes": 0,
                      "iconUrl": "",
                      "streets": [
                          "Depew St"
                      ]
                  },
                  {
                      "index": 4,
                      "distance": 0,
                      "narrative": "Arrive at Depew St.",
                      "time": 0,
                      "direction": 0,
                      "directionName": "None",
                      "signs": [],
                      "maneuverNotes": [],
                      "formattedTime": "00:00:00",
                      "transportMode": "car",
                      "startPoint": {
                          "lat": 39.748110000000004,
                          "lng": -105.05791999999998
                      },
                      "turnType": 0,
                      "mapUrl": "",
                      "attributes": 0,
                      "iconUrl": "",
                      "streets": []
                  }
              ]
          }
      ]
    }

    map_details = MapquestDetails.new(mapquest_data)

    expect(map_details).to be_an_instance_of(MapquestDetails)
    expect(map_details.distance).to eq(0.6997)
    expect(map_details.round_distance).to eq(0.7)
    expect(map_details.time).to eq("00:01:54")
    expect(map_details.direction_info).to eq("Head east on W 25th Ave. Go for 246 ft. Turn right onto Sheridan Blvd (CO-95). Go for 0.4 mi. Turn right onto W 20th Ave. Go for 0.2 mi. Turn right onto Depew St. Go for 174 ft. Arrive at Depew St.")
  end
end