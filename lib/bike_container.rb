module BikeContainer

  DEFAULT_CAPACITY = 10

  def bikes
    @bikes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  def bike_count
    bikes.count
  end

  def store bike
    raise "Station is full" if full?
    bikes << bike
  end

  def release_bike
    bikes.pop
  end

  def full?
    bike_count == capacity
  end

  def available_bikes
    @bikes.reject { |bike| bike.broken? }
  end

end