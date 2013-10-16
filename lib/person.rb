class Person

	def initialize(bike=nil)
		@bike = bike
	end

	def rent_bike_from(station)
		@bike = station.release_bike
	end

	def has_bike?
		!@bike.nil?
	end

	def return_rented_bike(station)
		@bike = station.dock
	end

	def break_a_bike
		@bike.break
	end

	def has_no_bike?
		@bike.nil?
	end


end