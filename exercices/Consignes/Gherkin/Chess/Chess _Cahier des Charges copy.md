# 📘 Chess - Cahier des charges

## Objectif de l'exercice :

- Le but de l'exercice est de transposer individuellement les US en Gherkin

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

### 8. En cas de pat (c'est-à-dire lorsqu'aucun joueur ne peut faire avancer la partie)

- La partie est déclarée nulle.

### 9. Si une pièce adverse peut être capturée au prochain coup

- Le joueur doit la capturer (cela s'appelle une prise obligatoire).

### 10. Si un joueur peut répéter la même position de jeu trois fois

- La partie est déclarée nulle.

### 11. Si un joueur peut capturer le roi adverse sans que celui-ci ne puisse être sauvé

- La partie est terminée et le joueur qui a capturé le roi a gagné (cela s'appelle un échec et mat immédiat).
