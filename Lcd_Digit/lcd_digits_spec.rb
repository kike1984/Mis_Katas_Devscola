describe 'Lcd_Digits' do
	
	it 'should return zero in form digits' do
		number = 0
		digit_zero = " _ \n| |\n|_|"	

		digit = Lcd_Digits.new(number)
		result = digit.convert

		expect(result).to eq(digit_zero)
	end

end

class Digit

	def initialize(number)
		@number = number.to_s
		@line_one = ""
		@line_two = ""
		@line_three = ""
		@line_break = "\n"
	end

	def digit(line_one, line_two, line_three)
		@line_one << line_one
		@line_two << line_two
		@line_three << line_three
		return @line_one + @line_break + @line_two + @line_break + @line_three
	end

end


class Lcd_Digits < Digit
	ZERO = Digit.new("0").digit(" _ ",
															"| |",
															"|_|") 

	def convert
		ZERO
	end

end






