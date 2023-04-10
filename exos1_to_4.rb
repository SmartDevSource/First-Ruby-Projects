########################### EXERCISES 1 TO 4 ########################### 

puts "Salut à toi, comment te prénommes-tu ?"
userName = gets.chomp

puts "Bienvenue #{userName} ! Quel âge as-tu ?"
age = gets.chomp.to_i

currentYear = Time.new.year

puts "Tu avais donc #{age - (currentYear - 2017)} ans en 2017 et tu auras 100 ans aux alentours de #{currentYear + (100-age)}, vrai ?"