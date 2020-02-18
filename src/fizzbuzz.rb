class FizzBuzz

  def fizz_buzz_game(number)
    @number = number
    return "FizzBuzz" if is_divisible_by_fifteen? && if_the_number_does_not_end_in_five
    return "Buzz"     if is_divisible_by_five?
    return "Fizz"     if is_divisible_by_three? || if_the_number_ends_in_three
    number
  end

private
  THREE, FIVE, FIFTEEN = 3, 5, 15

  def is_divisible_by_three?
    is_divisible_by?(THREE)
  end

  def is_divisible_by_five?
    is_divisible_by?(FIVE)
  end

  def is_divisible_by_fifteen?
    is_divisible_by?(FIFTEEN)
  end

  def is_divisible_by?(divisor)
    @number % divisor == 0
  end

  def if_the_number_ends_in_three
    the_last_digit == THREE
  end

  def if_the_number_does_not_end_in_five
    the_last_digit != FIVE
  end

  def the_last_digit
    @number.digits[0]
  end

end