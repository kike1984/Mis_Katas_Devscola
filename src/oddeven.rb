require 'prime'

# STEPS:
#  Lets divide into following steps:
#  	- Print "Even" instead of number, if the number is even, means divisible by 2
#  	- Print "Odd" instead of number, if the number is odd, means not divisible by 2 but not            divisible by itself too [hint - it should not be Prime]
#  	- Print number, if it does not meet above two conditions, means if number is Prime
#  	- Make method to accept any number of range [currently  we have 1 to 100]
#  	- Create a new method to check Odd/Even/Prime of a single supplied method

#  Vamos a dividirnos en los siguientes pasos:
#   - Imprimir "Even" en lugar de número, si el número es par, significa divisible por 2
#   - Imprima "Odd" en lugar de número, si el número es impar, significa que no es divisible por       2 pero tampoco es divisible por sí mismo [pista: no debe ser Prime]
#   - Imprimir número, si no cumple con las dos condiciones anteriores, significa si el número         es Prime
#   - Haga un método para aceptar cualquier número de rango
#   - Cree un nuevo método para verificar Odd / Even / Prime de un solo método suministrado


 # evitar condicionales


def oddeven(number)
  return number.to_s if number <= 1
  
  return "Prime #{number}" if number.prime?
  return "Even  #{number}" if number.even?
  return "Odd   #{number}" if number.odd?
end



(1..100).each { |number| puts oddeven(number) }