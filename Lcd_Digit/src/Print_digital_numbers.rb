require_relative '../src/Create_Digital_Numbers' 

class Convert_Integers_in_Digital_Form < Digital_Number_Library

  def convert(number)
    number = number.to_s
    @line_one ,@line_two, @line_three, @line_break = "", "", "", "\n"

    print_digital_numbers = [@line_one, @line_break, @line_two, @line_break, @line_three]

    number.each_char do |chr|
      DIGIT.each do |key, value| if chr == value
         @line_one << key[0] && @line_two << key[1] && @line_three << key[2]
        end
      end
    end
    return print_digital_numbers.join
  end

end

