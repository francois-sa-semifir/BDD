#language: fr

Feature: Jeu d'échecs

# US 1

  Scenario Outline: Jeu d'échecs sur un échiquier de 8x8 cases
    Given l'échiquier est affiché à l'écran avec les cases noires et blanches disposées de manière à former un damier
    And les pièces sont disposées sur l'échiquier selon les règles initiales du jeu d'échecs
    Then l'utilisateur peut jouer aux échecs en déplaçant les pièces comme prévu

# US 2

  Scenario Outline: Pièces d'échecs pour chaque joueur
    Given chaque joueur dispose de 16 pièces au début de la partie
    And les pièces sont disposées sur l'échiquier selon les règles initiales du jeu d'échecs
    Then les pièces sont affichées à l'écran de manière à ce qu'il soit facile de les distinguer et de les sélectionner
    And lorsqu'une pièce est capturée par l'adversaire, elle est retirée de l'échiquier
    And si une pièce est promue, l'utilisateur peut choisir quelle pièce il souhaite promouvoir

# US 3

  Scenario Outline: Tour de jeu aux échecs
    Given au début de la partie, le joueur qui joue avec les pièces blanches commence
    When c'est au tour d'un joueur de jouer
    Then il peut sélectionner une de ses pièces et la déplacer vers une case accessible selon les règles du jeu d'échecs
    And si le joueur ne peut pas déplacer aucune de ses pièces, un message d'alerte est affiché à l'écran et c'est au tour de l'adversaire de jouer
    And lorsqu'un joueur a terminé son tour, c'est au tour de l'adversaire de jouer
    And si un joueur met le roi adverse en échec et mat, la partie se termine

# US 4.1

  Scenario Outline: Déplacements du roi aux échecs
    Given le roi peut être sélectionné et déplacé par l'utilisateur comme n'importe quelle autre pièce
    Then le roi ne peut pas être déplacé vers une case occupée par une de ses propres pièces
    And le roi ne peut pas être déplacé de manière à mettre en danger son propre roi

# US 4.2

  Scenario Outline: Déplacements de la reine aux échecs
    Given la reine peut être sélectionnée et déplacée par l'utilisateur comme n'importe quelle autre pièce
    Then la reine ne peut pas être déplacée vers une case occupée par une de ses propres pièces
    And la re3ne peut être déplacée sur n'importe quel nombre de cases en ligne droite (verticalement, horizontalement ou en diagonale), à condition qu'il n'y ait pas d'obstacles sur son chemin

# US 4.1

  Scenario Outline: Déplacements des tours aux échecs
    Given les tours peuvent être sélectionnées et déplacées par l'utilisateur comme n'importe quelle autre pièce
    Then les tours ne peuvent pas être déplacées vers une case occupée par une de ses propres pièces
    And les tours peuvent être déplacées sur un nombre illimité de cases en ligne droite (verticalement ou horizontalement), à condition qu'il n'y ait pas d'obstacles sur leur chemin

# US 4.4

  Scenario Outline: Déplacements des fous aux échecs
    Given les fous peuvent être sélectionnés et déplacés par l'utilisateur comme n'importe quelle autre pièce
    Then les fous ne peuvent pas être déplacés vers une case occupée par une de ses propres pièces
    And les fous peuvent être déplacés sur un nombre illimité de cases en diagonale, à condition qu'il n'y ait pas d'obstacles sur leur chemin

# US 4.5

  Scenario Outline: Déplacements des cavaliers aux échecs
    Given les cavaliers peuvent être sélectionnés et déplacés par l'utilisateur comme n'importe quelle autre pièce
    Then les cavaliers ne peuvent pas être déplacés vers une case occupée par une de ses propres pièces
    And les cavaliers peuvent être déplacés en sautant par-dessus d'autres pièces et en se déplaçant de deux cases horizontalement puis une case verticalement (ou vice versa)

