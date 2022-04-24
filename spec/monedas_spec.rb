# frozen_string_literal: true

require_relative '../src/monedas'

describe 'Devolver una simple moneda de centimos' do
  let(:monedas) { Monedas.new }
  it 'debería devolver 1 moneda de 10 centimos si nos piden 10 centimos' do
    dinero = 0.10

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq('1 de 10 centimos')
  end

  it 'debería devolver 1 moneda de 20 centimos si nos piden 20 centimos' do
    dinero = 0.20

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq('1 de 20 centimos')
  end

  it 'debería devolver 1 moneda de 50 centimo si nos piden 50 centimos' do
    dinero = 0.50

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq('1 de 50 centimos')
  end
end

describe 'Devolevr una simple moneda de euros' do
  let(:monedas) { Monedas.new }
  it 'debería devolver 1 moneda de 1 € si nos piden 1 €' do
    dinero = 1

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq('1 de 1 €')
  end

  it 'debería devolver 1 moneda de 2 € si nos piden 2 €' do
    dinero = 2

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq('1 de 2 €')
  end
end

describe 'Devolver más de una moneda' do
  let(:monedas) { Monedas.new }
  it 'debería devolver 1 moneda de 2 € y 1 moneda de 1 € si nos piden 3€' do
    dinero = 3

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq('1 de 2 €, 1 de 1 €')
  end

  it 'debería devolver 2 monedas de 2 € si nos piden 4€' do
    dinero = 4

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq('2 de 2 €')
  end

  it 'debería devolver 2 monedas de 2 € y 1 moneda de 1 € si nos piden 5€' do
    dinero = 5

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq('2 de 2 €, 1 de 1 €')
  end
end

describe 'Cantidades grandes de monedas' do
  let(:monedas) { Monedas.new }
  it 'si nos piden 23.99 €' do
    dinero = 23.99

    result = monedas.cantidad_de_euros(dinero)

    expect(result).to eq('11 de 2 €, 1 de 1 €, 1 de 50 centimos, 2 de 20 centimos, 1 de 5 centimos, 2 de 2 centimos')
  end
end
