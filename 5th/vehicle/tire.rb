class Tire
	def initialize
		# タイヤのタイプを初期化
		@type = 'nomal'
	end

	def spin
		"spinning #{@type} tire"
	end
end

class CarTire < Tire
	def initialize
		@type = "car"
	end
end

class TruckTire < Tire
	def initialize
		@type = "truck"
	end
end
