require_relative 'Yakushoku'
class Tanto < Yakushoku
	def	ask
		puts "まずは様子を見ましょう"
	end

	def basic
		@basic = 13620
	end

	def teate
		@teate = 2000
	end

=begin
	def calculation_traveling_expense
		puts "自由席（13,620円）＋手当（2,000円）"
	end
=end
end