=begin
Me temo que estás en una situación bastante desafortunada. Te has lesionado la pierna y no puedes caminar, y una serie de zombis se arrastran hacia ti, intentando comerte el cerebro.Afortunadamente, eres un crack y tienes tu rifle de confianza a la mano.

Los zombis comienzan a .range metros y se arrastran hacia ti a 0,5 metros por segundo. Puedes disparar a un zombie por segundo. Si algún zombi logra llegar a 0 metros, te comerán. Si te quedas sin munición antes de disparar a todos los zombies, también te comerán.

Escribe una función que acepte la cantidad total de zombies, un rango en metros y la cantidad de balas que tienes.

Si disparas a todos los zombies, regresa "Disparaste a todos los X zombies". Si te comen antes de matar a todos los zombies, y antes de quedarte sin munición, regresa "Disparaste a X zombies antes de ser comido: abrumado". Si te quedas sin munición antes de disparar a todos los zombies, regresa "Disparaste a X zombies antes de ser comido: se quedó sin munición".

¡Buena suerte! (Creo que lo vas a necesitar).
=end

describe 'BasicTestZombi' do

  it 'You win' do
    expect(zombie_shootout(3, 10, 10)).to eq("You shot all 3 zombies.")
  end

  it 'You lose, but you did a killing.' do
    expect(zombie_shootout(100, 8, 200)).to eq("You shot 16 zombies before being eaten: overwhelmed.")
  end

  it 'You lose, ran out of ammo.' do
    expect(zombie_shootout(50, 10, 8)).to eq("You shot 8 zombies before being eaten: ran out of ammo.")
  end

  it 'You win, you shot all 10 zombies.' do
    expect(zombie_shootout(10, 10, 11)).to eq("You shot all 10 zombies.")
  end

  it 'You win, you shot all 20 zombies.' do
    expect(zombie_shootout(20, 10, 21)).to eq("You shot all 20 zombies.")
  end

  it 'You lose, but you did a killing.' do
    expect(zombie_shootout(100, 10, 49)).to eq("You shot 20 zombies before being eaten: overwhelmed.")
  end
     
end

def zombie_shootout(zombies, range, ammo)
  range = range * 2

  return "You shot #{ammo} zombies before being eaten: ran out of ammo." if ammo < zombies && range > ammo
  return "You shot #{range} zombies before being eaten: overwhelmed." if zombies > range
  return "You shot all #{zombies} zombies." if zombies <= range

end
