=begin
¡Por cada buena idea de kata parece haber bastantes malas!

En este kata, debe verificar la matriz provista (x) para ver buenas ideas 'buenas' y malas ideas 'malas'. Si hay una o dos buenas ideas, devuelva "¡Publicar!", Si hay más de 2, devuelva "¡Huelo una serie!". Si no hay buenas ideas, como suele ser el caso, devuelva 'Fail!'.
  
=end

describe "Solution" do
  it "all ideas are bad" do
    expect(well(['bad', 'bad', 'bad'])).to eq('Fail!')
  end

  it "one or two good ideas" do
    expect(well(['good', 'bad', 'bad', 'bad', 'bad'])).to eq('Publish!')
  end

  it "more than two good ideas" do
    expect(well(['good', 'bad', 'bad', 'bad', 'bad', 'good', 'bad', 'bad', 'good'])).to eq('I smell a series!')
  end

end

def well(x)
  result = x.count('good')
  return 'Fail!'             if result == 0
  return 'Publish!'          if result <= 2
  return 'I smell a series!' if result > 2
end

