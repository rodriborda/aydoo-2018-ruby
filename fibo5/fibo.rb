require 'sinatra'
require 'sinatra/json'
require_relative './model/CalculadorSecuencia'

@@calculador = CalculadorSecuencia.new

get '/fibonacci/:N' do
	numero = params[:N].to_i
	secuencia = @@calculador.getSecuencia(params[:N].to_i)
	json({ fibonacci: { limite: numero, lista: secuencia }})
end