require_relative 'Yakushoku'
require_relative 'Tanto'
require_relative 'Shunin'
require_relative 'Bucho'

class Shain	
	def initialize
		@yakushoku = Yakushoku.new
	end

	def ask
		@yakushoku.ask
	end

	def calculation_traveling_expense
		#"精算金額は#{@yakushoku.calculation_traveling_expense}円です。"
		@yakushoku.calculation_traveling_expense
	end

	def set_yakushoku_tanto
		@yakushoku = Tanto.new
	end

	def set_yakushoku_shunin
		@yakushoku = Shunin.new
	end

	def set_yakushoku_bucho
		@yakushoku = Bucho.new
	end
end