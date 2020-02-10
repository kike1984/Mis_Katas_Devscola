=begin

  In this exercise, you will have to create a function named tiyFizzBuzz. This function will take on a string parameter and will return that string wxith some characters replaced, depending on the value:

  If a letter is a upper case consonants, replace that character wxith "Iron".
  If a letter is a lower case consonants or a non-alpha character, do nothing to that character
  If a letter is a upper case vowel, replace that character wxith "Iron Yard".
  If a letter is a lower case vowel, replace that character wxith "Yard".

=end
  
describe 'Tiy-FizzBuzz' do

  it "should return a space for a space" do
    expect(tiy_fizz_buzz("    ")).to eq("    ")
  end

  it 'should change the uppercase consonant to Iron' do
    expect(tiy_fizz_buzz("HQRS")).to eq("IronIronIronIron")
  end

  it 'should not change lower case consonant' do
    expect(tiy_fizz_buzz("bcdf")).to eq("bcdf")
  end

  it 'should change the uppercase vowels to Iron Yard' do
    expect(tiy_fizz_buzz("AEIO")).to eq("Iron YardIron YardIron YardIron Yard")
  end

  it 'should change the lower case vowels to Yard' do
    expect(tiy_fizz_buzz("aeio")).to eq("YardYardYardYard")
  end

  it "should convert a sentence" do
    expect(tiy_fizz_buzz("Hello WORLD!")).to eq("IronYardllYard IronIron YardIronIronIron!")
  end

  it "should conver a sentence" do
    expect(tiy_fizz_buzz("Q6T4Ha ./?E")).to eq("Iron6Iron4IronYard ./?Iron Yard")
  end
  
  it "should conver a sentence" do
    expect(tiy_fizz_buzz(",sVlHuCCSjdEYOt")).to eq(",sIronlIronYardIronIronIronjdIron YardIronIron Yardt")
  end

  it 'should change Y to Yard' do
    expect(tiy_fizz_buzz("Y")).to eq("Iron")
  end
  
end

def tiy_fizz_buzz(string)
  string.chars.map { |chr|
    if chr.match(/[^a-zAEIOU0-9\W]/)
      "Iron"
    elsif chr.match(/[aeiou]/)
      "Yard"
    elsif chr.match(/[AEIOU]/)
      "Iron Yard"
    else
      chr
    end
  }.join
end