# US 4.6

  Scenario Outline: Déplacements des pions aux échecs
    Given les pions peuvent être sélectionnés et déplacés par l'utilisateur comme n'importe quelle autre pièce
    Then les pions ne peuvent pas être déplacés vers une case occupée par une de ses propres pièces
    And les pions peuvent être déplacés d'une case en avant, à condition qu'il n'y ait pas d'obstacles sur leur chemin
    And les pions peuvent capturer en diagonale en se déplaçant vers une case occupée par une pièce adverse
    And si un pion atteint la dernière rangée adverse, il peut être promu en reine, en cavalier ou en tour

# US 5

  Scenario Outline: Déplacements des pièces aux échecs
    Given les pièces peuvent être sélectionnées et déplacées par l'utilisateur selon les règles de déplacement propres à chaque type de pièce (roi, reine, tour, fou, cavalier, pion)
    Then les pièces ne peuvent pas être déplacées vers une case occupée par une de ses propres pièces

# US 6

  Scenario Outline: Prise en passant aux échecs
    Given un pion adverse vient de avancer de deux cases à partir de sa ligne de départ et se trouve sur la colonne adjacente à celle où se trouve mon pion
    When un message d'alerte me propose de capturer le pion en passant
    Then si j'accepte de capturer le pion en passant, mon pion avance d'une case en diagonale et le pion adverse est retiré du jeu
    And si je refuse de capturer le pion en passant, mon pion reste en place et le pion adverse continue sa partie normalement

# US 7

  Scenario Outline: Sortie de l'échec du roi aux échecs
    Given mon roi est menacé par une pièce adverse et qu'il n'a pas de cases sûres où se déplacer
    When un message d'alerte me signale qu'il est en échec
    Then si mon roi est en échec, je dois obligatoirement le déplacer vers une case sûre au prochain coup
    And si je tente de déplacer mon roi vers une case menacée par une pièce adverse, un message d'erreur est affiché à l'écran et je dois recommencer mon coup
    And si mon roi sort de l'échec, un message de confirmation est affiché à l'écran et je peux continuer ma partie normalement

# US 8

  Scenario Outline: Fin de partie en échec et mat aux échecs
    Given mon roi est en échec et mat
    When un message de fin de partie est affiché à l'écran
    Then la partie est terminée
    And le joueur qui a mis mon roi en échec et mat a gagné la partie
    And l'utilisateur peut recommencer une nouvelle partie

# US 9

  Scenario Outline: Fin de partie en match nul aux échecs
    Given les deux joueurs n'ont plus assez de pièces pour mettre l'adversaire en échec et mat
    When un message de fin de partie en match nul est affiché à l'écran
    Then la partie est terminée
    And l'utilisateur peut recommencer une nouvelle partie

# US 10

  Scenario Outline: Fin de partie en pat aux échecs
    Given aucun joueur ne peut faire avancer la partie
    When un message de fin de partie en pat est affiché à l'écran
    Then la partie est terminée
    And l'utilisateur peut recommencer une nouvelle partie

# US 11

  Scenario Outline: Prise obligatoire dans un jeu d'échecs
    Given une pièce adverse peut être capturée au prochain coup
    When le système affiche un message indiquant que la capture de la pièce adverse est obligatoire
    Then le système empêche le joueur de continuer à jouer s'il ne capture pas la pièce adverse
    And le système met à jour l'échiquier en enlevant la pièce adverse lorsqu'elle est capturée et en mettant à jour les positions des autres pièces

# US 12

  Scenario Outline: Règle de la répétition de position dans un jeu d'échecs
    Given le système enregistre la position de l'échiquier après chaque coup joué
    When le système vérifie si la position actuelle de l'échiquier a déjà été enregistrée deux fois précédemment
    Then si la position a déjà été enregistrée deux fois précédemment, le système déclare la partie comme nulle
    And si la position n'a pas été enregistrée deux fois précédemment, le système permet aux joueurs de continuer à jouer normalement

# US 13

  Scenario Outline: Échec et mat immédiat dans un jeu d'échecs
    Given un joueur peut capturer le roi adverse au prochain coup
    When le système vérifie s'il existe un moyen pour le roi adverse d'échapper à la capture
    Then si le roi adverse ne peut pas échapper à la capture, le système termine la partie et déclare le joueur qui a capturé le roi comme gagnant
    And si le roi adverse peut échapper à la capture, le système permet aux joueurs de continuer à jouer normalement
