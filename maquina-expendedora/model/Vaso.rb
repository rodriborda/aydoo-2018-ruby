class Vaso

	attr_accessor :cantidad_azucar, :leche, :cafe, :te

	def initialize
		@cantidad_azucar = 0
		@leche = false
		@cafe = false
		@te = false
	end

	def set_cantidad_de_azucar(cantidad_azucar)
		@cantidad_azucar = cantidad_azucar
	end

	def cantidad_de_azucar()
		return @cantidad_azucar
	end

	def tiene_azucar?
		return @cantidad_azucar > 0
	end

	def set_leche
		@leche = true
	end

	def tiene_leche?
		return @leche
	end

	def set_cafe
		@cafe = true
	end

	def tiene_cafe?
		return @cafe
	end

	def set_te
		@te = true		
	end

	def tiene_te?
		return @te		
	end
end
