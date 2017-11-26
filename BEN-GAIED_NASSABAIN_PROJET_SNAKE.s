#                      _..._                 .           __.....__
#                    .'     '.             .'|       .-''         '.
#                   .   .-.   .          .'  |      /     .-''"'-.  `.
#                   |  '   '  |    __   <    |     /     /________\   \
#               _   |  |   |  | .:--.'.  |   | ____|                  |
#             .' |  |  |   |  |/ |   \ | |   | \ .'\    .-------------'
#            .   | /|  |   |  |`" __ | | |   |/  .  \    '-.____...---.
#          .'.'| |//|  |   |  | .'.''| | |    /\  \  `.             .'
#        .'.'.-'  / |  |   |  |/ /   | |_|   |  \  \   `''-...... -'
#        .'   \_.'  |  |   |  |\ \._,\ '/'    \  \  \
#                   '--'   '--' `--'  `"'------'  '---'
#
#
#
#                                               .......
#                                     ..  ...';:ccc::,;,'.
#                                 ..'':cc;;;::::;;:::,'',,,.
#                              .:;c,'clkkxdlol::l;,.......',,
#                          ::;;cok0Ox00xdl:''..;'..........';;
#                          o0lcddxoloc'.,. .;,,'.............,'
#                           ,'.,cc'..  .;..;o,.       .......''.
#                             :  ;     lccxl'          .......'.
#                             .  .    oooo,.            ......',.
#                                    cdl;'.             .......,.
#                                 .;dl,..                ......,,
#                                 ;,.                   .......,;
#                                                        ......',
#                                                       .......,;
#                                                       ......';'
#                                                      .......,:.
#                                                     .......';,
#                                                   ........';:
#                                                 ........',;:.
#                                             ..'.......',;::.
#                                         ..';;,'......',:c:.
#                                       .;lcc:;'.....',:c:.
#                                     .coooc;,.....,;:c;.
#                                   .:ddol,....',;:;,.
#                                  'cddl:'...,;:'.
#                                 ,odoc;..',;;.                    ,.
#                                ,odo:,..';:.                     .;
#                               'ldo:,..';'                       .;.
#                              .cxxl,'.';,                        .;'
#                              ,odl;'.',c.                         ;,.
#                              :odc'..,;;                          .;,'
#                              coo:'.',:,                           ';,'
#                              lll:...';,                            ,,''
#                              :lo:'...,;         ...''''.....       .;,''
#                              ,ooc;'..','..';:ccccccccccc::;;;.      .;''.
#          .;clooc:;:;''.......,lll:,....,:::;;,,''.....''..',,;,'     ,;',
#       .:oolc:::c:;::cllclcl::;cllc:'....';;,''...........',,;,',,    .;''.
#      .:ooc;''''''''''''''''''',cccc:'......'',,,,,,,,,,;;;;;;'',:.   .;''.
#      ;:oxoc:,'''............''';::::;'''''........'''',,,'...',,:.   .;,',
#     .'';loolcc::::c:::::;;;;;,;::;;::;,;;,,,,,''''...........',;c.   ';,':
#     .'..',;;::,,,,;,'',,,;;;;;;,;,,','''...,,'''',,,''........';l.  .;,.';
#    .,,'.............,;::::,'''...................',,,;,.........'...''..;;
#   ;c;',,'........,:cc:;'........................''',,,'....','..',::...'c'
#  ':od;'.......':lc;,'................''''''''''''''....',,:;,'..',cl'.':o.
#  :;;cclc:,;;:::;''................................'',;;:c:;,'...';cc'';c,
#  ;'''',;;;;,,'............''...........',,,'',,,;:::c::;;'.....',cl;';:.
#  .'....................'............',;;::::;;:::;;;;,'.......';loc.'.
#   '.................''.............'',,,,,,,,,'''''.........',:ll.
#    .'........''''''.   ..................................',;;:;.
#      ...''''....          ..........................'',,;;:;.
#                                ....''''''''''''''',,;;:,'.
#                                    ......'',,'','''..
#


################################################################################
#                  Fonctions d'affichage et d'entr�e clavier                   #
################################################################################

# Ces fonctions s'occupent de l'affichage et des entr�es clavier.
# Il n'est pas obligatoire de comprendre ce qu'elles font.

.data

# Tampon d'affichage du jeu 256*256 de mani�re lin�aire.

frameBuffer: .word 0 : 1024  # Frame buffer

# Code couleur pour l'affichage
# Codage des couleurs 0xwwxxyyzz o�
#   ww = 00
#   00 <= xx <= ff est la couleur rouge en hexad�cimal
#   00 <= yy <= ff est la couleur verte en hexad�cimal
#   00 <= zz <= ff est la couleur bleue en hexad�cimal

colors: .word 0x00000000, 0x00ff0000, 0xff00ff00, 0x00396239, 0x00ff00ff, 0x00ffffff, 0x00000059
.eqv black 0
.eqv red   4
.eqv green 8
.eqv greenV2  12
.eqv rose  16
.eqv white 20
.eqv vertpomme 24

