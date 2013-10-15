class Person

	def initialize(bike=nil)
		@bike = bike
	end

	def rent_bike_from(station)
		@bike = station.release_bike
	end

	def has_bike?
		@bike != nil
	end

	def return_bike
		@bike = station.dock
	end

end