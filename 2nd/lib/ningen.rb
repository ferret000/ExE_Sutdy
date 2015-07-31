class Ningen
	#コンストラクタ
	def initialize(name, shincho)
		# 変数はコンストラクタで宣言するのが慣例何だとか
		@name = name
		@shincho = shincho
	end
	
	def taberu
		puts "食べています。"
	end

	def neru
		puts "寝ています。"
	end
end