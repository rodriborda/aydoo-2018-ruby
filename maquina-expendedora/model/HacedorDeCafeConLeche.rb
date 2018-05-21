require_relative './Cafetero'
require_relative './Lechero'


class HacedorDeCafeConLeche
	attr_accessor :cafetero, :lechero

	def initialize
		@cafetero = Cafetero.new
		@lechero = Lechero.new
	end

	def preparar(un_vaso)
		@cafetero.agregar_cafe(un_vaso)
		@lechero.agregar_leche(un_vaso)
	end
end
