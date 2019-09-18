require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end
  #
  # def bike
  #   @bike
  # end

  def release_bike

    fail 'NoBikeClass' if @bikes.empty?
    @bikes.pop
    Bike.new

    # if @bikes.empty?
    #   raise "NoBikeClass"
    # else
    #   @bikes.pop
    #   Bike.new
    # end
  end

  def dock_bike(bike)

    fail 'BikeAlreadyDocked' if full? #'self'(instance) not @bikes (instance variable)
    # if @bikes.full?
    #   raise "BikeAlreadyDocked"
    # else
    @bikes << bike
    # end
  end

private

  def full?
    @bikes.size >= DEFAULT_CAPACITY ? true : false
    #   false
    # else
    #   true
    # end
  end

end
