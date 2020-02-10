class StringCalculator

  def calculate(string_of_numbers)
    @string_of_numbers = string_of_numbers

    error_negative_numbers

    sum_valid_numbers
  end

  private
  ZERO_QUANTITY = 0
  
  def queued_numbers
    @string_of_numbers.scan(/[\d-]+/).map(&:to_i)
  end

  def valid_numbers
    queued_numbers.select { |number| number > 0 && number <= 1000 }
  end

  def sum_valid_numbers
    valid_numbers.sum
  end

  def error_negative_numbers
    raise "negatives not allowed: #{negative_numbers}" if include_negative_numbers?
  end

  def negative_numbers
    queued_numbers.select { |number| number < 0 }
  end

  def include_negative_numbers?
    count_negative > ZERO_QUANTITY
  end

  def count_negative
    queued_numbers.count { |number| number < 0 }
  end
  
end