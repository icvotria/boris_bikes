require_relative 'bike'

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'There is no bike, only Zuul' if @bikes.empty?
    @bikes.shift
  end

  def dock(bike)
    fail 'The docking station is full' if self.full?
    @bikes.push(bike)
  end

  def show_bikes
    @bikes
  end

  private

  def full?
    @bikes.size == DEFAULT_CAPACITY
  end

  def empty?
    @bikes.size == 0
  end
end
