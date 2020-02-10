#require_relative "../src/fizzbuzz"

=begin

 -Cinturón amarillo

     Liste los números del 1 al 100.
     Si el número es divisible por 3, escriba "Fizz" en su lugar.
     Si el número es divisible por 5, escriba "Buzz" en su lugar
     Si el número es divisible entre 3 y 5, escriba "FizzBuzz".
     Si el número no es divisible ni por 3 ni por 5, escriba la representación en cadena del número.

 -Cinturón verde

     Un número es "Fizz" si es divisible por 3 o si tiene un 3.
     Un número es un "Buzz" si es divisible por 5 o si tiene un 5.

 -Cinturón rojo 
  
    Defina dinámicamente el rango de números en la lista. 
    Haga que el sistema no distinga entre mayúsculas y minúsculas. 
    No utilizar primitivas.

 -Cinturón negro

     No utilizar condicionales.
     Usar métodos (sin devoluciones).
     Aplicar solid a los muertos.

=end

describe "FizzBuzz" do
  let(:fizzbuzz) {FizzBuzz.new}
  
  it 'List the numbers from 1 to 100' do
    number = (1..100).to_a

    number_range = fizzbuzz.number_range_one_to_one_hundred

    expect(number_range).to eq(number)
  end
  
  it 'return Fizz is number is divisible by three' do
    number = 3

    result = fizzbuzz.fizz_buzz_game(number)
    
    expect(result).to eq("Fizz")
  end

  it 'return Buzz is number is divisible by five' do
    number = 5
    
    result = fizzbuzz.fizz_buzz_game(number)
    
    expect(result).to eq("Buzz")
  end

  it 'return FizzBuzz is number is divisible by fifteen' do
    number = 30
    
    result = fizzbuzz.fizz_buzz_game(number)
    
    expect(result).to eq("FizzBuzz")
  end

  it 'return number if number is not divisible by three, five, fifteen' do
    number = 2
    
    result = fizzbuzz.fizz_buzz_game(number)
    
    expect(result).to eq(number)
  end

################ Green belt ########################################################################

  it 'return Fizz is the number ends in three' do
    number = 13

    result = fizzbuzz.fizz_buzz_game(number)

    expect(result).to eq("Fizz")
  end

  it 'return Buzz is number is divisible by five' do
    number = 15

    result = fizzbuzz.fizz_buzz_game(number)

    expect(result).to eq("Buzz")
  end

end

class FizzBuzz

  def fizz_buzz_game(number)
    return "FizzBuzz" if is_divisible_by_fifteen?(number) && if_the_number_ends_in_five(number) == false 
    return "Buzz"     if is_divisible_by_five?(number) 
    return "Fizz"     if is_divisible_by_three?(number) || if_the_number_ends_in_three(number) 
    number
  end

  def number_range_one_to_one_hundred
    (1..100).to_a
  end

private

  DIVISORS = 3, 5, 15
  ZERO = 0

  def is_divisible_by_three?(number)
    is_divisible_by(number, DIVISORS[0])
  end

  def is_divisible_by_five?(number)
    is_divisible_by(number, DIVISORS[1])
  end

  def is_divisible_by_fifteen?(number)
    is_divisible_by(number, DIVISORS[2])
  end

  def is_divisible_by(number, divisors)
    number % divisors == ZERO
  end

  def if_the_number_ends_in_three(number)
    number.digits[0] == DIVISORS[0]
  end

  def if_the_number_ends_in_five(number)
    number.digits[0] == DIVISORS[1]
  end

end