rainbow: .word 0x0000ffff, 0x00ff0000,0x00ff3300,0x00ffff00,0x0000cc00,0x00009999,0x0099ff,0x00ffcccc,0x009900cc,0x00ff0099,0x0000ff00,0x00fea347,0x00ff1493,0x00ff0000,0x00ff3300,0x00ffff00,0x0000cc00,0x00009999,0x0099ff,0x00ffcccc,0x009900cc,0x00ff0099,0x0000ff00,0x00fea347,0x00ff1493,0x00ff0000,0x00ff3300,0x00ffff00,0x0000cc00,0x00009999,0x0099ff,0x00ffcccc,0x009900cc,0x00ff0099,0x0000ff00,0x00fea347,0x00ff1493,0x00ff0000,0x00ff3300,0x00ffff00,0x0000cc00,0x00009999,0x0099ff,0x00ffcccc,0x009900cc,0x00ff0099,0x0000ff00,0x00fea347,0x00ff1493,0x00ff0000,0x00ff3300,0x00ffff00,0x0000cc00,0x00009999,0x0099ff,0x00ffcccc,0x009900cc,0x00ff0099,0x0000ff00,0x00fea347,0x00ff1493,0x00ff0000,0x00ff3300,0x00ffff00,0x0000cc00,0x00009999,0x0099ff,0x00ffcccc,0x009900cc,0x00ff0099,0x0000ff00,0x00fea347,0x00ff1493

# Derni�re position connue de la queue du serpent.

lastSnakePiece: .word 0, 0

.text
j main

############################# printColorAtPosition #############################
# Param�tres: $a0 La valeur de la couleur
#             $a1 La position en X
#             $a2 La position en Y
# Retour: Aucun
# Effet de bord: Modifie l'affichage du jeu
################################################################################

printColorAtPosition:
lw $t0 tailleGrille
mul $t0 $a1 $t0
add $t0 $t0 $a2
sll $t0 $t0 2
sw $a0 frameBuffer($t0)
jr $ra

################################ resetAffichage ################################
# Param�tres: Aucun
# Retour: Aucun
# Effet de bord: R�initialise tout l'affichage avec la couleur noir
################################################################################

resetAffichage:
lw $t1 tailleGrille
mul $t1 $t1 $t1
sll $t1 $t1 2
la $t0 frameBuffer
addu $t1 $t0 $t1
lw $t3 colors + vertpomme

RALoop2: bge $t0 $t1 endRALoop2
  sw $t3 0($t0)
  add $t0 $t0 4
  j RALoop2
endRALoop2:
jr $ra

################################## printSnake ##################################
# Param�tres: Aucun
# Retour: Aucun
# Effet de bord: Change la couleur de l'affichage aux emplacement ou se
#                trouve le serpent et sauvegarde la derni�re position connue de
#                la queue du serpent.
################################################################################

printSnake:
subu $sp $sp 12
sw $ra 0($sp)
sw $s0 4($sp)
sw $s1 8($sp)

lw $s0 tailleSnake
sll $s0 $s0 2
li $s1 0
li $t7 4

lw $a0 rainbow

lw $a0 rainbow
lw $a1 snakePosX($s1)
lw $a2 snakePosY($s1)
jal printColorAtPosition
li $s1 4

PSLoop:
bge $s1 $s0 endPSLoop
  lw $a0 rainbow($s1)
  lw $a1 snakePosX($s1)
  lw $a2 snakePosY($s1)
  jal printColorAtPosition
  addu $s1 $s1 4
  j PSLoop
endPSLoop:

subu $s0 $s0 4
lw $t0 snakePosX($s0)
lw $t1 snakePosY($s0)
sw $t0 lastSnakePiece
sw $t1 lastSnakePiece + 4

lw $ra 0($sp)
lw $s0 4($sp)
lw $s1 8($sp)
addu $sp $sp 12
jr $ra

################################ printObstacles ################################
# Param�tres: Aucun
# Retour: Aucun
# Effet de bord: Change la couleur de l'affichage aux emplacement des obstacles.
################################################################################

printObstacles:
subu $sp $sp 12
sw $ra 0($sp)
sw $s0 4($sp)
sw $s1 8($sp)

lw $s0 numObstacles
sll $s0 $s0 2
li $s1 0

POLoop:
bge $s1 $s0 endPOLoop
  lw $a0 colors + white
  lw $a1 obstaclesPosX($s1)
  lw $a2 obstaclesPosY($s1)
  jal printColorAtPosition
  addu $s1 $s1 4
  j POLoop
endPOLoop:

lw $ra 0($sp)
lw $s0 4($sp)
lw $s1 8($sp)
addu $sp $sp 12
jr $ra

################################## printCandy ##################################
# Param�tres: Aucun
# Retour: Aucun
# Effet de bord: Change la couleur de l'affichage � l'emplacement du bonbon.
################################################################################

printCandy:
subu $sp $sp 4
sw $ra ($sp)

lw $a0 colors + rose
lw $a1 candy
lw $a2 candy + 4
jal printColorAtPosition

lw $ra ($sp)
addu $sp $sp 4
jr $ra

eraseLastSnakePiece:
subu $sp $sp 4
sw $ra ($sp)

lw $a0 colors + vertpomme
lw $a1 lastSnakePiece
lw $a2 lastSnakePiece + 4
jal printColorAtPosition

