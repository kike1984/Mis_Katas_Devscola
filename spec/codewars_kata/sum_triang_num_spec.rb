=begin
Su tarea es devolver la suma de los números triangulares hasta e incluyendo el nthnúmero triangular.

Número triangular: "cualquiera de las series de números (1, 3, 6, 10, 15, etc.) obtenidas mediante la suma continua de los números naturales 1, 2, 3, 4, 5, etc."

[01]
02 [03]
04 05 [06]
07 08 09 [10]
11 12 13 14 [15]
16 17 18 19 20 [21]
por ejemplo, si 4se da: 1 + 3 + 6 + 10 = 20.

Los números triangulares no pueden ser negativos, por lo tanto, devuelva 0 si se da un número negativo.
=end

describe 'SumOfTringleNumber' do

    it 'fila uno' do
        expect(sum_triangular_numbers(1)).to eq(1)
    end
    
    it 'fila dos' do
        expect(sum_triangular_numbers(2)).to eq(4)
    end
    
    it 'fila tres' do
        expect(sum_triangular_numbers(3)).to eq(10)
    end
    
    it 'fila cuatro' do
        expect(sum_triangular_numbers(4)).to eq(20)
    end
    
    it 'fila cinco' do
        expect(sum_triangular_numbers(5)).to eq(35)
    end
    
    it 'número negativo' do
        expect(sum_triangular_numbers(-100)).to eq(0)
    end


end

def sum_triangular_numbers(n)
  triangle_num = []
  number = 0

  (1..n).each do |n| # n es el escalón de la pirámide
    print " step: #{n}.  "
    number = number + n
    puts " selected number:[#{number}]  "
    triangle_num << number
  end

  triangle_num.sum
end