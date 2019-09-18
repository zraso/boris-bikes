require 'docking_station'
#
# require 'bike'

describe DockingStation do
  #set docked_station variable at the start of unit tests that can then be used
  # by other tests
    docked_station = DockingStation.new
    undocked_station = DockingStation.new
    docked_station.dock_bike(Bike.new)
    # docked_station.dock_bike(Bike.new)
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end

  # Rspec oneliner syntax:
  describe '#release_bike' do
    it {is_expected.to respond_to :release_bike}

    it 'releases working bike' do
      # expect(subject.release_bike).to respond_to :working?
      bike = docked_station.release_bike
      expect(bike).to respond_to :working?
    end

    it 'raises an error if no bikes are available' do
      expect {undocked_station.release_bike}.to raise_error("NoBikeClass")
    end
  end

  describe '#dock_bike' do
    it {expect(docked_station.bike).to be_a Bike}

    it 'raises an error if bike is already docked' do
      expect {docked_station.dock_bike(Bike.new)}.to raise_error("BikeAlreadyDocked")
    end
  end
end