lw $ra ($sp)
addu $sp $sp 4
jr $ra

################################## printGame ###################################
# Param�tres: Aucun
# Retour: Aucun
# Effet de bord: Effectue l'affichage de la totalit� des �l�ments du jeu.
################################################################################

printGame:
subu $sp $sp 4
sw $ra 0($sp)

jal eraseLastSnakePiece
jal printSnake
jal printObstacles
jal printCandy

lw $ra 0($sp)
addu $sp $sp 4
jr $ra

############################## getRandomExcluding ##############################
# Param�tres: $a0 Un entier x | 0 <= x < tailleGrille
# Retour: $v0 Un entier y | 0 <= y < tailleGrille, y != x
################################################################################

getRandomExcluding:
move $t0 $a0
lw $a1 tailleGrille
li $v0 42
syscall
beq $t0 $a0 getRandomExcluding
move $v0 $a0
jr $ra

########################### newRandomObjectPosition ############################
# Description: Renvoie une position al�atoire sur un emplacement non utilis�
#              qui ne se trouve pas devant le serpent.
# Param�tres: Aucun
# Retour: $v0 Position X du nouvel objet
#         $v1 Position Y du nouvel objet
################################################################################

newRandomObjectPosition:
subu $sp $sp 4
sw $ra ($sp)

lw $t0 snakeDir
and $t0 0x1
bgtz $t0 horizontalMoving
li $v0 42
lw $a1 tailleGrille
syscall
move $t8 $a0
lw $a0 snakePosY
jal getRandomExcluding
move $t9 $v0
j endROPdir

horizontalMoving:
lw $a0 snakePosX
jal getRandomExcluding
move $t8 $v0
lw $a1 tailleGrille
li $v0 42
syscall
move $t9 $a0
endROPdir:

lw $t0 tailleSnake
sll $t0 $t0 2
la $t0 snakePosX($t0)
la $t1 snakePosX
la $t2 snakePosY
li $t4 0

ROPtestPos:
bge $t1 $t0 endROPtestPos
lw $t3 ($t1)
bne $t3 $t8 ROPtestPos2
lw $t3 ($t2)
beq $t3 $t9 replayROP
ROPtestPos2:
addu $t1 $t1 4
addu $t2 $t2 4
j ROPtestPos
endROPtestPos:

bnez $t4 endROP

lw $t0 numObstacles
sll $t0 $t0 2
la $t0 obstaclesPosX($t0)
la $t1 obstaclesPosX
la $t2 obstaclesPosY
li $t4 1
j ROPtestPos

endROP:
move $v0 $t8
move $v1 $t9
lw $ra ($sp)
addu $sp $sp 4
jr $ra

replayROP:
lw $ra ($sp)
addu $sp $sp 4
j newRandomObjectPosition

################################# getInputVal ##################################
# Param�tres: Aucun
# Retour: $v0 La valeur 0 (haut), 1 (droite), 2 (bas), 3 (gauche), 4 erreur
################################################################################

getInputVal:
lw $t0 0xffff0004
li $t1 115
beq $t0 $t1 GIhaut
li $t1 122
beq $t0 $t1 GIbas
li $t1 113
beq $t0 $t1 GIgauche
li $t1 100
beq $t0 $t1 GIdroite
li $v0 4
j GIend

GIhaut:
li $v0 0
j GIend

GIdroite:
li $v0 1
j GIend

GIbas:
li $v0 2
j GIend

GIgauche:
li $v0 3

GIend:
jr $ra

################################ sleepMillisec #################################
# Param�tres: $a0 Le temps en milli-secondes qu'il faut passer dans cette
#             fonction (approximatif)
# Retour: Aucun
################################################################################

sleepMillisec:
move $t0 $a0
li $v0 30
syscall
addu $t0 $t0 $a0

SMloop:
bgt $a0 $t0 endSMloop
li $v0 30
syscall
j SMloop

endSMloop:
jr $ra

##################################### main #####################################
# Description: Boucle principal du jeu
# Param�tres: Aucun
# Retour: Aucun
################################################################################

main:

# Initialisation du jeu

jal resetAffichage
jal newRandomObjectPosition
sw $v0 candy
sw $v1 candy + 4

# Boucle de jeu

mainloop:

jal getInputVal
move $a0 $v0
jal majDirection
jal updateGameStatus
jal conditionFinJeu
bnez $v0 gameOver
jal printGame
li $a0 500	# c'�tait a 500
jal sleepMillisec
j mainloop

gameOver:
jal affichageFinJeu
li $v0 10
syscall

################################################################################
#                                Partie Projet                                 #
################################################################################

# � vous de jouer !

.data

tailleGrille:  .word 16        # Nombre de case du jeu dans une dimension.

# La t�te du serpent se trouve � (snakePosX[0], snakePosY[0]) et la queue �
# (snakePosX[tailleSnake - 1], snakePosY[tailleSnake - 1])
tailleSnake:   .word 1         # Taille actuelle du serpent.
snakePosX:     .word 0 : 1024  # Coordonn�es X du serpent ordonn� de la t�te � la queue.
snakePosY:     .word 0 : 1024  # Coordonn�es Y du serpent ordonn� de la t.

