############################ SIMPLISTIC PASSWORD SYSTEM ############################

$haveDigit = false
$password = ""

def isDigit(c)
    if c.match(/[0-9]/)
        return true else return false
    end
end

def passwordCreation
    while !$haveDigit
        puts "Veuillez créer un mot de passe > "
        $password = gets.chomp

        for i in 0..($password.length-1)
            if isDigit($password[i]) then puts $haveDigit = true else $haveDigit = false end
        end

        if $haveDigit then puts "Mot de passe crée avec succès ! " else puts "Votre mot de passe doit contenir au moins un chiffre ! " end
    end
end

def userAuthentification
    puts "Veuillez tapez votre mot de passe > "
    userPassword = gets.chomp

    while userPassword!=$password
        puts "Mot de passe invalide ! "
        puts "Veuillez tapez votre mot de passe > "
        userPassword = gets.chomp
    end

    puts "Connecté avec succès ! "
end

def perform
    passwordCreation
    userAuthentification
end

perform