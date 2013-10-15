require 'person'
require 'bike'

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

	it "can return bike to the station" do
		person = Person.new(:bike)
		station = double :station

		expect(station).to receive(:dock)

		person.return_rented_bike(station)
	end

	it "has no bike" do 
		person = Person.new

		expect(person).not_to have_bike
	end

	it "can fall off the bike" do
		bike = double :bike
		person = Person.new(bike)
		expect(bike).to receive(:break)

		person.break_a_bike
	end






end












