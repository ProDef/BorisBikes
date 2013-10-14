# link to the Bike class
require '../lib/bike'


#we're describing the functionality of a class, Bike
describe Bike do 
	#This is a specific feature (behaviour)
	#that we expect to be present
	it "should not be broken after we create it" do
		bike = Bike.new # intialise a new object of bike class
		# expect an instance of this class to have
		#expect the method broken? of the object 'bike' to return false
		expect(bike).not_to be_broken
	end
end

