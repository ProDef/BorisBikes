require 'garage'

describe Garage do 

let(:bike) { Bike.new }
let(:storage) {Garage.new }

	it "can collect bikes from the van" do 
    expect(storage.bike_count).to eq(0)
    storage.dock(bike)    
    expect(storage.bike_count).to eq(1)
  end

  it "should release a bike" do 
		storage.dock(bike)
		storage.release_bike
		expect(storage.bike_count).to eq(0)
	end

end