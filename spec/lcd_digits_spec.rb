=begin
LCD Digits :

	Your task is to create an LCD string representation of an
	integer value using a 3x3 grid of space, underscore, and
	pipe characters for each digit. Each digit is shown below
	(using a dot instead of a space)

	 _          _     _           _     _    _     _     _ 
	| |    |    _|    _|   |_|   |_    |_     |   |_|   |_|
	|_|    |   |_     _|     |    _|   |_|    |   |_|     |


	Example: 910

	 _      _ 
	|_|  | | |
    |  | |_|
=end
require_relative '../src/lcd_digits'

describe 'LCD Digits' do
  let(:digits) {LCD_Digits.new}

  it 'should convert number zero to LCD Digits' do
    number = 0

    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(" _ \n| |\n|_|")
  end

  xit 'should convert number one to LCD Digits' do
    number = 1
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq("   \n  |\n  |")
  end

  xit 'should convert number ten to LCD Digits' do
    number = 10
    
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq("    _ \n  || |\n  ||_|")
  end

  xit 'should convert number one hunderd to LCD Digits' do
    number = 100

    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq("    _  _ \n  || || |\n  ||_||_|")
  end

  xit 'should convert number two to LCD Digits' do
    number = 2
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(" _ \n _|\n|_ ")
  end

  xit 'should convert number three to LCD Digits' do
    number = 3
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(" _ \n _|\n _|")
  end

  xit 'should convert number four to LCD Digits' do
    number = 4
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq("   \n|_|\n  |")
  end

  xit 'should convert number five to LCD Digits' do
    number = 5
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(" _ \n|_ \n _|")
  end

  xit 'should convert number six to LCD Digits' do
    number = 6
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(" _ \n|_ \n|_|")
  end

  xit 'should convert number seven to LCD Digits' do
    number = 7
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(" _ \n  |\n  |")
  end

  xit 'should convert number eigth to LCD Digits' do
    number = 8
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(" _ \n|_|\n|_|")
  end

  xit 'should convert number nine to LCD Digits' do
    number = 9
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(" _ \n|_|\n  |")
  end

  xit 'should return error if number is negative' do
    number = -9
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq("    _ \n__ |_|\n     |")
  end

end