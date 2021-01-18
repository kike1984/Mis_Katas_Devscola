# frozen_string_literal: true

# creamos una biblioteca de numeros en forma digital y su valor
class DigitalNumberLibrary
  digit_zero = ['  _ ',
                ' | |',
                ' |_|']

  digit_one = ['    ',
               '   |',
               '   |']

  digit_two = ['  _ ',
               '  _|',
               ' |_ ']

  digit_three = ['  _ ',
                 '  _|',
                 '  _|']

  DIGIT = {
    digit_zero => '0',
    digit_one => '1',
    digit_two => '2',
    digit_three => '3'
  }.freeze
end
