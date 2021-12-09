require 'docking_station'

describe DockingStation do
  
  describe '#release_bike' do
    it 'raises error if there is no bike' do
      expect { subject.release_bike }.to raise_error "There is no bike, only Zuul"
    end

    it 'releases bike if one is avaiable' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end
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