require_relative './Fibonacci'

class CalculadorSecuencia

	attr_accessor :fibo

	def initialize
		@fibo = Fibonacci.new	
	end

	def getSecuencia(numero)
		secuencia = []

		for i in 0..numero - 1 do
            secuencia[i] = @fibo.getNumero(i)
       	end

        return secuencia
	end

	def getSecuenciaInvertida(numero)
		secuenciaInvertida = []
		contador = numero - 1

		for i in 0..numero - 1 do
            secuenciaInvertida[contador] = @fibo.getNumero(i)
            contador -= 1
       	end

        return secuenciaInvertida
	end

	def getSoloPares(secuencia)
		pares = []
		contador = 0

		for i in 0..secuencia.length - 1 do
			resultado = secuencia[i]

			if resultado % 2 == 0 && resultado != 0
				pares[contador] = resultado
				contador += 1
			end
		end

		return pares
	end

	def getSoloImpares(secuencia)
		impares = []
		contador = 0

		for i in 0..secuencia.length - 1 do
			resultado = secuencia[i]

			if resultado % 2 != 0 && resultado != 0
				impares[contador] = resultado
				contador += 1
			end
		end

		return impares
	end
end