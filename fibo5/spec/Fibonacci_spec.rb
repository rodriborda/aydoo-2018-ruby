require 'rspec' 
require_relative '../model/Fibonacci'

describe 'Fibonacci' do

  subject { Fibonacci.new }  
   
  it 'calcular el fibonacci de 4 deberia devolver 3' do
  	resultado = subject.getNumero(4)

    expect(resultado).to eq 3
  end

  it 'calcular el fibonacci de 8 deberia devolver 21' do
  	resultado = subject.getNumero(8)

    expect(resultado).to eq 21
  end
end