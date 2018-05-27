require 'sinatra'
require 'sinatra/json'
require_relative './model/CalculadorSecuencia'
require_relative './model/CalculadorSuma'


@@secuenciador = CalculadorSecuencia.new
@@sumador = CalculadorSuma.new

get '/fibonacci/:N' do
	numero = params[:N].to_i
	secuencia = @@secuenciador.getSecuencia(params[:N].to_i)
	json({ fibonacci: { limite: numero, lista: secuencia }})
end

get '/fibonacci/:N/lista' do
	numero = params[:N].to_i
	secuencia = @@secuenciador.getSecuencia(params[:N].to_i)
	json({ fibonacci: { limite: numero, lista: secuencia }})
end

get '/fibonacci/:N/suma' do
	numero = params[:N].to_i
	suma = @@sumador.getSuma(params[:N].to_i)
	json({ fibonacci: { limite: numero, suma: suma }})
end