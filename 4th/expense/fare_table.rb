require_relative 'fare'

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