require_relative 'Shain'

def call(shain, yakushoku)
	case yakushoku
	when "担当"
		shain.set_yakushoku_tanto
	when "主任"
		shain.set_yakushoku_shunin
	when "社長"
		shain.set_yakushoku_bucho
	end
	puts "おい！#{yakushoku}！"
	shain.ask
	shain.calculation_traveling_expense
	puts
end

shain = Shain.new
=begin
# 担当
shain.set_yakushoku_tanto
shain.ask
shain.calculation_traveling_expense
#主任
shain.set_yakushoku_shunin
shain.ask
shain.calculation_traveling_expense
#部長
shain.set_yakushoku_bucho
shain.ask
shain.calculation_traveling_expense
=end
call(shain, "担当")
call(shain, "主任")
call(shain, "部長")