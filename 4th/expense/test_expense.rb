require 'test/unit'
require_relative 'station'
require_relative 'departure_station'
require_relative 'destination_station'
require_relative 'fare'
require_relative 'fare_table'

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
	def test_fare
		dept = DepartureStation.new("Shinagawa")
		dest = DestinationStation.new("Shinjuku")
		fare = Fare.new(200, dept, dest)
		assert_equal(200, fare.fare)
	end
	# 料金表の検索
	def test_find_fare
		dept = DepartureStation.new("Shinagawa")
		dest = DestinationStation.new("Shinjuku")
		fare = Fare.new(200,dept,dest)
		fareTable = FareTable.new
		fareTable.add(fare)
		assert_equal(200,fareTable.find_fare(dept,dest))
	end
end
