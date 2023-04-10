########################### EXERCISES 5 TO 8 ########################### 

puts "Donne-moi un chiffre ou un nombre : "
number = gets.chomp.to_i

puts "On affiche #{number} fois la phrase suivante : "

number.times do
    puts "Salut, ça farte ?"
end

puts "On affiche #{number} fois MOINS UN la phrase suivante : "

(number-1).times do
    puts "Bonjour toi"
end

puts "On compte jusqu'à la valeur choisie : "
number.times do |i|
    puts "#{i+1}"
end

puts "On fait un compte à rebours jusqu'à zéro : "

number.downto(0) do |i|
    puts "#{i}"
    sleep 1
end