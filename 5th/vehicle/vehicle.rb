require_relative './tire'

class Vehicle
	def initialize
		# タイヤを初期化
		@tire = Tire.new
	end

	# 前進！
	def move_forward
		puts "前進する"
		return @tire.spin
	end
end

class Car < Vehicle
	def initialize
		@tire = CarTire.new
	end
end

class Truck < Vehicle
	def initialize
		@tire = TruckTire.new
	end
end
