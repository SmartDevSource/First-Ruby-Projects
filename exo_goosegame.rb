#################################################### GOOSEGAME ####################################################

require 'io/console'

$isGameFinish = false;
$isWriting = false
$playerPosition = 10
$margin = 50
$showTips = true
$isGeneratingRandomGames = false

$result = []

def drawScene
    for i in 0..10
        if $playerPosition == i 
            puts " "*($margin-(i*2)-2) + "😁"+"▇"*((i)*2)
        else
            puts " "*($margin-(i*2))+"▇"*((i*2))
        end
    end

    if $playerPosition == 0
        isWriting = true ; dynamicWrite("Félicitations, vous avez gagné ! ")
        $isGameFinish = true
    end
end

def textManager
    ######################### MAIN OUTPUT #########################
    dynamicWrite("Pressez [d] pour lancer le dé / [x] pour quitter / [a] pour générer 100 parties aléatoires générant une moyenne de coups nécessaires.\n")


    ######################### INPUT ##########################
    if !$isWriting
        input = STDIN.getch
        STDIN.echo = false
    end
    
    if input == 'd' || input == 'D' then $isWriting = true; dynamicWrite( "Le dé a été lancé et est tombé sur "+ launchPipe.to_s)
    elsif input == 'x' || input == 'X' then $isGameFinish = true
    elsif input == 'a' || input == 'A' then $isGeneratingRandomGames = true
    else $isWriting = true; dynamicWrite( "Commande invalide !") end
    
end
################## GESTION DU LANCEMENT DU DE ##################
def launchPipe
    pipe = rand(1..9)

    if ( pipe == 5 || pipe == 6 ) && $playerPosition>0
        isWriting = true; dynamicWrite("Vous montez d'une case\n")
        $playerPosition-=1
    end
    if ( pipe == 1 ) && $playerPosition < 10
        isWriting = true; dynamicWrite("Vous descendez d'une case\n")
        $playerPosition+=1
    end

    if ( pipe == 2 || pipe == 3 || pipe == 4 || pipe == 7 || pipe == 8 || pipe == 9 )
        isWriting = true; dynamicWrite("Rien ne se passe...\n")
    end

    return pipe
end

#################################### GENERATION DE 100 PARTIES ALEATOIRES ###################################
def averageFinishTime
    for i in 0..100
        computerPosition = 10
        counter = 0
        while (computerPosition!=0)
            pipe = rand(1..9)

            if ( pipe == 5 || pipe == 6 ) && computerPosition > 0
                computerPosition-=1
            end
            if ( pipe == 1 ) && computerPosition < 10
                computerPosition+=1
            end
            counter+=1
        end
        $result[i] = counter
    end

    average = 0

    for x in 0..100
        puts "Partie #{x.to_s} : en #{$result[x]} coups."
        average+= $result[x]
        if x == 100 then $isGeneratingRandomGames = false; puts "Moyenne de coups pour gagner sur 100 parties : #{average/100}"
        end
    end
end
########################################################## FONCTION D'ECRITURE DYNAMIQUE #######################################
def dynamicWrite(str)
    for i in 0..str.length-1
        print "#{str[i]}"
        sleep 0.005
    end
    $isWriting = false;
end

########################################################## GESTION DU JOUEUR HUMAIN ############################################
def run
    drawScene
    if (!$isGameFinish) then textManager end
end

while (!$isGameFinish && !$isGeneratingRandomGames)
    run
end

################################################# GESTION DES PARTIES ALEATOIRES AUTOMATIQUES ##################################
def runAutomatisation
    averageFinishTime
end

while ($isGeneratingRandomGames)
    runAutomatisation
end

###################################################### FIN DU PROGRAMME ########################################################
if $isGameFinish
    $isWriting = true; dynamicWrite( "Au revoir !\n")
end