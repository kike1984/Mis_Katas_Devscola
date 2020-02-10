require_relative '../src/roman_numerals'

describe 'RomanNumeral' do
  let(:converter) {Converter_Roman_Numbers.new}

  context 'from arabic numeral to roman numeral' do

    it 'covert arabic numeral one to roman numeral' do
      number = 1

      result = converter.convert_numbers(number)

      expect(result).to eq("I")
    end
    
    it 'covert arabic numeral two to roman numeral' do
      number = 2

      result = converter.convert_numbers(number)

      expect(result).to eq("II")
    end
    
    it 'covert arabic numeral three to roman numeral' do
      number = 3

      result = converter.convert_numbers(number)

      expect(result).to eq("III")
    end
    
    it 'covert arabic numeral four to roman numeral' do
      number = 4

      result = converter.convert_numbers(number)

      expect(result).to eq("IV")
    end
    
    it 'covert arabic numeral five to roman numeral' do
      number = 5

      result = converter.convert_numbers(number)

      expect(result).to eq("V")
    end
    
    it 'covert arabic numeral six to roman numeral' do
      number = 6

      result = converter.convert_numbers(number)

      expect(result).to eq("VI")
    end
    
    it 'covert arabic numeral seven to roman numeral' do
      number = 7

      result = converter.convert_numbers(number)

      expect(result).to eq("VII")
    end
    
    it 'covert arabic numeral nine to roman numeral' do
      number = 9

      result = converter.convert_numbers(number)

      expect(result).to eq("IX")
    end
    
    it 'covert arabic numeral ten to roman numeral' do
      number = 10

      result = converter.convert_numbers(number)

      expect(result).to eq("X")
    end
    
    it 'covert arabic numeral forty to roman numeral' do
      number = 40

      result = converter.convert_numbers(number)

      expect(result).to eq("XL")
    end
    
    it 'covert arabic numeral fifty to roman numeral' do
      number = 50

      result = converter.convert_numbers(number)

      expect(result).to eq("L")
    end
    
    it 'covert arabic numeral ninety to roman numeral' do
      number = 90

      result = converter.convert_numbers(number)

      expect(result).to eq("XC")
    end
    
    it 'covert arabic numeral one hundred to roman numeral' do
      number = 100

      result = converter.convert_numbers(number)

      expect(result).to eq("C")
    end
    
    it 'covert arabic numeral four hundred to roman numeral' do
      number = 400

      result = converter.convert_numbers(number)

      expect(result).to eq("CD")
    end
    
    it 'covert arabic numeral four hundred to roman numeral' do
      number = 500

      result = converter.convert_numbers(number)

      expect(result).to eq("D")
    end
    
    it 'covert arabic numeral nine hundred to roman numeral' do
      number = 900

      result = converter.convert_numbers(number)

      expect(result).to eq("CM")
    end
    
    it 'covert arabic numeral thousand to roman numeral' do
      number = 1000

      result = converter.convert_numbers(number)

      expect(result).to eq("M")
    end

    it 'convert arabic numeral random to roman numeral' do
      expect(converter.convert_numbers(1994)).to eq("MCMXCIV")
    end

    it 'convert arabic numeral random to roman numeral' do
      expect(converter.convert_numbers(2020)).to eq("MMXX")
    end

  end

  context 'from roman numeral to arabic numeral' do
    
    it 'convert roman numeral one to arabic numeral' do
      number = "I"

      result = converter.convert_numbers(number)

      expect(result).to eq(1)
    end

    it 'convert roman numeral two to arabic numeral' do
      number = "II"

      result = converter.convert_numbers(number)

      expect(result).to eq(2)
    end

    it 'convert roman numeral three to arabic numeral' do
      number = "III"

      result = converter.convert_numbers(number)

      expect(result).to eq(3)
    end

    it 'convert roman numeral four to arabic numeral' do
      number = "IV"

      result = converter.convert_numbers(number)

      expect(result).to eq(4)
    end

    it 'convert roman numeral five to arabic numeral' do
      number = "V"

      result = converter.convert_numbers(number)

      expect(result).to eq(5)
    end

    it 'convert roman numeral six to arabic numeral' do
      number = "VI"

      result = converter.convert_numbers(number)

      expect(result).to eq(6)
    end

    it 'convert roman numeral seven to arabic numeral' do
      number = "VII"

      result = converter.convert_numbers(number)

      expect(result).to eq(7)
    end

    it 'convert roman numeral eigth to arabic numeral' do
      number = "VIII"

      result = converter.convert_numbers(number)

      expect(result).to eq(8)
    end


    it 'convert roman numeral nine to arabic numeral' do
      number = "IX"

      result = converter.convert_numbers(number)

      expect(result).to eq(9)
    end

    it 'convert roman numeral ten to arabic numeral' do
      number = "X"

      result = converter.convert_numbers(number)

      expect(result).to eq(10)
    end

    it 'convert roman numeral eleven to arabic numeral' do
      number = "XI"

      result = converter.convert_numbers(number)

      expect(result).to eq(11)
    end

    it 'convert roman numeral forty to arabic numeral' do
      number = "XL"

      result = converter.convert_numbers(number)

      expect(result).to eq(40)
    end

    it 'convert roman numeral fifty to arabic numeral' do
      number = "L"

      result = converter.convert_numbers(number)

      expect(result).to eq(50)
    end

    it 'convert roman numeral ninety to arabic numeral' do
      number = "XC"

      result = converter.convert_numbers(number)

      expect(result).to eq(90)
    end

    it 'convert roman numeral one hundred to arabic numeral' do
      number = "C"

      result = converter.convert_numbers(number)

      expect(result).to eq(100)
    end

    it 'convert roman numeral four hundred to arabic numeral' do
      number = "CD"

      result = converter.convert_numbers(number)

      expect(result).to eq(400)
    end

    it 'convert roman numeral five hundred to arabic numeral' do
      number = "D"

      result = converter.convert_numbers(number)

      expect(result).to eq(500)
    end

    it 'convert roman numeral nine hundred to arabic numeral' do
      number = "CM"

      result = converter.convert_numbers(number)

      expect(result).to eq(900)
    end
    
    it 'convert roman numeral thousand to arabic numeral' do
      number = "M"

      result = converter.convert_numbers(number)

      expect(result).to eq(1000)
    end

    it 'convert roman numeral random to arabic numeral' do
      expect(converter.convert_numbers("MCMLXXXIV")).to eq(1984)
    end

    it 'convert roman numeral random to arabic numeral' do
      expect(converter.convert_numbers("MMCMXCIV")).to eq(2994)
    end

  end
end