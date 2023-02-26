class MapquestDetails 
  attr_reader :distance,
              :time,
              :maneuvers

  def initialize(mapquest_data)
    @distance = mapquest_data[:distance]
    @time = mapquest_data[:formattedTime] 
    @maneuvers = mapquest_data[:legs][0][:maneuvers]
  end

  def round_distance 
    distance.round(1)
  end

  def direction_info
    maneuvers.map do |direction|
      direction[:narrative]
    end.join(' ')
  end
end