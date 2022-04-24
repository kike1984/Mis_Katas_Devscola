# frozen_string_literal: false

# this class calculate strings to convert numbers
class CalculateString
  def calculate_string(string_numbers)
    run_the_calculation(string_numbers) || ZERO
  end

  def preparing_the_string(string_numbers)
    return change_words_for_signs(string_numbers) if string_includes_plus_or_minus?(string_numbers)
  end

  private

  ZERO = 0

  def string_includes_plus_or_minus?(string_numbers)
    string_numbers.include?('plus') || string_numbers.include?('minus')
  end

  def change_words_for_signs(string_numbers)
    string_numbers.gsub('plus', '+').gsub('minus', '-')
  end

  def run_the_calculation(string_numbers)
    calculate_string = change_words_for_signs(string_numbers)
    eval(calculate_string)
  end
end
