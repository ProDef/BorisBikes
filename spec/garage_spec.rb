require 'garage'

describe Garage do

	def fill_storage(storage)
 		20.times {storage.dock(Bike.new)} 
 	end

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

	it "should know when it's full" do
		expect(storage).not_to be_full
		fill_storage(storage)
		expect(storage).to be_full
	end

	it "shoould not accept a bike when it is full" do 
		fill_storage(storage)
		expect{storage.dock(bike) }.to raise_error(RuntimeError)
	end

	it "should be able to repair bikes" do
		bike.break
		storage.dock(bike)
		storage.fix_bike(bike)
		expect(bike).not_to be_broken
	end

	it "should provide a list of available bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break
		storage.dock(working_bike)
		expect(storage.available_bikes).to eq [working_bike]
	end

	it "should release a bike if it is fixed" do 
		broken_bike = Bike.new
		broken_bike.break
		storage.dock(broken_bike)
		storage.release_fixed_bikes
		expect(storage.bike_count).to eq(1)
	end
	
end