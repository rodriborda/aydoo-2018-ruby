require_relative './Azucarero'
require_relative './HacedorDeCafeConLeche'
require_relative './HacedorDeTeConLeche'


class MaquinaExpendedoraDeBebidas

	attr_accessor :hacedorDeCafeConLeche, :hacedorDeTeConLeche, :azucarero

	def initialize
		@hacedorDeCafeConLeche = HacedorDeCafeConLeche.new
		@hacedorDeTeConLeche = HacedorDeTeConLeche.new
		@azucarero = Azucarero.new

	end

	def hacer_cafe_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)
		@hacedorDeCafeConLeche.preparar(un_vaso)
		@azucarero.poner_azucar(un_vaso, cantidad_azucar)
	end

	def hacer_te_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)
		@hacedorDeTeConLeche.preparar(un_vaso)
		@azucarero.poner_azucar(un_vaso, cantidad_azucar)
	end

end
