require_relative 'bike'

class DockingStation
  attr_reader :bike
  # def initialize
  #   @bike = nil
  # end
  #
  # def bike
  #   @bike
  # end

  def release_bike
    if @bike == nil
      raise "NoBikeClass"
    else
      Bike.new
    end
  end

  def dock_bike(bike)
    if @bike == nil
      @bike = bike
    else
      raise "BikeAlreadyDocked"
    end
  end

end
