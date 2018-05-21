require_relative './Tetero'
require_relative './Lechero'

class HacedorDeTeConLeche

	attr_accessor :tetero, :lechero

	def initialize
		@tetero = Tetero.new
		@lechero = Lechero.new
	end

	def preparar(un_vaso)
		@tetero.agregar_te(un_vaso)
		@lechero.agregar_leche(un_vaso)
	end

end