# Les directions sont repr�sent�s sous forme d'entier allant de 0 � 3:
snakeDir:      .word 1         # Direction du serpent: 0 (haut), 1 (droite)
                               #                       2 (bas), 3 (gauche)
numObstacles:  .word 0         # Nombre actuel d'obstacle pr�sent dans le jeu.
obstaclesPosX: .word 0 : 1024  # Coordonn�es X des obstacles
obstaclesPosY: .word 0 : 1024  # Coordonn�es Y des obstacles
candy:         .word 0, 0      # Position du bonbon (X,Y)
scoreJeu:      .word 0         # Score obtenu par le joueur

message:		.asciiz "Votre score est: "

# affichage 
lettreL1X:	.word 1, 2, 3, 4, 5, 5
lettreL1Y:	.word 1, 1, 1, 1, 1, 2

lettreVX: 	.word 1, 1, 2, 2, 3, 3, 4, 4, 5
lettreVY:	.word 4, 6, 4, 6, 4, 6, 4, 6, 5

lettreL2X:	.word 1, 2, 3, 4, 5, 5
lettreL2Y:	.word 8, 8, 8, 8, 8, 9

# chiffres
tmpX:		.word 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
tmpY:		.word 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

chiffre0X:	.word 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 4
chiffre0Y:	.word 0, 1, 2, 0, 2, 0, 2, 0, 2, 0, 1, 2

chiffre1X:	.word 0, 1, 2, 3, 4
chiffre1Y:	.word 2, 2, 2, 2, 2

chiffre2X:	.word 0, 0, 0, 1, 2, 2, 2, 3, 4, 4, 4
chiffre2Y:	.word 0, 1, 2, 2, 0, 1, 2, 0, 0, 1, 2

chiffre3X:	.word 0, 0, 0, 1, 2, 2, 2, 3, 4, 4, 4
chiffre3Y:	.word 0, 1, 2, 2, 0, 1, 2, 2, 0, 1, 2

chiffre4X:	.word 0, 0, 1, 1, 2, 2, 2, 3, 4
chiffre4Y:	.word 0, 2, 0, 2, 0, 1, 2, 2, 2

chiffre5X:	.word 0, 0, 0, 1, 2, 2, 2, 3, 4, 4, 4
chiffre5Y:	.word 0, 1, 2, 0, 0, 1, 2, 2, 0, 1, 2

chiffre6X:	.word 0, 0, 0, 1, 2, 2, 2, 3, 3, 4, 4, 4
chiffre6Y:	.word 0, 1, 2, 0, 0, 1, 2, 0, 2, 0, 1 ,2

chiffre7X:	.word 0, 0, 0, 1, 2, 2, 3, 4
chiffre7Y:	.word 0, 1, 2, 2, 1, 2, 2, 2

chiffre8X:	.word 0, 0, 0, 1, 1, 2, 2, 2, 3, 3, 4, 4, 4
chiffre8Y:	.word 0, 1, 2, 0, 2, 0, 1, 2, 0, 2, 0, 1, 2

chiffre9X:	.word 0, 0, 0, 1, 1, 2, 2, 2, 3, 4, 4, 4
chiffre9Y:	.word 0, 1, 2, 0, 2, 0, 1, 2, 2, 0, 1, 2

craneX:		.word 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 7, 7, 7
craneY:		.word 6, 7, 8, 9, 10, 5, 6, 7, 8, 9, 10, 11, 5, 8, 11, 5, 8, 11, 5, 6, 7, 8, 9, 10, 11, 6, 8, 10, 6, 8, 10


.text

################################# majDirection #################################
# Param�tres: $a0 La nouvelle position demand�e par l'utilisateur. La valeur
#                 �tant le retour de la fonction getInputVal.
# Retour: Aucun
# Effet de bord: La direction du serpent � �t� mise � jour.
# Post-condition: La valeur du serpent reste intacte si une commande ill�gale
#                 est demand�e, i.e. le serpent ne peut pas faire de demi-tour
#                 en un unique tour de jeu. Cela s'apparente � du cannibalisme
#                 et � �t� proscrit par la loi dans les soci�t�s reptiliennes.
################################################################################

majDirection:
# En haut, ... en bas, ... � gauche, ... � droite, ... ces soir�es l� ...

# prologue 

# corps
li $t4 4
move $t0 $a0				# travailler sur variable temporaire
beq $t0 $t4 finMajDirection		# si 4 alors erreur alors meme direction qu'avant

la $t1 snakeDir			# adresse de snakeDir
lw $t2 0($t1)			#�on stocke la direction dans $t2

li $t3 0
beq $t2 $t3 dirHaut

li $t3 1
beq $t2 $t3 dirDroite

li $t3 2
beq $t2 $t3 dirBas

dirGauche:
li $t3 1
beq $t0 $t3 finMajDirection

j changerDirection

dirBas:
beqz $t0 finMajDirection

j changerDirection

dirDroite:
li $t3 3
beq $t0 $t3 finMajDirection

j changerDirection

dirHaut:
li $t3 2
beq $t0 $t3 finMajDirection


changerDirection:
sw $t0 0($t1)


# epilogue
finMajDirection:
jr $ra

