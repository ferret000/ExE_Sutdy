module Salary
	def calculate_salary
		kihon + teate
	end
	
	def kihon
		@kihonkyu
	end

	def teate
		0
	end
end

class Shain
	include Salary

	def initialize(kihonkyu)
		@kihonkyu = kihonkyu
	end

	def standup
		"社員は取り敢えず起立する"
	end
=begin	
	def calculate_salary
		Salary.calculate_salary
	end	
=end
end
