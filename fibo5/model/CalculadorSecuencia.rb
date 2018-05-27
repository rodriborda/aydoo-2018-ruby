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

end