############################### updateGameStatus ###############################
# Param�tres: Aucun
# Retour: Aucun
# Effet de bord: L'�tat du jeu est mis � jour d'un pas de temps. Il faut donc :
#                  - Faire bouger le serpent
#                  - Tester si le serpent � manger le bonbon
#                    - Si oui d�placer le bonbon et ajouter un nouvel obstacle
################################################################################

updateGameStatus:

# jal hiddenCheatFunctionDoingEverythingTheProjectDemandsWithoutHavingToWorkOnIt

#prologue:
subu $sp $sp 20			# allouer place sur la pile pour $s0 et $s1
sw $s0 16($sp)
sw $s1 12($sp)
sw $s2 8($sp)
sw $s3 4($sp)
sw $ra 0($sp)

# corps:
la $t0 snakePosX
lw $t1 0($t0)

la $t0 snakePosY
lw $t2 0($t0)


testCandy:
# (t1, t2) contiennent la position de la t�te (x,y)
#�on cherche la position du bonbon

la $t0 candy
lw $t3 0($t0)
lw $t4 4($t0)	

# (t3, t4) = (x,y) bonbon
# test

bne $t1 $t3 deplace		# si il y a pas de bonbon on se deplace
bne $t2 $t4 deplace		# si il n'y a pas de bonbon on se deplace

grandir:			# si on trouve un bonbon on augmente la taille
la $t0 tailleSnake
lw $t5 0($t0)
addi $t5 $t5 1			# taille++
sw $t5 0($t0)

jal newRandomObjectPosition	# on donne une nouvelle position al�atoire au bonbon
move $t0 $v0
move $t1 $v1
la $t2 candy
sw $t0 0($t2)
sw $t1 4($t2)

genereObstacle:
la $s0 scoreJeu			# on recupere le score pour stocker le nouveau obstacle � la position
lw $s1 0($s0)			#obstaclesPosX[score] et obstaclesPosY[score]

mulu $t2 $s1 4			# t2 = s1 * 4 (t2 = score * 4)

la $s2 obstaclesPosX		# adresses de tableaux des coordonn�es des obstacles
la $s3 obstaclesPosY

add $s2 $s2 $t2
add $s3 $s3 $t2

jal newRandomObjectPosition
move $t0 $v0
move $t1 $v1			# (t0, t1) = (x, y) du nouveau obstacle


sw $t0 0($s2)
sw $t1 0($s3)

la $t0 numObstacles
lw $t1 0($t0)
addi $t1 $t1 1
sw $t1 0($t0)

scorePlus:
addi $s1 $s1 1			# score++
sw $s1 0($s0)


deplace:

deplaceCorps:
la $t0 tailleSnake
lw $s4 0($t0)			# taille dans $s4

la $s0 snakeDir			# adresse de la  direction dans $s0
lw $s1 0($s0)			# valeur de la direction dans $s1

la $s2 snakePosX			#t2 adresse de tableau de posiitons X
la $s3 snakePosY			#t3 adresse de tableau de position Y

li $t1 1
beq $s4 $t1 deplaceTete

subu $t7 $s2 4

move $t0 $s4			# $t0 a la taille 
subu $t0 $t0 2			#�taille -2 dans t0
mulu $t0 $t0 4
add $s2 $t0 $s2
add $s3 $t0 $s3

For: beq $s2 $t7 deplaceTete
lw $t4 0($s2)
sw $t4 4($s2)
subu $s2 $s2 4

lw $t4 0($s3)
sw $t4 4($s3)
subu $s3 $s3 4

b For

deplaceTete:
la $s0 snakeDir			# adresse de la  direction dans $s0
lw $s1 0($s0)			# valeur de la direction dans $s1

la $t2 snakePosX			#t2 adresse de tableau de posiitons X
lw $s2 0($t2)			# x de la tete
la $t3 snakePosY			#t3 adresse de tableau de position Y
lw $s3 0($t3)			# y de la tete

li $t1 1
li $t2 2


beqz $s1 deplaceTeteHaut
beq $s1 $t1 deplaceTeteDroite
beq $s1 $t2 deplaceTeteBas

deplaceTeteGauche:		# y--
la $t0 snakePosY		# adresse de snakePosY
lw $t1 0($t0)			#�position Y de la tete du serpent
subu $t1 $t1 1			#�$t1 nouvelle position Y
sw $t1 0($t0)

j finDeplace

deplaceTeteHaut:		# x++
la $t0 snakePosX		# adresse de snakePosX
lw $t1 0($t0)			#�position X de la tete du serpent
addi $t1 $t1 1
sw $t1 0($t0)

j finDeplace

deplaceTeteDroite:		# y++
la $t0 snakePosY		# adresse de snakePosY
lw $t1 0($t0)			#�position Y de la tete du serpent
addi $t1 $t1 1
sw $t1 0($t0)

j finDeplace

deplaceTeteBas:		# x--
la $t0 snakePosX		# adresse de snakePosX
lw $t1 0($t0)			#�position X de la tete du serpent
subu $t1 $t1 1
sw $t1 0($t0)


# epilogue 
finDeplace:
lw $s0 16($sp)
lw $s1 12($sp)
lw $s2 8($sp)
lw $s3 4($sp)
lw $ra 0($sp)

addu $sp $sp 20
jr $ra

