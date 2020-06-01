# frozen_string_literal: true

require_relative '../src/print_digital_numbers'

describe 'convert integer to digital form' do
  let(:digit) { ConvertToDigitalForm.new }

  it 'should return zero in digital form' do
    number = 0
    digit_zero = "  _ \n | |\n |_|"

    result = digit.convert(number)

    expect(result).to eq(digit_zero)
  end

  it 'should return one in digital form' do
    number = 1
    digit_zero = "    \n   |\n   |"

    result = digit.convert(number)

    expect(result).to eq(digit_zero)
  end

  it 'should return two in digital form' do
    number = 2
    digit_two = "  _ \n  _|\n |_ "

    result = digit.convert(number)

    expect(result).to eq(digit_two)
  end

  it 'should return three in digital form' do
    number = 3
    digit_three = "  _ \n  _|\n  _|"

    result = digit.convert(number)

    expect(result).to eq(digit_three)
  end
end
