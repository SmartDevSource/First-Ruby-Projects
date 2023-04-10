########################### EXERCISES 13 TO 14 ########################### 

arrayMails = []
for i in 1..50
    arrayMails[i] = "jean.dupont.0#{i}@email.fr"

    # "On affiche les mails avec un nombre pair uniquement : "
    if i%2 == 0
        puts arrayMails[i]
    end

end