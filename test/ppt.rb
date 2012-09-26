opciones = { :piedra => :tijeras, :papel => :piedra, :tijeras => :papel }
tirada = defeat.keys

puts "Escoje uno de #{throws.join(', ')}: "
tirada_jugador = gets.chomp.to_sym #to_sym????

raise ScriptError, "Tu debes ejecutar: ''#{$0}'' seguido por ono de los siguientes '#{tirada.join(', ')}'" unless tirada.include? tirada_jugador

tirada_maquina = tirada.sample #tirada aleatoria

if tirada_jugador == tirada_maquina
    answer = "Empate"
elsif tirada_jugador == opciones[tirada_maquina]
    answer = "Gana la máquina; #{tirada_maquina} gana a #{tirada_jugador}"
else
    answer = "Bien hecho. #{tirada_jugador} gana a #{tirada_maquina}"
end
puts answer
