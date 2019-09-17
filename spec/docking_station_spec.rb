require 'docking_station'
#
# require 'bike'

describe DockingStation do
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end

  # Rspec oneliner syntax:
  it {is_expected.to respond_to :release_bike}

  it 'releases working bike' do
    # expect(subject.release_bike).to respond_to :working?

    bike = subject.release_bike
    expect(bike).to be_working
  end
end
