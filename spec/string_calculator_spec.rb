require_relative '../src/string_calculator'

describe 'StringCalculator' do
  let(:calculator) {StringCalculator.new}
  
  it 'should return 0 for an empty string' do
  
    result = calculator.calculate("")

    expect(result).to eq(0)
  end

  it 'should convert the string into integer' do

    result = calculator.calculate("1")
    
    expect(result).to eq(1)
  end

  it 'should convert the string into integer' do

    result = calculator.calculate("2")
    
    expect(result).to eq(2)
  end

  it 'should ignore more than a comma and add the numbers' do

    result = calculator.calculate("1,2")

    expect(result).to eq(3)
  end

  it 'should ignore line break and add the numbers' do

    result = calculator.calculate("1\n 2, 3")

    expect(result).to eq(6)
  end

  it 'should ignore all delimxxiters and add the numbers' do

    result = calculator.calculate("//;\n1;2")

    expect(result).to eq(3)
  end

  it 'should ignore everything other than numbers and add the numbers' do

    result = calculator.calculate("1,2/3_4?5!6;*7\n[8]:_+9")

    expect(result).to eq(45)
  end

  it 'should return error if there is a negative number' do
    
    expect{calculator.calculate("1, -2, -4")}.to raise_error("negatives not allowed: [-2, -4]")
  end

  it 'should ignore the numbers higher than one thousand' do

    result = calculator.calculate("1, 1004, 2")
    
    expect(result).to eq(3)
  end

  it 'should ignore the numbers higher than one thousand' do

    result = calculator.calculate("3005, 1000, 5000")
    
    expect(result).to eq(1000)
  end

end