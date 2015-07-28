require 'test/unit'

class TestExpense < Test::Unit::TestCase
	# 出発駅オブジェクトの作成
	def test_deptName
		dept = DepartureStation.new("Shinagawa")
		assert_equal("Shinagawa", dept.name)
	end
	# 到着駅オブジェクトの作成
	def test_destname
		dest = DestinationStation.new("Shinjuku")
		assert_equal("Shinjuku", dest.name)
	end
	# 料金オブジェクトの作成
	def	test_fare
		dept = DepartureStation.new("Shinagawa")
		dest = DestinationStation.new("Shinjuku")
		fare = Fare.new(200, dept, dest)
		assert_equal(200, fare.fare)
	end
	# 料金表の検索
	def	test_find_fare
		dept = DepartureStation.new("Shinagawa")
	 	dest = DestinationStation.new("Shinjuku")
		fare = Fare.new(200,dept,dest)
		fareTable = FareTable.new
		fareTable.add(fare)
		assert_equal(200,fareTable.find_fare(dept,dest))
	end

	# 駅
	class Station
		attr_accessor :name
		def initialize(name)
			@name = name
		end
	end
	# 出発駅
	class DepartureStation < Station
	end
	# 到着駅
	class DestinationStation < Station
	end
	# 料金
	class Fare 
		attr_accessor :fare, :dept, :dest
		def initialize(fare, dept, dest)
			@fare = fare
			@dept = dept
			@dest = dest
		end
	end
	# 料金表
	class FareTable
		def initialize()
			@fareTable = []
		end
		def add(fare)
			@fareTable << fare
		end
		def find_fare(dept, dest)
			fare_find =
				@fareTable.find {
					|fare| fare.dept == dept && fare.dest == dest}
			return fare_find.fare
		end
	end
end
