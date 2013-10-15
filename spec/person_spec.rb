require 'person'

describe Person do
	it "can rent a bike from the station" do 
		person = Person.new
		station = double :station
		expect(station).to receive(:release_bike)

		person.rent_bike_from(station)
	end

	it "has a bike" do 
		person = Person.new(:bike)
		expect(person).to have_bike
	end

end