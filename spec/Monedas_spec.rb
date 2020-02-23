=begin
  -Necesxxitamos un servicio al que pasarle una cantidad de dinero y que devuelva la cantidad mínima de monedas necesarias para sumar tal cantidad. 
  -Debemos usar el euro, considerando solo las monedas de uso general, es decir, monedas de euro (1 € y 2 €) y monedas de centimos (50cent, 20cent, 10cent, 5cent, 2cent, 1cent). 
=end

require_relative '../src/Monedas'

describe 'Monedas' do
  let(:monedas) { Monedas.new }
  
  it 'debería devolver 1 moneda de 1 € si nos dan 1 €' do
    dinero = 1

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq("1 de 1 €")
  end

  it 'debería devolver 1 moneda de 2 € si nos dan 2 €' do
    dinero = 2

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq("1 de 2 €")
  end

  it 'debería devolver 1 moneda de 2 € y 1 moneda de 1 € si nos dan 3€' do
    dinero = 3

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq("1 de 2 €, 1 de 1 €")
  end

  it 'debería devolver 2 monedas de 2 € si nos dan 4€' do
    dinero = 4

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq("2 de 2 €")
  end

  it 'debería devolver 2 monedas de 2 € y 1 moneda de 1 € si nos dan 5€' do
    dinero = 5

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq("2 de 2 €, 1 de 1 €")
  end

  it 'debería devolver 1 moneda de 50 centimo si nos dan 50 centimos' do
    dinero = 0.50

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq("1 de 50 centimos")
  end

  it 'debería devolver 2 moneda de 20 centimo si nos dan 40 centimos' do
    dinero = 0.40

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq("2 de 20 centimos")
  end

  it 'debería devolver 1 moneda de 20 centimo y 1 moneda de 10 centimos si nos dan 30 centimos' do
    dinero = 0.30

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq("1 de 20 centimos, 1 de 10 centimos")
  end

  it 'si nos dan 23.99 €' do
    dinero = 23.99

    expect(monedas.cantidad_de_euros(dinero)).to eq("11 de 2 €, 1 de 1 €, 1 de 50 centimos, 2 de 20 centimos, 1 de 5 centimos, 2 de 2 centimos")
  end

  it 'si nos dan 23.99 €' do
    dinero = "23.99"

    expect(monedas.cantidad_de_euros(dinero)).to eq("11 de 2 €, 1 de 1 €, 1 de 50 centimos, 2 de 20 centimos, 1 de 5 centimos, 2 de 2 centimos")
  end

end