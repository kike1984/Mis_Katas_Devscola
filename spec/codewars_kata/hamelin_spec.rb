=begin
  Kata Task
  How many deaf rats are there?

  Legend
  P = The Pied Piper
  O~ = Rat going left
  ~O = Rat going right
  Example
  ex1 ~O~O~O~O P has 0 deaf rats
  ex2 P O~ O~ ~O O~ has 1 deaf rat
  ex3 ~O~O~O~OP~O~OO~ has 2 deaf rats
=end

describe 'The Deaf Rats of Hamelin' do
  
  it 'first test' do
    expect(count_deaf_rats("P 0~")).to eq(0)
  end

  it 'second test' do
    expect(count_deaf_rats("P ~0")).to eq(1)
  end

  it 'third test' do
    expect(count_deaf_rats("0~ P")).to eq(1)
  end

  it 'fourth test' do
    expect(count_deaf_rats("~0 P")).to eq(0)
  end

  it 'fifth test' do
    expect(count_deaf_rats("~0~0 P")).to eq(0)
  end

  it 'sixth test' do
    expect(count_deaf_rats("~0~0~0 P")).to eq(0)
  end

  it 'seventh test' do
    expect(count_deaf_rats("~0~0~0~0 P")).to eq(0)
  end

  it 'eighth test' do
    expect(count_deaf_rats("P 0~ 0~ ~0 0~")).to eq(1)
  end
  
  it 'nineth test' do
    expect(count_deaf_rats("~0~0~0~0P~0~00~")).to eq(2)
  end
  
  it 'tenth test' do
    expect(count_deaf_rats("0~0~0~~0P~0~0~0")).to eq(6)
  end

end

def count_deaf_rats(town)
  arr_town = town.delete(' ').split(/(~0|0~)/) # borramos los apacios y separamos a las ratas
  piper_position = arr_town.index("P") # identificamos el índice de P 

  deaf_rats = 0

  arr_town.each_with_index do |rat, ind|    # iteramos con índece y posición de la rata y P
    if rat == "~0" && ind > piper_position
      deaf_rats += 1
    end
    if rat == "0~" && ind < piper_position
      deaf_rats += 1
    end
  end

  deaf_rats
end