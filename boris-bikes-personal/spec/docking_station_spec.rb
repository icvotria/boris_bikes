require 'docking_station'

describe DockingStation do
  docking_station = DockingStation.new
  bike = docking_station.release_bike

  it 'releases bike' do
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'gets a bike' do
    expect(bike).to respond_to(:working?)
  end

  it 'checks bike is working' do
    expect(bike.working?).to eq(true)
  end

  it 'docks a bike' do
    is_expected.to respond_to(:dock).with(1).argument
  end

end