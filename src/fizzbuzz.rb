class FizzBuzz

  def fizz_buzz_game(number)
    @number = number
    return "FizzBuzz" if is_divisible_by_fifteen? && if_the_number_ends_in_five == false 
    return "Buzz"     if is_divisible_by_five? 
    return "Fizz"     if is_divisible_by_three? || if_the_number_ends_in_three
    number
  end

private

  def is_divisible_by_three?
    is_divisible_by(@number, 3)
  end

  def is_divisible_by_five?
    is_divisible_by(@number, 5)
  end

  def is_divisible_by_fifteen?
    is_divisible_by(@number, 15)
  end

  def is_divisible_by(numbers, divisors)
    @divisors = divisors
    @number % @divisors == 0
  end

  def if_the_number_ends_in_three
    @number.digits[0] == 3
  end

  def if_the_number_ends_in_five
    @number.digits[0] == 5
  end

end