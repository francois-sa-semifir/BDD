# 📘 Cahier des charges

## Objectif du jeu :

- Le but du jeu d'échecs est de capturer le roi adverse, tout en évitant que le sien soit capturé.

---

## 📃 Règles :

### 1. Les échecs se jouent sur un échiquier de 8x8 cases

### 2. Chaque joueur dispose de 16 pièces : 1 roi, 1 reine, 2 tours, 2 fous, 2 cavaliers et 8 pions

### 3. Les joueurs jouent à tour de rôle, le joueur qui joue avec les pièces blanches commence la partie

### 4. Les **pièces** se déplacent suivant des règles précises :

- Le roi peut se déplacer d'une case dans n'importe quelle direction
- La reine peut se déplacer sur n'importe quel nombre de cases en ligne droite (verticalement, horizontalement ou en diagonale)
- Les tours peuvent se déplacer sur un nombre illimité de cases en ligne droite (verticalement ou horizontalement)
- Les fous peuvent se déplacer sur un nombre illimité de cases en diagonale
- Les cavaliers peuvent sauter par-dessus d'autres pièces et se déplacer de deux cases horizontalement puis une case verticalement (ou vice versa)
- Les pions peuvent avancer d'une case en avant et capturer en diagonale.
- Les pièces ne peuvent pas se déplacer sur des cases occupées par des pièces de la même couleur.

### 5. En cas de prise en passant :

- un pion peut capturer un pion adverse qui vient de avancer de deux cases à partir de sa ligne de départ
  - seulement s'il se trouve sur la colonne adjacente à celle où se trouve le pion adverse.

### 6. Si le roi est en échec (c'est-à-dire s'il est menacé par une pièce adverse et qu'il n'a pas de cases sûres où se déplacer)

