require_relative '../src/create_digital_numbers'
# convert integer in digital form
class ConvertToDigitalForm < DigitalNumberLibrary
 
  def convert(number)
    @number = number.to_s

    search_for_digital_representation
    print_digital_numbers
  end

  private

  def search_for_digital_representation
    @number.each_char do |character|
      search_in_the_library(character)
    end
  end

  def search_in_the_library(character)
    @line_one = '' 
    @line_two = '' 
    @line_three = '' 
    @line_break = "\n"
    DIGIT.each do |digit_array, value|
      if character == value
        @line_one << digit_array[0] && @line_two << digit_array[1] && @line_three << digit_array[2]
      end
    end
  end

  def print_digital_numbers
    @line_one + @line_break + @line_two + @line_break + @line_three
  end

end
