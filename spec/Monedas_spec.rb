=begin
  -Necesitamos un servicio al que pasarle una cantidad de dinero y que devuelva la cantidad mínima de monedas necesarias para sumar tal cantidad. 
  -Debemos usar el euro, considerando solo las monedas de uso general, es decir, monedas de euro (1 € y 2 €) y monedas de centimos (50cent, 20cent, 10cent, 5cent, 2cent, 1cent). 
=end


describe 'Monedas' do
  
  it 'should return one euro if coin one euro' do
    monedas = Monedas.new
    euro = 1

    result = monedas.minimum_coins(euro)

    expect(result).to eq("1 moneda de 1 euro")
  end

  it 'should return two euro if coin two euro' do
    monedas = Monedas.new
    euro = 2

    result = monedas.minimum_coins(euro)

    expect(result).to eq("1 moneda de 2 euros")
  end

  it 'should return three euro if coin three euro' do
    monedas = Monedas.new
    euro = 3

    result = monedas.minimum_coins(euro)

    expect(result).to eq("1 moneda de 2 euros 1 moneda de 1 euro")
  end

end

class Monedas
  MONEDAS =  {1 => "1 euro", 2 => "2 euros"}

  def minimum_coins(euro)
    if MONEDAS.key?(euro)
      one_of(MONEDAS[euro])
    elsif euro == 3
      "#{two_euros} #{one_euro}"
    end
  end

  def one_of(coin)
    "1 moneda de #{coin}"
  end

  def one_euro
    "1 moneda de 1 euro"
  end

  def two_euros
    "1 moneda de 2 euros"
  end
end