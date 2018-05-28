require 'rspec' 
require_relative '../model/CalculadorSecuencia'

describe 'CalculadorSecuencia' do

  subject { CalculadorSecuencia.new }  
   
  it 'calcular secuencia de 5 devuelve array correcto' do
  	resultado = subject.getSecuencia(5)

    expect(resultado).to eq [0,1,1,2,3]
  end

  it 'calcular secuencia invertida de 5 devuelve array inverso' do
  	resultado = subject.getSecuenciaInvertida(5)

    expect(resultado).to eq [3,2,1,1,0]
  end

  it 'calcular secuencia solo pares devuelve solo numeros pares' do
  	resultado = subject.getSoloPares([0,1,1,2,3,5,8])

    expect(resultado).to eq [2,8]
  end

  it 'calcular secuencia solo impares devuelve solo numeros impares' do
  	resultado = subject.getSoloImpares([0,1,1,2,3])

    expect(resultado).to eq [1,1,3]
  end

  it 'calcular secuencia invertida con solo pares devuelve solo numeros pares en orden invertido' do
  	secuencia = subject.getSecuenciaInvertida(8)
  	resultado = subject.getSoloPares(secuencia)

    expect(resultado).to eq [8,2]
  end

  it 'calcular secuencia invertida con solo impares devuelve solo numeros impares en orden invertido' do
  	secuencia = subject.getSecuenciaInvertida(5)
  	resultado = subject.getSoloImpares(secuencia)

    expect(resultado).to eq [3,1,1]
  end
end