- il doit sortir de l'échec au prochain coup.
- Si le roi est en **échec et mat** (c'est-à-dire qu'il ne peut pas sortir de l'échec)
  - la partie est terminée et le joueur qui a mis le roi en échec et mat a gagné.

### 7. Si les deux joueurs n'ont plus assez de pièces pour mettre l'adversaire en échec et mat (c'est-à-dire qu'il ne reste plus qu'un roi et quelques pièces mineures)

- la partie est déclarée nulle.

### 8.  En cas de pat (c'est-à-dire lorsqu'aucun joueur ne peut faire avancer la partie)

- La partie est déclarée nulle.

### 9.  Si une pièce adverse peut être capturée au prochain coup

- Le joueur doit la capturer (cela s'appelle une prise obligatoire).

### 10.     Si un joueur peut répéter la même position de jeu trois fois

- La partie est déclarée nulle.

### 11.  Si un joueur peut capturer le roi adverse sans que celui-ci ne puisse être sauvé

- La partie est terminée et le joueur qui a capturé le roi a gagné (cela s'appelle un échec et mat immédiat).

---

## User Stories

1. Titre : Jeu d'échecs sur un échiquier de 8x8 cases

En tant qu'utilisateur, je veux pouvoir jouer aux échecs sur un échiquier de 8x8 cases afin de pouvoir appliquer les règles du jeu et déplacer les pièces comme prévu.

Critères d'acceptation :

- L'échiquier est affiché à l'écran avec les cases noires et blanches disposées de manière à former un damier.
- Les pièces sont disposées sur l'échiquier selon les règles initiales du jeu d'échecs (pions en première ligne, tours, cavaliers, fous et rois en seconde ligne, etc.).

2. Titre : Pièces d'échecs pour chaque joueur

En tant qu'utilisateur, je veux disposer de 16 pièces pour chaque joueur afin de pouvoir jouer aux échecs selon les règles du jeu.

Critères d'acceptation :

- Chaque joueur dispose de 16 pièces au début de la partie : 1 roi, 1 reine, 2 tours, 2 fous, 2 cavaliers et 8 pions.
- Les pièces sont disposées sur l'échiquier selon les règles initiales du jeu d'échecs (pions en première ligne, tours, cavaliers, fous et rois en seconde ligne, etc.).
- Les pièces sont affichées à l'écran de manière à ce qu'il soit facile de les distinguer et de les sélectionner.
- Lorsqu'une pièce est capturée par l'adversaire, elle est retirée de l'échiquier.
- Si une pièce est promue (par exemple, un pion atteint la dernière rangée adverse et peut être remplacé par une reine, un cavalier ou une tour), l'utilisateur peut choisir quelle pièce il souhaite promouvoir.

3. Titre : Tour de jeu aux échecs

En tant qu'utilisateur, je veux pouvoir jouer à tour de rôle afin de respecter les règles du jeu d'échecs et de permettre à mon adversaire de jouer à son tour.

Critères d'acceptation :

- Au début de la partie, le joueur qui joue avec les pièces blanches commence.
- Lorsque c'est au tour d'un joueur de jouer, il peut sélectionner une de ses pièces et la déplacer vers une case accessible selon les règles du jeu d'échecs.
- Si le joueur ne peut pas déplacer aucune de ses pièces (par exemple, s'il est en échec et mat), un message d'alerte est affiché à l'écran et c'est au tour de l'adversaire de jouer.
- Lorsqu'un joueur a terminé son tour, c'est au tour de l'adversaire de jouer.
- Si un joueur met le roi adverse en échec et mat, la partie se termine

### 4. Les Pièces

#### 4.1 Titre : Déplacements du roi aux échecs

En tant qu'utilisateur, je veux pouvoir déplacer mon roi d'une case dans n'importe quelle direction afin de respecter les règles du jeu d'échecs et de pouvoir jouer avec cette pièce.

Critères d'acceptation :

- Le roi peut être sélectionné et déplacé par l'utilisateur comme n'importe quelle autre pièce.
- Le roi ne peut pas être déplacé vers une case occupée par une de ses propres pièces.
- Le roi ne peut pas être déplacé de manière à mettre en danger son propre roi (par exemple, en passant devant une pièce adverse qui pourrait le capturer au prochain tour).

#### 4.2 Titre : Déplacements de la reine aux échecs

En tant qu'utilisateur, je veux pouvoir déplacer ma reine sur n'importe quel nombre de cases en ligne droite (verticalement, horizontalement ou en diagonale) afin de respecter les règles du jeu d'échecs et de pouvoir jouer avec cette pièce.

Critères d'acceptation :

- La reine peut être sélectionnée et déplacée par l'utilisateur comme n'importe quelle autre pièce.
- La reine ne peut pas être déplacée vers une case occupée par une de ses propres pièces.
- La reine peut être déplacée sur n'importe quel nombre de cases en ligne droite (verticalement, horizontalement ou en diagonale), à condition qu'il n'y ait pas d'obstacles sur son chemin.
- Si la reine est déplacée de manière à mettre en danger le roi adverse

#### 4.3 Titre : Déplacements des tours aux échecs

En tant qu'utilisateur, je veux pouvoir déplacer mes tours sur un nombre illimité de cases en ligne droite (verticalement ou horizontalement) afin de respecter les règles du jeu d'échecs et de pouvoir jouer avec ces pièces.

Critères d'acceptation :

- Les tours peuvent être sélectionnées et déplacées par l'utilisateur comme n'importe quelle autre pièce.
- Les tours ne peuvent pas être déplacées vers une case occupée par une de ses propres pièces.
- Les tours peuvent être déplacées sur un nombre illimité de cases en ligne droite (verticalement ou horizontalement), à condition qu'il n'y ait pas d'obstacles sur leur chemin.

#### 4.4 Titre : Déplacements des fous aux échecs

En tant qu'utilisateur, je veux pouvoir déplacer mes fous sur un nombre illimité de cases en diagonale afin de respecter les règles du jeu d'échecs et de pouvoir jouer avec ces pièces.

Critères d'acceptation :

- Les fous peuvent être sélectionnés et déplacés par l'utilisateur comme n'importe quelle autre pièce.
- Les fous ne peuvent pas être déplacés vers une case occupée par une de ses propres pièces.
- Les fous peuvent être déplacés sur un nombre illimité de cases en diagonale, à condition qu'il n'y ait pas d'obstacles sur leur chemin.
- Si un fou est déplacé de manière à mettre en danger le roi adverse, un message d'alerte est affiché à l'écran.
- Si le roi adverse est en échec et mat, un message de fin de partie est affiché à l'écran et l'utilisateur peut recommencer une nouvelle partie.

#### 4.5 Titre : Déplacements des cavaliers aux échecs

En tant qu'utilisateur, je veux pouvoir déplacer mes cavaliers en sautant par-dessus d'autres pièces et en me déplaçant de deux cases horizontalement puis une case verticalement (ou vice versa) afin de respecter les règles du jeu d'échecs et de pouvoir jouer avec ces pièces.

Critères d'acceptation :

- Les cavaliers peuvent être sélectionnés et déplacés par l'utilisateur comme n'importe quelle autre pièce.
- Les cavaliers ne peuvent pas être déplacés vers une case occupée par une de ses propres pièces.
- Les cavaliers peuvent être déplacés en sautant par-dessus d'autres pièces et en se déplaçant de deux cases horizontalement puis une case verticalement (ou vice versa).

#### 4.6 Titre : Déplacements des pions aux échecs

En tant qu'utilisateur, je veux pouvoir déplacer mes pions en avançant d'une case en avant et en capturant en diagonale afin de respecter les règles du jeu d'échecs et de pouvoir jouer avec ces pièces.

 Critères d'acceptation :

- Les pions peuvent être sélectionnés et déplacés par l'utilisateur comme n'importe quelle autre pièce.
- Les pions ne peuvent pas être déplacés vers une case occupée par une de ses propres pièces.
- Les pions peuvent être déplacés d'une case en avant, à condition qu'il n'y ait pas d'obstacles sur leur chemin.
- Les pions peuvent capturer en diagonale en se déplaçant vers une case occupée par une pièce adverse.
- Si un pion atteint la dernière rangée adverse, il peut être promu en reine, en cavalier ou en tour.

### 5. Titre : Déplacements des pièces aux échecs

En tant qu'utilisateur, je veux pouvoir déplacer mes pièces en respectant les règles du jeu d'échecs, notamment en ne pouvant pas me déplacer sur des cases occupées par des pièces de la même couleur.

Critères d'acceptation :

- Les pièces peuvent être sélectionnées et déplacées par l'utilisateur selon les règles de déplacement propres à chaque type de pièce (roi, reine, tour, fou, cavalier, pion).
- Les pièces ne peuvent pas être déplacées vers une case occupée par une de ses propres pièces.

### 6. Titre : Prise en passant aux échecs

En tant qu'utilisateur, je veux pouvoir capturer un pion adverse en passant s'il vient de avancer de deux cases à partir de sa ligne de départ et se trouve sur la colonne adjacente à celle où se trouve mon pion, afin de respecter les règles du jeu d'échecs et de pouvoir jouer avec mes pions.

Critères d'acceptation :

- Si un pion adverse vient de avancer de deux cases à partir de sa ligne de départ et se trouve sur la colonne adjacente à celle où se trouve mon pion, un message d'alerte me propose de capturer le pion en passant.
- Si j'accepte de capturer le pion en passant, mon pion avance d'une case en diagonale et le pion adverse est retiré du jeu.
- Si je refuse de capturer le pion en passant, mon pion reste en place et le pion adverse continue sa partie normalement.
- Si un pion adverse est capturé en passant, un message d'alerte est affiché à l'écran.
- Si le roi adverse est en échec et mat, un message de fin de partie est affiché à l'écran et l'utilisateur peut recommencer une nouvelle partie.

### 7. Titre : Sortie de l'échec du roi aux échecs

En tant qu'utilisateur, je veux pouvoir sortir de l'échec mon roi s'il est menacé par une pièce adverse et qu'il n'a pas de cases sûres où se déplacer, afin de respecter les règles du jeu d'échecs et de pouvoir continuer ma partie.

Critères d'acceptation :

- Si mon roi est menacé par une pièce adverse et qu'il n'a pas de cases sûres où se déplacer, un message d'alerte me signale qu'il est en échec.
- Si mon roi est en échec, je dois obligatoirement le déplacer vers une case sûre au prochain coup.
- Si je tente de déplacer mon roi vers une case menacée par une pièce adverse, un message d'erreur est affiché à l'écran et je dois recommencer mon coup.
- Si mon roi sort de l'échec, un message de confirmation est affiché à l'écran et je peux continuer ma partie normalement.
- Si le roi adverse est en échec et mat, un message de fin de partie est affiché à l'écran et l'utilisateur peut recommencer une nouvelle partie.

### 8. Titre : Fin de partie en échec et mat aux échecs

En tant qu'utilisateur, je veux pouvoir terminer la partie lorsque mon roi est en échec et mat, c'est-à-dire qu'il ne peut pas sortir de l'échec, afin de respecter les règles du jeu d'échecs et de déterminer un gagnant.

Critères d'acceptation :

- Si mon roi est en échec et mat, un message de fin de partie est affiché à l'écran et la partie est terminée.
- Si mon roi est en échec et mat, le joueur qui a mis mon roi en échec et mat a gagné la partie.
- Si la partie est terminée en échec et mat, l'utilisateur peut recommencer une nouvelle partie.
- Si la partie est terminée autrement qu'en échec et mat (par exemple par décision mutuelle des joueurs ou par abandon), le gagnant est déterminé en fonction des règles de l'échec.

### 9. Titre : Fin de partie en match nul aux échecs

En tant qu'utilisateur, je veux pouvoir terminer la partie lorsque les deux joueurs n'ont plus assez de pièces pour mettre l'adversaire en échec et mat, c'est-à-dire qu'il ne reste plus qu'un roi et quelques pièces mineures, afin de respecter les règles du jeu d'échecs et de déterminer un résultat.

Critères d'acceptation :

- Si les deux joueurs n'ont plus assez de pièces pour mettre l'adversaire en échec et mat, un message de fin de partie en match nul est affiché à l'écran et la partie est terminée.
- Si la partie est terminée en match nul, l'utilisateur peut recommencer une nouvelle partie.
- Si la partie est terminée autrement qu'en match nul (par exemple par échec et mat ou par décision mutuelle des joueurs ou par abandon), le gagnant est déterminé en fonction des règles de l'échec.

### 10. Titre : Fin de partie en pat aux échecs

En tant qu'utilisateur, je veux pouvoir terminer la partie lorsque aucun joueur ne peut faire avancer la partie, c'est-à-dire en cas de pat, afin de respecter les règles du jeu d'échecs et de déterminer un résultat.

Critères d'acceptation :

- Si aucun joueur ne peut faire avancer la partie, un message de fin de partie en pat est affiché à l'écran et la partie est terminée.
- Si la partie est terminée en pat, l'utilisateur peut recommencer une nouvelle partie.
- Si la partie est terminée autrement qu'en pat (par exemple par échec et mat ou par match nul ou par décision mutuelle des joueurs ou par abandon), le gagnant est déterminé en fonction des règles de l'échec.

### 11. Titre: Prise obligatoire dans un jeu d'échecs

En tant que joueur d'échecs, je veux être obligé de capturer une pièce adverse lorsqu'elle peut être capturée au prochain coup afin de respecter les règles du jeu.

Critères d'acceptation :

- Le système affiche un message indiquant que la capture de la pièce adverse est obligatoire lorsqu'une pièce adverse peut être capturée au prochain coup.
- Le système empêche le joueur de continuer à jouer s'il ne capture pas la pièce adverse lorsqu'une prise est obligatoire.
- Le système met à jour l'échiquier en enlevant la pièce adverse lorsqu'elle est capturée et en mettant à jour les positions des autres pièces.
- Le système ne montre pas de message indiquant une prise obligatoire lorsqu'aucune pièce adverse ne peut être capturée.
- Le système permet au joueur de continuer à jouer normalement lorsqu'aucune prise n'est obligatoire.
- La fonctionnalité de prise obligatoire respecte les règles du jeu d'échecs.

### 12. Titre : Règle de la répétition de position dans un jeu d'échecs

En tant que joueur d'échecs, je veux que la partie soit déclarée nulle lorsqu'une position de jeu est répétée trois fois afin de respecter les règles du jeu.

Critères d'acceptation :

- Le système enregistre la position de l'échiquier après chaque coup joué.
- Le système vérifie si la position actuelle de l'échiquier a déjà été enregistrée deux fois précédemment.
- Si la position a déjà été enregistrée deux fois précédemment, le système déclare la partie comme nulle.
- Si la position n'a pas été enregistrée deux fois précédemment, le système permet aux joueurs de continuer à jouer normalement.
- La fonctionnalité de déclaration de la partie comme nulle en cas de répétition de position respecte les règles du jeu d'échecs.

### 13. Titre : Échec et mat immédiat dans un jeu d'échecs

En tant que joueur d'échecs, je veux que la partie soit terminée et que le joueur qui a capturé le roi adverse gagne lorsqu'un joueur peut capturer le roi adverse sans que celui-ci ne puisse être sauvé afin de respecter les règles du jeu.

Critères d'acceptation :

- Le système vérifie si un joueur peut capturer le roi adverse au prochain coup.
- Si un joueur peut capturer le roi adverse, le système vérifie s'il existe un moyen pour le roi adverse d'échapper à la capture.
- Si le roi adverse ne peut pas échapper à la capture, le système termine la partie et déclare le joueur qui a capturé le roi comme gagnant.
- Si le roi adverse peut échapper à la capture, le système permet aux joueurs de continuer à jouer normalement.
- La fonctionnalité d'échec et mat immédiat respecte les règles du jeu d'échecs.
