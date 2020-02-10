class LCD_Digits
  
  def initialize
    @line_break = "\n"
    @line_one, @line_two, @line_trhee = "", "", ""
  end

  def convert_number_to_lcd_digits(number)
    @number = number

    inspect_numbers_by_characteres.each do |char|
      digit_negative_representation(char)
      digit_number_representation(char)
    end
    print_numbers_in_digit_form
  end

  private

  def inspect_numbers_by_characteres
    @number.inspect.chars
  end

  def print_numbers_in_digit_form  
    @line_one + @line_break + @line_two + @line_break + @line_trhee
  end

  def digit_negative_representation(character)
    digit_negative_sign if character == "-"
  end

  def digit_number_representation(character)
    digit_zero  if character == "0"; 
    digit_one   if character == "1"; 
    digit_two   if character == "2"; 
    digit_three if character == "3";
    digit_four  if character == "4";
    digit_five  if character == "5";
    digit_six   if character == "6";
    digit_seven if character == "7";
    digit_eigth if character == "8";
    digit_nine  if character == "9"
  end

  def digit_negative_sign
    @line_one   << "   "
    @line_two   << "__ "
    @line_trhee << "   "
  end

  def digit_zero
    @line_one   << " _ "
    @line_two   << "| |"
    @line_trhee << "|_|"
  end

  def digit_one
    @line_one   << "   "
    @line_two   << "  |"
    @line_trhee << "  |"
  end

  def digit_two
    @line_one   << " _ "
    @line_two   << " _|"
    @line_trhee << "|_ "
  end
  
  def digit_three
    @line_one   << " _ "
    @line_two   << " _|"
    @line_trhee << " _|"
  end
  
  def digit_four
    @line_one   << "   "
    @line_two   << "|_|"
    @line_trhee << "  |"
  end
  
  def digit_five
    @line_one   << " _ "
    @line_two   << "|_ "
    @line_trhee << " _|"
  end
  
  def digit_six
    @line_one   << " _ "
    @line_two   << "|_ "
    @line_trhee << "|_|"
  end
  
  def digit_seven
    @line_one   << " _ "
    @line_two   << "  |"
    @line_trhee << "  |"
  end
  
  def digit_eigth
    @line_one   << " _ "
    @line_two   << "|_|"
    @line_trhee << "|_|"
  end
  
  def digit_nine
    @line_one   << " _ "
    @line_two   << "|_|"
    @line_trhee << "  |"
  end

end