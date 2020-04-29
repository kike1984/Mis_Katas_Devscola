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
    digital_number_cero = " _ \n| |\n|_|"

    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_number_cero)
  end

  it 'should convert number one to LCD Digits' do
    number = 1
    digital_number_one = "   \n  |\n  |"
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_number_one)
  end

  it 'should convert number ten to LCD Digits' do
    number = 10
    digital_number_ten = "    _ \n  || |\n  ||_|"
    
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_number_ten)
  end

  it 'should convert number one hundred to LCD Digits' do
    number = 100
    digital_number_one_hundred = "    _  _ \n  || || |\n  ||_||_|"

    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_number_one_hundred)
  end

  it 'should convert number two to LCD Digits' do
    number = 2
    digital_number_two = " _ \n _|\n|_ "
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_number_two)
  end

  it 'should convert number three to LCD Digits' do
    number = 3
    digital_number_three = " _ \n _|\n _|"
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_number_three)
  end

  it 'should convert number four to LCD Digits' do
    number = 4
    digital_number_four = "   \n|_|\n  |" 
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_number_four)
  end

  it 'should convert number five to LCD Digits' do
    number = 5
    digital_number_five = " _ \n|_ \n _|"
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_number_five)
  end

  it 'should convert number six to LCD Digits' do
    number = 6
    digital_number_six = " _ \n|_ \n|_|"
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_number_six)
  end

  it 'should convert number seven to LCD Digits' do
    number = 7
    digital_number_seven = " _ \n  |\n  |"
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_number_seven)
  end

  it 'should convert number eigth to LCD Digits' do
    number = 8
    digital_number_eight = " _ \n|_|\n|_|"
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_number_eight)
  end

  it 'should convert number nine to LCD Digits' do
    number = 9
    digital_number_nine = " _ \n|_|\n  |"
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_number_nine)
  end

  it 'should convert number if number is negative' do
    number = -9
    digital_negative_number_nine = "    _ \n__ |_|\n     |"
  
    result = digits.convert_number_to_lcd_digits(number)

    expect(result).to eq(digital_negative_number_nine)
  end

end