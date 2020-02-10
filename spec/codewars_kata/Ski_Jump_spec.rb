=begin
Su trabajo en este kata es calcular la velocidad máxima que alcanzará durante su carrera cuesta abajo. La velocidad está dictada por la altura de la montaña. Cada elemento de la matriz es una capa de la montaña como se indica en el diagrama de arriba (y más abajo). Entonces, para este ejemplo, la montaña tiene una altura de 5 (5 filas de estrellas). Speed es mountain height * 1.5.

La longitud del salto se calcula por (mountain height * speed * 9) / 10. La longitud del salto debe redondearse a 2 decimales.

Debe devolver la longitud del salto resultante como una cadena en el siguiente formato:

cuando menos de 10 m: "X metres: He's crap!"
cuando entre 10 y 25 m: "X metres: He's ok!"
cuando entre 25 y 50 m: "X metres: He's flying!"
cuando más de 50 m: "X metres: Gold!!"
Entonces, en el caso de ejemplo anterior, la respuesta correcta sería "33.75 metres: He's flying!"
=end


describe 'SkiJump' do
  
    it 'first jump' do
        expect(ski_jump(["*"])).to eq("1.35 metres: He's crap!")
    end

    it 'second jump' do
        expect(ski_jump(["*", "**", "***"])).to eq("12.15 metres: He's ok!")
    end

    it 'third jump' do
        expect(ski_jump(["*", "**", "***", "****", "*****", "******"])).to eq("48.60 metres: He's flying!")
    end

    it 'fourth jump' do
        expect(ski_jump(["*", "**", "***", "****", "*****", "******", "*******", "********"])).to eq("86.40 metres: Gold!!")
    end

end

def ski_jump(mountain)
  jump = mountain.length * (mountain.length * 1.5) * 9 / 10 
  jump = "%.2f"%jump

  return "#{jump} metres: He's crap!"   if jump.to_i < 10
  return "#{jump} metres: He's ok!"     if jump.to_i < 25
  return "#{jump} metres: He's flying!" if jump.to_i < 50
  return "#{jump} metres: Gold!!"       
end