############################### conditionFinJeu ################################
# Param�tres: Aucun
# Retour: $v0 La valeur 0 si le jeu doit continuer ou toute autre valeur sinon.
################################################################################

conditionFinJeu:
# prolgoue:
subu $sp $sp 36
sw $s0 0($sp)
sw $s1 4($sp)
sw $s2 8($sp)
sw $s3 12($sp)
sw $s4 16($sp)
sw $s5 20($sp)
sw $s6 24($sp)
sw $s7 28($sp)
sw $a0 32($sp)
#sw $v0 32($sp)
# s1 & s2

# corps:
la $s0 obstaclesPosX		# tableau avec la cordonn� X des obstacles
la $s1 obstaclesPosY		# tableau avec la cordonn� Y des obstacles

la $s2 numObstacles
lw $t2 0($s2)
#subi $t2 $t2 1			# la derniere adresse du tableau
mulu $t2 $t2 4			# avec les octets
add $t3 $t2 $s0			# snakePosX[numObstacles - 1]
la $s3 snakePosX
lw $s4 0($s3)
la $s5 snakePosY
lw $s6 0($s5)
li $s7 5			#compteur test cannibalisme

testXObstacles: 
beqz $s7 testmur
beq $s0 $t3 pasObstacle
lw $t6 0($s0)


beq $s4 $t6 testYObstacles	# tester si x correspondent

miss:
addi $s0 $s0 4
addi $s1 $s1 4
j testXObstacles

testYObstacles:
lw $t7 0($s1)
beq $s6 $t7 perdu
j miss

pasObstacle:
subi $s7 $s7 1
j finTestObstacle

perdu:
li $v0 1
j finTestes

finTestObstacle:

testCannibalisme:

addi $s0 $s3 4
addi $s1 $s5 4

la $s2 tailleSnake
lw $t2 0($s2)
mulu $t2 $t2 4
add $t3 $s3 $t2



j testXObstacles


testmur:
la $s0 snakePosX
lw $s1 0($s0)
la $s2 snakePosY
lw $s3 0($s2)

la $s4 tailleGrille
lw $s5 0($s4)

bltz $s1 perdu
bge $s1 $s5 perdu
bltz $s3 perdu
bge $s3 $s5 perdu

continue:
li $v0 0
# �pilogue:
finTestes:
lw $s0 0($sp)
lw $s1 4($sp)
lw $s2 8($sp)
lw $s3 12($sp)
lw $s4 16($sp)
lw $s5 20($sp)
lw $s6 24($sp)
lw $s7 28($sp)
lw $a0 32($sp)
addi $sp $sp 36
jr $ra

############################### affichageFinJeu ################################
# Param�tres: Aucun
# Retour: Aucun
# Effet de bord: Affiche le score du joueur dans le terminal suivi d'un petit
#                mot gentil (Exemple : �Quelle pitoyable prestation !�).
# Bonus: Afficher le score en surimpression du jeu.
################################################################################

affichageFinJeu:

subu $sp $sp 20
sw $ra 0($sp)
sw $s0 4($sp)
sw $s1 8($sp)
sw $s2 12($sp)
sw $s3 16($sp)


# centaine
la $t0 scoreJeu

la $a0 message
li $v0 4
syscall

lw $a0 0($t0)
li $v0 1
syscall

jal resetAffichage

# nouveau


la $s0 scoreJeu
lw $t0 0($s0)
li $t1 100

div $t0 $t1
mflo $s0 	# s0 à la centaine

# jusqua ici ca marche


# afficher niveau
j switcher1				# switch marche bien
finSwitch1:
# on a le tableau X dans s1
# le tableau Y dans s2
# le numéro de bits dans $s3
li $t6 10
j decalerX1
finDecalageX1:

li $t6 3
j decalerY1
finDecalageY1:



jal printChiffre1




# dizaine
la $t0 scoreJeu

la $a0 message
li $v0 4
syscall

lw $a0 0($t0)
li $v0 1
syscall


# nouveau

la $s0 scoreJeu
lw $t0 0($s0)
li $t1 100

div $t0 $t1
mfhi $s0 	# s0 à le reste
li $t1 10
div $s0 $t1
mflo $s0

# jusqua ici ca marche


# afficher niveau
j switcher2				# switch marche bien
finSwitch2:
# on a le tableau X dans s1
# le tableau Y dans s2
# le numéro de bits dans $s3
li $t6 10
j decalerX2
finDecalageX2:

li $t6 7
j decalerY2
finDecalageY2:



jal printChiffre2


# unités
la $t0 scoreJeu

la $a0 message
li $v0 4
syscall

lw $a0 0($t0)
li $v0 1
syscall



# nouveau

la $s0 scoreJeu
lw $t0 0($s0)
li $t1 100

div $t0 $t1
mfhi $s0 	# s0 à le reste
li $t1 10
div $s0 $t1
mfhi $s0

# jusqua ici ca marche


# afficher niveau
j switcher3				# switch marche bien
finSwitch3:
# on a le tableau X dans s1
# le tableau Y dans s2
# le numéro de bits dans $s3
li $t6 10
j decalerX3
finDecalageX3:

li $t6 11
j decalerY3
finDecalageY3:



