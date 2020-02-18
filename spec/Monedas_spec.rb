=begin
  -Necesxitamos un servicio al que pasarle una cantidad de dinero y que devuelva la cantidad mínima de monedas necesarias para sumar tal cantidad. 
  -Debemos usar el euro, considerando solo las monedas de uso general, es decir, monedas de euro (1 € y 2 €) y monedas de centimos (50cent, 20cent, 10cent, 5cent, 2cent, 1cent). 
=end


describe 'Monedas' do
  
  it 'debería devolver 1 moneda de 1 € si nos dan 1 €' do
    euro = 1
    cent = 0

    result = cantidad_minima(euro, cent)

    expect(result).to eq("1 moneda de 1 €")
  end

  it 'debería devolver 1 moneda de 2 € si nos dan 2 €' do
    euro = 2
    cent = 0

    result = cantidad_minima(euro, cent)

    expect(result).to eq("1 moneda de 2 €")
  end

  it 'debería devolver 1 moneda de 2 € y 1 moneda de 1 € si nos dan 3€' do
    euro = 3
    cent = 0

    result = cantidad_minima(euro, cent)

    expect(result).to eq("1 moneda de 2 € y 1 moneda de 1 €")
  end

  it 'debería devolver 2 monedas de 2 € si nos dan 4€' do
    euro = 4
    cent = 0

    result = cantidad_minima(euro, cent)

    expect(result).to eq("2 monedas de 2 €")
  end

  it 'debería devolver 2 monedas de 2 € y 1 moneda de 1 € si nos dan 5€' do
    euro = 5
    cent = 0

    result = cantidad_minima(euro, cent)

    expect(result).to eq("2 monedas de 2 € y 1 moneda de 1 €")
  end

  it 'debería devolver 1 moneda de 1 centimo si nos dan 1 centimo' do
    euro = 0.50

    result = cantidad_minima_de_euros(euro)

    expect(result).to eq("1 moneda de 50 centimos")
  end

end

def cantidad_minima(euro, cent)
  cantidad_minima_de_euros(euro)
end

def cantidad_minima_de_euros(euro)
  @euro = euro
  return menos_de_cuatro_euros if euro < 4
  return varias_monedas_de_dos_euros if euro.even?
  return "#{varias_monedas_de_dos_euros} y #{un_euro}" if euro.odd?
end

MONEDAS_EURO = { 2 => "2 €", 1 => "1 €", 0.50 => "50 centimos"}

def menos_de_cuatro_euros
  devolucion = ""
  MONEDAS_EURO.each do |moneda, valor|
    while @euro >= moneda
      @euro -= moneda
      devolucion += "1 moneda de #{valor}"
    end
    if @euro > moneda
      @euro -= moneda
      devolucion += "#{dos_euros} y "
    end
  end
  devolucion
end

def dos_euros
  "1 moneda de 2 €"
end

def un_euro
  "1 moneda de 1 €"
end

def varias_monedas_de_dos_euros
  "#{cantidad} monedas de 2 €"
end


def cantidad
  @euro / 2
end

def cantidad_minima_de_centimos(cent)
  "1 moneda de 1 centimo"
end