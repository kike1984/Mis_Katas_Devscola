# frozen_string_literal: false

# this class convert numbers in digital form
class LCDDigits
  def initialize
    @line_break = "\n"
    @line_one = ''
    @line_two = ''
    @line_trhee = ''
  end

  def convert_number_to_lcd_digits(number)
    @number = number

    inspect_numbers_by_characteres.each do |char|
      digital_negative_representation(char)
      digital_number_representation(char)
    end
    print_numbers_in_digital_form
  end

  private

  def inspect_numbers_by_characteres
    @number.inspect.chars
  end

  def print_numbers_in_digital_form
    @line_one + @line_break + @line_two + @line_break + @line_trhee
  end

  def digital_negative_representation(character)
    digital_negative_sign if character == '-'
  end

  def digital_number_representation(character)
    case character
      when '0'
        digital_zero
      when '1'
        digital_one
      when '2'
        digital_two
      when '3'
        digital_three
      when '4'
        digital_four
      when '5'
        digital_five
      when '6'
        digital_six
      when '7'
        digital_seven
      when '8'
        digital_eigth
      when '9'
        digital_nine
    end
  end

  def digital_negative_sign
    @line_one   << '   '
    @line_two   << '__ '
    @line_trhee << '   '
  end

  def digital_zero
    @line_one   << ' _ '
    @line_two   << '| |'
    @line_trhee << '|_|'
  end

  def digital_one
    @line_one   << '   '
    @line_two   << '  |'
    @line_trhee << '  |'
  end

  def digital_two
    @line_one   << ' _ '
    @line_two   << ' _|'
    @line_trhee << '|_ '
  end

  def digital_three
    @line_one   << ' _ '
    @line_two   << ' _|'
    @line_trhee << ' _|'
  end

  def digital_four
    @line_one   << '   '
    @line_two   << '|_|'
    @line_trhee << '  |'
  end

  def digital_five
    @line_one   << ' _ '
    @line_two   << '|_ '
    @line_trhee << ' _|'
  end

  def digital_six
    @line_one   << ' _ '
    @line_two   << '|_ '
    @line_trhee << '|_|'
  end

  def digital_seven
    @line_one   << ' _ '
    @line_two   << '  |'
    @line_trhee << '  |'
  end

  def digital_eigth
    @line_one   << ' _ '
    @line_two   << '|_|'
    @line_trhee << '|_|'
  end

  def digital_nine
    @line_one   << ' _ '
    @line_two   << '|_|'
    @line_trhee << '  |'
  end
end
