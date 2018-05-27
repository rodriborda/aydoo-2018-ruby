require_relative './Fibonacci'

class CalculadorSuma

	attr_accessor :fibo

	def initialize
		@fibo = Fibonacci.new	
	end

	def getSuma(numero)
		total = 0

		for i in 0..numero - 1 do
            total += @fibo.getNumero(i)
       	end

		return total
	end
end