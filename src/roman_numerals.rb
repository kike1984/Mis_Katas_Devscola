
class Converter_Roman_Numbers
  
  def convert_numbers(number)
    if number.is_a?(Integer)
      convert_to_roman(number)
    else
      convert_to_arabic(number)
    end
  end

private

  ROMAN_SYMBOLS = { 
    1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
    100 => "C", 90 => "XC", 50 => "L", 40 => "XL",
    10 => "X", 9 => "IX", 5 => "V", 4 => "IV",
    1 => "I" }

  ROMAN_VALUES = {}
  ROMAN_SYMBOLS.each do |value, symbol|
    ROMAN_VALUES[symbol] = value
  end

  def convert_to_roman(number)
    roman_numeral = ""
    arabic_number = number

    ROMAN_SYMBOLS.each do |arabic, roman| 
      while arabic_number >= arabic
        roman_numeral << roman
        arabic_number -= arabic
      end
    end
    roman_numeral
  end

  def convert_to_arabic(number)
    arabic_number = 0  

    number.chars.each.with_index do |character, index|
      value = roman_values(ch)
      netx_value = roman_values(number[i+1])
      if netx_value && value < netx_value
        arabic_number -= value
      else
        arabic_number += value
      end
    end
    arabic_number
  end

  def roman_values(ch)
    ROMAN_VALUES[ch]
  end
  
end