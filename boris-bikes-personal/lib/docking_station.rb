class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'There is no bike, only Zuul' unless @bikes.size > 0
    @bikes.shift
  end

  def dock(bike)
    fail 'The docking station is full' unless @bikes.size < 20
    @bikes << bike
  end
end