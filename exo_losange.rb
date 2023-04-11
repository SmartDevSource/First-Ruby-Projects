########################### EXERCISE REVERSED PYRAMID ########################### 

puts "Combien d'étages ta pyramide ? Entre 1 et 25 s'il te plaît, j'ai mal au dos ! "

stages = gets.chomp.to_i

if stages < 1 
    stages = 1
elsif stages > 25
    stages = 25
end

puts "Et voilà l'travail ! "

########################### CENTERED AND INVERTED ###########################

reverse = false
for i in 1..stages-1
    
    (i-1<stages/2) ? reverse = false : reverse = true
    
    if !reverse then puts " "*(stages-i)+"#"*i + "#"*(i-1) end
    if reverse then puts " "*(i)+"#"*(stages-i) +"#"*((stages-i)-1) end
   
end