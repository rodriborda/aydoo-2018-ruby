require 'sinatra'
require 'sinatra/json'
require_relative './model/CalculadorSecuencia'
require_relative './model/CalculadorSuma'


@@secuenciador = CalculadorSecuencia.new
@@sumador = CalculadorSuma.new

get '/fibonacci/:N' do
	numero = params[:N].to_i

	if params[:sentido] == "directo"
		secuencia = @@secuenciador.getSecuencia(numero)
	elsif params[:sentido] == "inverso"
		secuencia = @@secuenciador.getSecuenciaInvertida(numero)
	end

	if params[:solo] == "pares"
		secuencia = @@secuenciador.getSoloPares(numero)
	elsif params[:solo] == "impares"
		secuencia = @@secuenciador.getSoloImpares(numero)
	end

	json({ fibonacci: { limite: numero, lista: secuencia }})
end

get '/fibonacci/:N/lista' do
	numero = params[:N].to_i

	if params[:sentido] == "directo"
		secuencia = @@secuenciador.getSecuencia(numero)
	elsif params[:sentido] == "inverso"
		secuencia = @@secuenciador.getSecuenciaInvertida(numero)
	end

	if params[:solo] == "pares"
		secuencia = @@secuenciador.getSoloPares(numero)
	elsif params[:solo] == "impares"
		secuencia = @@secuenciador.getSoloImpares(numero)
	end

	json({ fibonacci: { limite: numero, lista: secuencia }})
end

get '/fibonacci/:N/suma' do
	numero = params[:N].to_i

	if params[:solo] == "pares"
		suma = @@sumador.getSumaPares(numero)
	elsif params[:solo] == "impares"
		suma = @@sumador.getSumaImpares(numero)
	end

	json({ fibonacci: { limite: numero, suma: suma }})
end