require_relative '../src/Print_digital_numbers'

describe 'Convert_Integers_in_Digital_Form' do
	
 it'should return zero in digital form' do
    number = 0
    digit_zero = "  _ \n | |\n |_|"	

    digit = Convert_Integers_in_Digital_Form.new
    result = digit.convert(number)

    expect(result).to eq(digit_zero)
  end

 it'should return one in digital form' do
    number = 1
    digit_zero = "    \n   |\n   |"	

    digit = Convert_Integers_in_Digital_Form.new
    result = digit.convert(number)

    expect(result).to eq(digit_zero)
  end

 it'should return ten in digital form' do
    number = 10
    digit_zero = "      _ \n   | | |\n   | |_|"	

    digit = Convert_Integers_in_Digital_Form.new
    result = digit.convert(number)

    expect(result).to eq(digit_zero)
  end

 it'should return eleven in digital form' do
    number = 11
    digit_zero = "        \n   |   |\n   |   |"	

    digit = Convert_Integers_in_Digital_Form.new
    result = digit.convert(number)

    expect(result).to eq(digit_zero)
  end

 it'should return two in digital form' do
    number = 2
    digit_two = "  _ \n  _|\n |_ "

    digit = Convert_Integers_in_Digital_Form.new
    result = digit.convert(number)

    expect(result).to eq(digit_two)
  end


end

