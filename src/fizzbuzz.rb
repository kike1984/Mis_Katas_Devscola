#class FizzBuzz
  DIVISORS = 3, 5, 15
  ZERO = 0

  def fizz_buzz_game(number)
    number_range_one_to_one_hundred.each do |num|
      if is_divisible_by_fifteen?(num) && if_the_number_ends_in_five(num) == false
        return "FizzBuzz" 
      elsif is_divisible_by_five?(num)
        return "Buzz" 
      elsif is_divisible_by_three?(num) || if_the_number_ends_in_three(num)
        return "Fizz" 
      else
        return num
      end
    end
  end

  def number_range_one_to_one_hundred
    (1..100).to_a
  end

#private

  def is_divisible_by_three?(number)
    is_divisible_by(number, DIVISORS[0])
  end

  def is_divisible_by_five?(number)
    is_divisible_by(number, DIVISORS[1])
  end

  def is_divisible_by_fifteen?(number)
    is_divisible_by(number, DIVISORS[2])
  end

  def is_divisible_by(number, divisors)
    number % divisors == ZERO
  end

  def if_the_number_ends_in_three(number)
    number.digits[0] == DIVISORS[0]
  end

  def if_the_number_ends_in_five(number)
    number.digits[0] == DIVISORS[1]
  end

#end