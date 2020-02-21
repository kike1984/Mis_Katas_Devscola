=begin
  -Necesxitamos un servicio al que pasarle una cantidad de dinero y que devuelva la cantidad mínima de monedas necesarias para sumar tal cantidad. 
  -Debemos usar el euro, considerando solo las monedas de uso general, es decir, monedas de euro (1 € y 2 €) y monedas de centimos (50cent, 20cent, 10cent, 5cent, 2cent, 1cent). 
=end


describe 'Monedas' do
  
  it 'debería devolver 1 moneda de 1 € si nos dan 1 €' do
    euro = 1

    result = cantidad_minima(euro)

    expect(result).to eq("1 de 1 €")
  end

  it 'debería devolver 1 moneda de 2 € si nos dan 2 €' do
    euro = 2

    result = cantidad_minima(euro)

    expect(result).to eq("1 de 2 €")
  end

  it 'debería devolver 1 moneda de 2 € y 1 moneda de 1 € si nos dan 3€' do
    euro = 3

    result = cantidad_minima(euro)

    expect(result).to eq("1 de 2 €, 1 de 1 €")
  end

  it 'debería devolver 2 monedas de 2 € si nos dan 4€' do
    euro = 4

    result = cantidad_minima(euro)

    expect(result).to eq("2 de 2 €")
  end

  it 'debería devolver 2 monedas de 2 € y 1 moneda de 1 € si nos dan 5€' do
    euro = 5

    result = cantidad_minima(euro)

    expect(result).to eq("2 de 2 €, 1 de 1 €")
  end

  it 'debería devolver 1 moneda de 50 centimo si nos dan 50 centimos' do
    euro = 0.50

    result = cantidad_minima(euro)

    expect(result).to eq("1 de 50 centimos")
  end

  it 'debería devolver 2 moneda de 20 centimo si nos dan 40 centimos' do
    euro = 0.40

    result = cantidad_minima(euro)

    expect(result).to eq("2 de 20 centimos")
  end

  it 'debería devolver 1 moneda de 20 centimo y 1 moneda de 10 centimos si nos dan 30 centimos' do
    euro = 0.30

    result = cantidad_minima(euro)

    expect(result).to eq("1 de 20 centimos, 1 de 10 centimos")
  end

end

def cantidad_minima(euro)
  @euro = euro
  cantidad_minima_de_euros
end

def cantidad_minima_de_euros
  euro = euro_con_centimos
  devolucion = []
  MONEDAS.each do |moneda, valor|
    if euro > moneda * 2
      euro -= moneda * cantidad
      devolucion << "#{cantidad} de #{valor}"
      puts euro
    elsif euro == moneda * 2
      devolucion << "2 de #{valor}"
      euro -= moneda * 2
    elsif euro >= moneda
      devolucion << "1 de #{valor}"
      euro -= moneda
    end
  end
  devolucion.join(', ')
end

MONEDAS = {
  2 => "2 €",
  1 => "1 €",
  0.50 => "50 centimos",
  0.20 => "20 centimos", 
  0.10 => "10 centimos",
  0.05 => "5 centimos",
  0.02 => "2 centimos",
  0.01 => "1 centimo"
}

def euro_con_centimos
  @euro.to_f
end

def cantidad
  @euro.to_i / 2
end