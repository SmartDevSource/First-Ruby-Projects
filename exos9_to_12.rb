########################### EXERCISES 9 TO 12 ########################### 

puts "Quelle est ton année de naissance ? "
birthdayYear = gets.chomp.to_i

currentYear = Time.new.year

puts "Voici toutes les années écoulées depuis ta naissance : "

for i in 1..currentYear-birthdayYear
        
    if (birthdayYear+i) < currentYear
        puts "En #{birthdayYear+i} tu avais #{i} an(s). >>>>>>> il y a #{currentYear-(birthdayYear+i)} an(s), tu avais #{i} ans."
            if i == (currentYear-birthdayYear)/2
                puts "Tu avais alors la moitié de ton âge actuel !"
            end
    end
    if (birthdayYear+i) == currentYear
        puts "En #{birthdayYear+i} tu as actuellement #{i} an(s). "
    end
end