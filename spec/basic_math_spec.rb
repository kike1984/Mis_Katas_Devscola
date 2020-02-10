require_relative '../src/basic_math'
=begin
En este kata, harás sumas y restas en una cadena dada. El valor de retorno también debe ser una cadena.

"1plus2plus3plus4"    --> "10"
"1plus2plus3minus4"   -->  "2"
"1minus2minus3minus4" --> "-8"
=end

describe "Basic Math" do
  let(:calculate) {CalculateString.new}
  
  it 'should return zero if string is empty' do

    result = calculate.calculate_string("")

    expect(result).to eq(0)
  end

  it 'should return one if string is "1"' do

    result = calculate.calculate_string("1")

    expect(result).to eq(1)
  end

  it 'should return two if string is "2"' do

    result = calculate.calculate_string("22")

    expect(result).to eq(22)
  end

  it 'should return three if string is "3"' do

    result = calculate.calculate_string("333")

    expect(result).to eq(333)
  end

  it 'should replace plus with +' do

    result = calculate.preparing_the_string("1plus2")
  
    expect(result).to eq("1+2")
  end

  it 'should replace minus with -' do

    result = calculate.preparing_the_string("1minus2")
  
    expect(result).to eq("1-2")
  end

  it 'should add string numbers if string has the plus sign' do
    
    result = calculate.calculate_string("1plus2")

    expect(result).to eq(3)
  end
  
  it 'should subtract string numbers if string has the minus sign' do
    
    result = calculate.calculate_string("1minus2")

    expect(result).to eq(-1)
  end

  it 'should replace minus with - and plus with +' do

    result = calculate.calculate_string("1minus2plus3plus4")
  
    expect(result).to eq(6)
  end

end