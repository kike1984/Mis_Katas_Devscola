class FizzBuzz
  def fizz_buzz_game(number)
    @number = number
    return 'FizzBuzz' if divisible_by_fifteen?
    return 'Buzz'     if divisible_by_five? || include_the_number_five?
    return 'Fizz'     if divisible_by_three? || include_the_number_three?

    number
  end

private

  THREE = 3
  FIVE = 5
  FIFTEEN = 15

  def divisible_by_three?
    divisible_by?(THREE)
  end

  def divisible_by_five?
    divisible_by?(FIVE)
  end

  def divisible_by_fifteen?
    divisible_by?(FIFTEEN)
  end

  def divisible_by?(divisor)
    (@number % divisor).zero?
  end

  def include_the_number_three?
    @number.to_s.include?('3')
  end

  def include_the_number_five?
    @number.to_s.include?('5')
  end
end
