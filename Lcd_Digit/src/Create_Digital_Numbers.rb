
class Create_Digital_Numbers

  def create(line_one, line_two, line_three)
     [line_one,
      line_two,
      line_three]
  end

end

class Digital_Number_Library < Create_Digital_Numbers
  digit_zero = Create_Digital_Numbers.new.create("  _ ",
                                                 " | |", 
                                                 " |_|")

  digit_one  = Create_Digital_Numbers.new.create("    ",
                                                 "   |",
                                                 "   |")

  digit_two  = Create_Digital_Numbers.new.create("  _ ",
                                                 "  _|",
                                                 " |_ ")


  DIGIT = { digit_zero => "0", digit_one => "1", digit_two => "2" }
end

