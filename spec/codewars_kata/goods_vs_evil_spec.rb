=begin
Descripción
La Tierra Media está a punto de ir a la guerra. Las fuerzas del bien tendrán muchas batallas con las fuerzas del mal. Diferentes razas ciertamente estarán involucradas. Cada raza tiene un cierto worth cuando lucha contra otros. Del lado del bien tenemos las siguientes razas, con sus asociadas worth:

Del lado del bien tenemos:
Hobbits: 1
Hombres: 2
Elfos: 3
Enanos: 3
Águilas: 4
Magos: 10

Del lado del mal tenemos:
Orcos: 1
Hombres: 2
Wargs: 2
Duendes: 2
Uruk Hai: 3
Trolls: 5
Magos: 10

Aunque el clima, la ubicación, los suministros y el valor juegan un papel en cualquier batalla, si sumas el valor del lado del bien y lo comparas con el valor del lado del mal, el lado con el valor más grande tenderá a ganar.

Por lo tanto, dado el recuento de cada una de las razas del lado del bien, seguido del recuento de cada una de las razas del lado del mal, determine qué lado gana.

Entrada:
La función tendrá dos parámetros. Cada parámetro será una cadena separada por un solo espacio. Cada cadena contendrá el recuento de cada raza del lado del bien y del mal.

El primer parámetro contendrá el conteo de cada carrera del lado del bien en el siguiente orden:

Hobbits, hombres, elfos, enanos, águilas, magos.
El segundo parámetro contendrá el recuento de cada raza del lado del mal en el siguiente orden:

Orcos, Hombres, Wargs, Goblins, Uruk Hai, Trolls, Wizards.
Todos los valores son enteros no negativos. La suma resultante del valor para cada lado no excederá el límite de un entero de 32 bits.

Salida:
"Battle Result: Good triumphs over Evil"            si el bien gana, 
"Battle Result: Evil eradicates all trace of Good"  si el mal gana 
"Battle Result: No victor on this battle field"     si termina en un empate.
=end

describe "Goods vs Evil" do
  
  it 'Should be a tie' do
    expect( goodVsEvil('1 0 0 0 0 0', '1 0 0 0 0 0 0')).to eq( 'Battle Result: No victor on this battle field' )
  end

  it 'Good should triumph' do
    expect( goodVsEvil('0 0 0 0 1 2', '0 2 2 2 3 0 0')).to eq( 'Battle Result: Good triumphs over Evil' )
  end

  it 'Evil should triumph' do
    expect( goodVsEvil('1 2 1 0 0 0', '0 0 0 1 0 0 1')).to eq( 'Battle Result: Evil eradicates all trace of Good' )
  end

end

# GOOD = { Hobbits: 1, Hombres: 2, Elfos: 3, Enanos: 3, Aguilas: 4, Magos: 10 }
# EVIL = { Orcos: 1, Hombres: 2, Wargs: 2, Duendes: 2, Uruk_Hai: 3, Trolls: 5, Magos: 10 }

GOOD_WORTH = [1, 2, 3, 3, 4, 10]
EVIL_WORTH = [1, 2, 2, 2, 3, 5, 10]

def goodVsEvil(good, evil)
  total_good = 0
  total_evil = 0

  good.split(" ").each_with_index { |races, worth| total_good += GOOD_WORTH[worth] * races.to_i}
  evil.split(" ").each_with_index { |races, worth| total_evil += EVIL_WORTH[worth] * races.to_i}

  return 'Battle Result: No victor on this battle field'    if total_good == total_evil
  return 'Battle Result: Good triumphs over Evil'           if total_good > total_evil
  return 'Battle Result: Evil eradicates all trace of Good' 

end