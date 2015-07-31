require_relative 'shain' # インポートするファイル名を指定
require_relative 'tanto'
require_relative 'shunin'
require_relative 'bucho'

def call(shain)
	puts shain.standup
	puts "私の給料は#{shain.calculate_salary}円です。"
	puts
end

call(Tanto.new(100))
call(Shunin.new(100))
call(Bucho.new(100))
