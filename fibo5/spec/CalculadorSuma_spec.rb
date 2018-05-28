require 'rspec' 
require_relative '../model/CalculadorSuma'

describe 'CalculadorSuma' do

  subject { CalculadorSuma.new }  
   
  it 'calcular suma de 5 deberia devolver 7' do
    resultado = subject.getSuma(5)

    expect(resultado).to eq 7
  end

  it 'calcular suma de 8 solo pares deberia devolver 10' do
    resultado = subject.getSumaPares(8)

    expect(resultado).to eq 10
  end

  it 'calcular suma de 8 solo impares deberia devolver 23' do
    resultado = subject.getSumaImpares(8)

    expect(resultado).to eq 23
  end
end