########################### EXERCISES 15 TO 17 ########################### 

puts "Combien d'étages ta pyramide ? Entre 1 et 25 s'il te plaît, j'ai mal au dos ! "

stages = gets.chomp.to_i

if stages < 1 
    stages = 1
elsif stages > 25
    stages = 25
end

puts "Et voilà l'travail ! "

########################### FROM LEFT TO RIGHT ###########################
for i in 1..stages
    puts "#"*i
end

########################### FROM RIGHT TO LEFT ###########################
for i in 1..stages
    puts " "*(stages-i)+"#"*i
end

########################### CENTERED ###########################
for i in 1..stages
    puts " "*(stages-i)+"#"*i + "#"*(i-1)
end