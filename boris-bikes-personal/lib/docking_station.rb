class DockingStation
  attr_reader :bike

  def bike
    @bike
  end

  def release_bike
    fail 'There is no bike, only Zuul' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end