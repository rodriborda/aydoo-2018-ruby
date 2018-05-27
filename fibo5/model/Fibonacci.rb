class Fibonacci
	
	def getNumero(numero)
		a = 0
		b = 1
		c = 0

		for i in 1..numero - 1 do
			c = a + b
	        a = b
	        b = c			
		end

		if numero <= 1
			return numero
		else
			return c		
		end
	end

end