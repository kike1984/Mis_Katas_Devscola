# frozen_string_literal: true

# creamos una clase para preparar los numeros digitales
class CreateDigitalNumbers
  def create(first_line, second_line, third_line)
    [first_line, second_line, third_line]
  end
end

# creamos una biblioteca de numeros en forma digital y su valor
class DigitalNumberLibrary < CreateDigitalNumbers
  digit_zero = CreateDigitalNumbers.new.create('  _ ',
                                               ' | |',
                                               ' |_|')

  digit_one = CreateDigitalNumbers.new.create('    ',
                                              '   |',
                                              '   |')

  digit_two = CreateDigitalNumbers.new.create('  _ ',
                                              '  _|',
                                              ' |_ ')

  digit_three = CreateDigitalNumbers.new.create('  _ ',
                                                '  _|',
                                                '  _|')

  DIGIT = { digit_zero => '0', digit_one => '1', digit_two => '2', digit_three => '3' }.freeze
end