jal printChiffre3


j printCrane


#noveau

# 1


decalerX1:
# decalage dans t6
# adresse du chiffre dans s1
# chiffre à afficher s0

move $t3 $s3

la $t5 tmpX

decXLoop1:
beqz $t3 finDecalageX1
lw $t4 0($s1)

add $t4 $t4 $t6
sw $t4 0($t5)

addi $s1 $s1 4
addi $t5 $t5 4
subu $t3 $t3 1
j decXLoop1


#decaler le lettre sur l'axe Y
decalerY1:
move $t3 $s3

la $t5 tmpY

decYLoop1:
beqz $t3 finDecalageY1
lw $t4 0($s2)
add $t4 $t6 $t4
sw $t4 0($t5)

addi $s2 $s2 4
addi $t5 $t5 4
subu $t3 $t3 1
j decYLoop1



# renvoie l'adresse des tableaux X et Y du chiffre donné
# chiffre cherché en $s0
# renvoie le resultat dans $s1 et $s2
# nombre de bits dans $s3
switcher1:
beqz $s0 cestZero1

li $t0 1
beq $s0 $t0 cestUn1

li $t0 2
beq $s0 $t0 cestDeux1

li $t0 3
beq $s0 $t0 cestTrois1

li $t0 4
beq $s0 $t0 cestQuatre1

li $t0 5
beq $s0 $t0 cestCinq1

li $t0 6
beq $s0 $t0 cestSix1

li $t0 7
beq $s0 $t0 cestSept1

li $t0 8
beq $s0 $t0 cestHuit1

cestNeuf1:
la $s1 chiffre9X
la $s2 chiffre9Y
li $s3 12

j finSwitch1

cestHuit1:
la $s1 chiffre8X
la $s2 chiffre8Y
li $s3 13

j finSwitch1

cestSept1:
la $s1 chiffre7X
la $s2 chiffre7Y
li $s3 9

j finSwitch1

cestSix1:
la $s1 chiffre6X
la $s2 chiffre6Y
li $s3 12

j finSwitch1

cestCinq1:
la $s1 chiffre5X
la $s2 chiffre5Y
li $s3 11

j finSwitch1

cestQuatre1:
la $s1 chiffre4X
la $s2 chiffre4Y
li $s3 9

j finSwitch1

cestTrois1:
la $s1 chiffre3X
la $s2 chiffre3Y
li $s3 11

j finSwitch1

cestDeux1:
la $s1 chiffre2X
la $s2 chiffre2Y
li $s3 12

j finSwitch1

cestUn1:
la $s1 chiffre1X
la $s2 chiffre1Y
li $s3 5

j finSwitch1

cestZero1:
la $s1 chiffre0X
la $s2 chiffre0Y
li $s3 12

j finSwitch1

printChiffre1:
subi $sp $sp 4
sw $ra 0($sp)


move $t3 $s3
la $t5 tmpX
la $t6 tmpY

PCLoop1: 

beqz $t3 endPCLoop1

  lw $a1 0($t5)
  lw $a2 0($t6)
  lw $a0 colors + white
  jal printColorAtPosition
 
  subu $t3 $t3 1
  addi $t5 $t5 4
  addi $t6 $t6 4
  j PCLoop1

endPCLoop1:
lw $ra 0($sp)
addi $sp $sp 4
jr $ra






#2


decalerX2:
# decalage dans t6
# adresse du chiffre dans s1
# chiffre à afficher s0

move $t3 $s3

la $t5 tmpX

decXLoop2:
beqz $t3 finDecalageX2
lw $t4 0($s1)

add $t4 $t4 $t6
sw $t4 0($t5)

addi $s1 $s1 4
addi $t5 $t5 4
subu $t3 $t3 1
j decXLoop2


#decaler le lettre sur l'axe Y
decalerY2:
move $t3 $s3

la $t5 tmpY

decYLoop2:
beqz $t3 finDecalageY2
lw $t4 0($s2)
add $t4 $t6 $t4
sw $t4 0($t5)

addi $s2 $s2 4
addi $t5 $t5 4
subu $t3 $t3 1
j decYLoop2



# renvoie l'adresse des tableaux X et Y du chiffre donné
# chiffre cherché en $s0
# renvoie le resultat dans $s1 et $s2
# nombre de bits dans $s3
switcher2:
beqz $s0 cestZero2

li $t0 1
beq $s0 $t0 cestUn2

li $t0 2
beq $s0 $t0 cestDeux2

li $t0 3
beq $s0 $t0 cestTrois2

li $t0 4
beq $s0 $t0 cestQuatre2

li $t0 5
beq $s0 $t0 cestCinq2

li $t0 6
beq $s0 $t0 cestSix2

li $t0 7
beq $s0 $t0 cestSept2

li $t0 8
beq $s0 $t0 cestHuit2

cestNeuf2:
la $s1 chiffre9X
la $s2 chiffre9Y
li $s3 12

j finSwitch2

cestHuit2:
la $s1 chiffre8X
la $s2 chiffre8Y
li $s3 13

j finSwitch2

cestSept2:
la $s1 chiffre7X
la $s2 chiffre7Y
li $s3 9

j finSwitch2

