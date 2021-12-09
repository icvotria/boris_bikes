require 'docking_station'

describe DockingStation do
  it 'releases bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'gets a bike' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

  it 'checks bike is working' do
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end

  it 'docks a bike' do
    bike = Bike.new
    subject.dock(bike) 
    
    expect(subject.bike).to eq(bike)
  end
end