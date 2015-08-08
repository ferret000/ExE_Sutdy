class Vehicle
	def initialize
		@tire = Tire.new
	end
end

class Tire
	def spin_car
		"spinning car tire"
	end
	def spin_truck
		"spinning truck tire"
	end
end

class Car < Vehicle
	def move_forward
		puts "前進する"
		return @tire.spin_car
	end
end

class Truck < Vehicle
	def move_forward
		puts "前進する"
		return @tire.spin_truck
	end
end