cestSix2:
la $s1 chiffre6X
la $s2 chiffre6Y
li $s3 12

j finSwitch2

cestCinq2:
la $s1 chiffre5X
la $s2 chiffre5Y
li $s3 11

j finSwitch2

cestQuatre2:
la $s1 chiffre4X
la $s2 chiffre4Y
li $s3 9

j finSwitch2

cestTrois2:
la $s1 chiffre3X
la $s2 chiffre3Y
li $s3 11

j finSwitch2

cestDeux2:
la $s1 chiffre2X
la $s2 chiffre2Y
li $s3 12

j finSwitch2

cestUn2:
la $s1 chiffre1X
la $s2 chiffre1Y
li $s3 5

j finSwitch2

cestZero2:
la $s1 chiffre0X
la $s2 chiffre0Y
li $s3 12

j finSwitch2

printChiffre2:
subi $sp $sp 4
sw $ra 0($sp)


move $t3 $s3
la $t5 tmpX
la $t6 tmpY

PCLoop2: 

beqz $t3 endPCLoop2

  lw $a1 0($t5)
  lw $a2 0($t6)
  lw $a0 colors + white
  jal printColorAtPosition
 
  subu $t3 $t3 1
  addi $t5 $t5 4
  addi $t6 $t6 4
  j PCLoop2

endPCLoop2:
lw $ra 0($sp)
addi $sp $sp 4
jr $ra


# 3



decalerX3:
# decalage dans t6
# adresse du chiffre dans s1
# chiffre à afficher s0

move $t3 $s3

la $t5 tmpX

decXLoop3:
beqz $t3 finDecalageX3
lw $t4 0($s1)

add $t4 $t4 $t6
sw $t4 0($t5)

addi $s1 $s1 4
addi $t5 $t5 4
subu $t3 $t3 1
j decXLoop3


#decaler le lettre sur l'axe Y
decalerY3:
move $t3 $s3

la $t5 tmpY

decYLoop3:
beqz $t3 finDecalageY3
lw $t4 0($s2)
add $t4 $t6 $t4
sw $t4 0($t5)

addi $s2 $s2 4
addi $t5 $t5 4
subu $t3 $t3 1
j decYLoop3



# renvoie l'adresse des tableaux X et Y du chiffre donné
# chiffre cherché en $s0
# renvoie le resultat dans $s1 et $s2
# nombre de bits dans $s3
switcher3:
beqz $s0 cestZero3

li $t0 1
beq $s0 $t0 cestUn3

li $t0 2
beq $s0 $t0 cestDeux3

li $t0 3
beq $s0 $t0 cestTrois3

li $t0 4
beq $s0 $t0 cestQuatre3

li $t0 5
beq $s0 $t0 cestCinq3

li $t0 6
beq $s0 $t0 cestSix3

li $t0 7
beq $s0 $t0 cestSept3

li $t0 8
beq $s0 $t0 cestHuit3

cestNeuf3:
la $s1 chiffre9X
la $s2 chiffre9Y
li $s3 12

j finSwitch3

cestHuit3:
la $s1 chiffre8X
la $s2 chiffre8Y
li $s3 13

j finSwitch3

cestSept3:
la $s1 chiffre7X
la $s2 chiffre7Y
li $s3 9

j finSwitch3

cestSix3:
la $s1 chiffre6X
la $s2 chiffre6Y
li $s3 12

j finSwitch3

cestCinq3:
la $s1 chiffre5X
la $s2 chiffre5Y
li $s3 11

j finSwitch3

cestQuatre3:
la $s1 chiffre4X
la $s2 chiffre4Y
li $s3 9

j finSwitch3

cestTrois3:
la $s1 chiffre3X
la $s2 chiffre3Y
li $s3 11

j finSwitch3

cestDeux3:
la $s1 chiffre2X
la $s2 chiffre2Y
li $s3 12

j finSwitch3

cestUn3:
la $s1 chiffre1X
la $s2 chiffre1Y
li $s3 5

j finSwitch3

cestZero3:
la $s1 chiffre0X
la $s2 chiffre0Y
li $s3 12

j finSwitch3

printChiffre3:
subi $sp $sp 4
sw $ra 0($sp)


move $t3 $s3
la $t5 tmpX
la $t6 tmpY

PCLoop3: 

beqz $t3 endPCLoop3

  lw $a1 0($t5)
  lw $a2 0($t6)
  lw $a0 colors + white
  jal printColorAtPosition
 
  subu $t3 $t3 1
  addi $t5 $t5 4
  addi $t6 $t6 4
  j PCLoop3

endPCLoop3:
lw $ra 0($sp)
addi $sp $sp 4
jr $ra


printCrane:


li $s0 31
la $s1 craneX
la $s2 craneY

craneLoop:
beqz $s0 finCrane
lw $a1 0($s1)
lw $a2 0($s2)
lw $a0 colors + white
jal printColorAtPosition

addi $s1 $s1 4
addi $s2 $s2 4
subi $s0 $s0 1
j craneLoop

finCrane:


finito:
lw $ra 0($sp)
lw $s0 4($sp)
lw $s1 8($sp)
lw $s2 12($sp)
lw $s3 16($sp)
addu $sp $sp 20
jr $ra

  



