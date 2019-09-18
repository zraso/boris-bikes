require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end
  #
  # def bike
  #   @bike
  # end

  def release_bike
    if @bikes.length < 1
      raise "NoBikeClass"
    else
      @bikes.pop
      Bike.new
    end
  end

  def dock_bike(bike)
    if @bikes.size < 20
      @bikes.push(bike)
    else
      raise "BikeAlreadyDocked"
    end
  end

end
