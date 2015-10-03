require "benchmark"

puts "\n\n                               Bienvenue dans le jeu\n\n
########     ###    ########     ###    ########   #######   #######  ##     ##   ####
##     ##   ## ##   ##     ##   ## ##   ##     ## ##     ## ##     ## ###   ###   ####
##     ##  ##   ##  ##     ##  ##   ##  ##     ## ##     ## ##     ## #### ####   ####
########  ##     ## ##     ## ##     ## ########  ##     ## ##     ## ## ### ##    ##
##     ## ######### ##     ## ######### ##     ## ##     ## ##     ## ##     ##
##     ## ##     ## ##     ## ##     ## ##     ## ##     ## ##     ## ##     ##   ####
########  ##     ## ########  ##     ## ########   #######   #######  ##     ##   ####
 \n\n
Avant de commencer, voici les règles:\n\n
1)Vous devrez trouver un mot contenant la syllabe que va vous fournir le programme\n
2)Vous devrez lancer le dé magique:
-Si c'est BA, trouvez un Mot qui COMMENCE par la syllabe
-Si c'est DA, trouvez un Mot qui FINIT par la syllabe
-SI c'est BOOM, La syllabe peut se trouver n'importe ou dans le Mot !\n
3)Après tout cela, mettez en route la BOMBE de la Muerte!!!\n
4)Le temps est compté, trouvez un Mot remplissant les deux conditions le plus vite possible.\n
5)Puis passer la BOMBE (le portable) à votre voisin avant qu'elle...\n
...ne vous explose à la Tronche !\n\n"



puts "tapez 'twist' pour avoir une syllabe\n

"
while gets.chomp.downcase != 'twist'
  puts "\n\n\nVous vous êtes trompé ! veuillez recommencer\n\n\n"
end
arr = ["ex", "dain", "dan", "po", "tyn", "dyn", "al", "ma", "ta", "sa", "mé", "té", "sé", "tou", "sou", "tain", "ron", "lou", "ver", "pan", "jan", "pré", "gé", "car", "bal", "val", "mi", "ché", "ir", "gi", "pri", "air", "foi", "por", "ran", "pi", "fé", "tar", "fré", "tou", "fer", "son", "van", "do", "si", "sa", "man", "yé", "sou", "ru", "mal", "tro" , "ti", "pa", "cli", "ail", "tu", "char", "cré", "fa", "cro", "fo", "ro", "no", "on", "la", "lan", "ré", "pro", "iss", "bla", "dé", "jou", "bel", "bou", "gro", "ib", "li", "go", "to", "mir", "cor", "ex", "fro", "flé", "nou", "clo", "our", "ul", "tor", "et", "cri", "bor", "tan", "cou", "bar", "pon", "bon", "per", "ber", "ser", "rou", "bam", "mo", "ma", "ra", "lé", "it", "gra", "ri", "lu", "mon", "fri", "san", "fan", "bri", "mar", "oir", "ter", "tour", "moi", "mor", "sel", "dain"]
syllabe = arr.sample
puts "\nVoila votre syllabe: >> #{syllabe} <<\n"



puts "Lancez le dé magique en écrivant 'DE' !\n

"
while gets.chomp.downcase != 'de'
  puts "\n\n\nVous vous êtes trompé ! veuillez recommencer\n\n\n"
end
dice_arr = ["BA", "DA", "BOOM"]
dice_position = dice_arr.sample
puts "POSITION DU DE :   >>>>> #{dice_position} <<<<<"
puts "

                        . . .
                         \|/
                       `--+--'
                         /|\
                        ' | '
                          |
                          |
                      ,--'#`--.
                      |#######|
                   _.-'#######`-._
                ,-'###############`-.
              ,'#####################`,
             /#########################\
            |###########################|
           |#############################|
           |#############################|
           |#############################|
           |#############################|
            |###########################|
             \#########################/
              `.#####################,'
                `._###############_,'
                   `--..#####..--'

                    "
puts "\nMaintenant tapez 'GO' pour démarrer la Bombe\n

"
time_number = [25, 20, 30, 35, 40, 45, 50]
time_number = time_number.sample
while gets.chomp.downcase != 'go'
  puts "\n\n\nVous vous êtes trompé ! veuillez recommencer\n\n\n"
end
time_number = [25, 20, 30, 35, 40, 45, 50]
time_number = time_number.sample
puts "\n\nLe compte à rebours est lançé sur une durée Aléatoire !\n\n"
if dice_position == "BA"
  puts "Trouvez un mot commençant par '#{syllabe}' et passez la bombe à votre voisin !\n\n"
elsif dice_position == "DA"
  puts "Trouvez un mot finissant par '#{syllabe}' et passez la bombe à votre voisin !\n\n"
else
  puts "Trouver un mot contenant la syllabe '#{syllabe}' et passez la bombe à votre voisin !\n\n"
end
  puts "
                                                                    ,-.--.
  *.______________________________________________________________,' (Bomb)
                                                                      `--'

"
puts(Benchmark.measure { sleep time_number })
puts "
                               ________________
                          ____/ (  (    )   )  \___
                         /( (  (  )   _    ))  )   )\
                       ((     (   )(    )  )   (   )  )
                     ((/  ( _(   )   (   _) ) (  () )  )
                    ( (  ( (_)   ((    (   )  .((_ ) .  )_
                   ( (  )    (      (  )    )   ) . ) (   )
                  (  (   (  (   ) (  _  ( _) ).  ) . ) ) ( )
                  ( (  (   ) (  )   (  ))     ) _)(   )  )  )
                 ( (  ( \ ) (    (_  ( ) ( )  )   ) )  )) ( )
                  (  (   (  (   (_ ( ) ( _    )  ) (  )  )   )
                 ( (  ( (  (  )     (_  )  ) )  _)   ) _( ( )
                  ((  (   )(    (     _    )   _) _(_ (  (_ )
                   (_((__(_(__(( ( ( |  ) ) ) )_))__))_)___)
                   ((__)        \\||lll|l||///          \_))
                            (   /(/ (  )  ) )\   )
                          (    ( ( ( | | ) ) )\   )
                           (   /(| / ( )) ) ) )) )
                         (     ( ((((_(|)_)))))     )
                          (      ||\(|(|)|/||     )
                        (        |(||(||)||||        )
                          (     //|/l|||)|\\ \     )
                        (/ / //  /|//||||\\  \ \  \ _)
-------------------------------------------------------------------------------

"
puts "
########     ###    ########     ###    ########   #######   #######  ##     ##   ####
##     ##   ## ##   ##     ##   ## ##   ##     ## ##     ## ##     ## ###   ###   ####
##     ##  ##   ##  ##     ##  ##   ##  ##     ## ##     ## ##     ## #### ####   ####
########  ##     ## ##     ## ##     ## ########  ##     ## ##     ## ## ### ##    ##
##     ## ######### ##     ## ######### ##     ## ##     ## ##     ## ##     ##
##     ## ##     ## ##     ## ##     ## ##     ## ##     ## ##     ## ##     ##   ####
########  ##     ## ########  ##     ## ########   #######   #######  ##     ##   ####"
system ('mplayer explosion.mp3')
