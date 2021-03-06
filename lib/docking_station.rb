class DockingStation

		DEFAULT_CAPACITY = 20

		def initialize(options = {})
			@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
			@bikes = []
		end

		def bike_count
			@bikes.count
		end

		def dock(bike)
			raise "Station is full" if full?
			@bikes << bike 
		end

		def release_bike
			@bikes.pop
		end

		def full?
			bike_count == @capacity
		end

		def available_bikes
			@bikes.reject {|bike| bike.broken? }
		end
end