require_relative './tanto'

class ShainFactory
	def create(type,kihonkyu)
		shain = nil
		if type == 'Tanto'
			shain = Tanto.new(kihonkyu)
		end
	shain
	end
end