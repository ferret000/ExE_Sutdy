require 'test/unit'

class TestCalc < Test::Unit::TestCase
	# 足す数字が２つともゼロの場合
	def	test_both_zero()
		assert_equal(0,	add(0,0))
	end
	# 最初の数字がゼロの場合
	def	test_first_zero()	
		assert_equal(3,	add(0,	3))	
	end
	# ２つ目の数字がゼロの場合
	def	test_second_zero()	
		assert_equal(2,	add(2,	0))	
	end
	# 両方ともゼロではない場合	
	def	test_both_not_zero()	
		assert_equal(5,	add(2,	3))	
	end

	# 足し算メソッド
	def add(first, second)
		first + second
	end
end
