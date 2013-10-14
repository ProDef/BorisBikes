class Bike

	#the initialize method is always called when you create a new
	#class by typipng Bike.new
	def fix
		#all instance variables begin with "@"
		#this must be an instance variable because we'll need it
		#in other methods
		@broken = false
	end

	def broken?
		@broken
	end

	def break
		@broken = true
	end

end