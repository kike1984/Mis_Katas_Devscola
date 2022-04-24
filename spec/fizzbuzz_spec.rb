# frozen_string_literal: true

# String es la ruta absoluta

require_relative '../src/fizzbuzz'
describe 'Fizz' do
  let(:fizzbuzz) { FizzBuzz.new }

  it 'return Fizz is number is divisible by three' do
    number = 3

    result = fizzbuzz.fizz_buzz_game(number)

    expect(result).to eq('Fizz')
  end
end

describe 'FizzBuzz' do
  let(:fizzbuzz) { FizzBuzz.new }

  # it 'return Fizz is number is divisible by three' do
  #   number = 3

  #   result = fizzbuzz.fizz_buzz_game(number)

  #   expect(result).to eq('Fizz')
  # end

  it 'return Buzz is number is divisible by five' do
    number = 5

    result = fizzbuzz.fizz_buzz_game(number)

    expect(result).to eq('Buzz')
  end

  it 'return FizzBuzz is number is divisible by fifteen' do
    number = 30

    result = fizzbuzz.fizz_buzz_game(number)

    expect(result).to eq('FizzBuzz')
  end

  it 'return number if number is not divisible by three, five, fifteen' do
    number = 2

    result = fizzbuzz.fizz_buzz_game(number)

    expect(result).to eq(number)
  end

  it 'return Fizz is the number ends in three' do
    number = 13

    result = fizzbuzz.fizz_buzz_game(number)

    expect(result).to eq('Fizz')
  end

  it 'return Buzz is number is divisible by five' do
    number = 51

    result = fizzbuzz.fizz_buzz_game(number)

    expect(result).to eq('Buzz')
  end
end
