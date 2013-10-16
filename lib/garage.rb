class Garage

		DEFAULT_CAPACITY = 20

	def initialize(options = {})
			@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
			@bikes = []
	end

	def bike_count
		@bikes.count
	end

	def dock(bike)
		@bikes << bike 
	end

	def release_bike
		@bikes.pop
	end







end