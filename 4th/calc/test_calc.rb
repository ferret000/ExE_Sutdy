require 'test/unit'
require_relative 'calc'

class TestCalc < Test::Unit::TestCase
	def setup
		@calc = Calc.new
	end

	# 足す数字が２つともゼロの場合
	def	test_both_zero()
		assert_equal(0,	@calc.add(0,0))
	end
	# 最初の数字がゼロの場合
	def	test_first_zero()	
		assert_equal(3,	@calc.add(0,3))	
	end
	# ２つ目の数字がゼロの場合
	def	test_second_zero()	
		assert_equal(2,	@calc.add(2,0))	
	end
	# 両方ともゼロではない場合	
	def	test_both_not_zero()	
		assert_equal(5,	@calc.add(2,3))	
	end
end
