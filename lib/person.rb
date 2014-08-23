class Person

  attr_accessor :bike

  def initialize
    bike = nil
  end

  def rent_bike_from station
    raise "soz bro you've already got a bike" if have_bike?
    self.bike = station.release_bike
  end

  def have_bike?
    !bike.nil?
  end


end