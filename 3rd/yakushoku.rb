class Yakushoku
	def initialize
		@basic = 0
		@teate = 0
	end
	def ask
		puts ""
	end

	def calculation_traveling_expense
		puts "精算金額は#{basic + teate}円です。"
		#@basic + @teate
	end

	def basic
		@basic
	end

	def teate
		@teate
	end
end