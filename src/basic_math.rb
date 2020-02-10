class CalculateString

  def calculate_string(string)
    run_the_calculation(string) || ZERO
  end

  def preparing_the_string(string)
    if string_includes_plus_or_minus?(string)
      change_words_for_signs(string)
    end
  end

private

ZERO = 0

  def string_includes_plus_or_minus?(string)
    string.include?('plus') || string.include?('minus')
  end

  def change_words_for_signs(string)
    string.gsub('plus', '+').gsub('minus', '-')
  end

  def run_the_calculation(string)
    calculate_string = change_words_for_signs(string)
    eval(calculate_string)
  end

end