require_relative 'unit'
class Bumon < Unit
	#上の階層への関係を定義？
	attr_accessor :units

	def initialize(name, contacts)
		super
		@units = []
	end

	def add(unit)
		units << unit
	end

	def work
		puts @name + " : チームワークを発揮します。"	
		@units.each {|unit| unit.work}
	end

	def work_all
		#繰り返し
		@units.each {|unit| unit.work}
	end

	def get_child	
		return units[0] #差し当たって、１つ返しておく！！
	end

	def get_children	
		return units
	end
end