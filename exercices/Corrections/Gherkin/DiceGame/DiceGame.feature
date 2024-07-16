#language: fr

Feature: Le jeu de dés
  La partie doit être préparée afin de pouvoir être jouée

  Background:
    Given les joueurs sont:
      | nom  |
      | Bob  |
      | John |
      | Jane |

  Scenario Outline: Préparation de la partie
    Given nous avons <nombreJoueurs> joueurs
    When nous préparons la partie
    Then nous insérons <nombreDes> dés dans le gobelet
    And la partie durera <nombreTours> tours
    Examples:
      | nombreJoueurs | nombreDes | nombreTours |
      | 2             | 2         | 3           |
      | 3             | 3         | 4           |
      | 4             | 4         | 5           |

  Scenario Outline: Démarrage de la partie
    Given la partie est démarre
    And nous jouons une manche
    When le <nomJoueur1> a fait <scoreJoueur1>
    And le <nomJoueur2> a fait <scoreJoueur2>
    And le <nomJoueur3> a fait <scoreJoueur3>
    Then le joueur <joueurGagnant> a gagné la manche
    Examples:
      | nomJoueur1 | scoreJoueur1 | nomJoueur2 | scoreJoueur2 | nomJoueur3 | scoreJoueur3 | joueurGagnant |
      | Bob        | 2            | John       | 18           | Jane       | 6            | John          |
      | Bob        | 6            | John       | 2            | Jane       | 18           | Jane          |
      | Bob        | 18           | John       | 6            | Jane       | 2            | Bob           |

  Scenario Outline: Fin de la partie
    Given la partie est terminée
    And le <nomJoueur1> a gagné <nombreManchesJoueur1> manches
    And le <nomJoueur2> a gagné <nombreManchesJoueur2> manches
    And le <nomJoueur3> a gagné <nombreManchesJoueur3> manches
    Then le joueur <joueurGagnant> a gagné la partie
    Examples:
      | nomJoueur1 | nombreManchesJoueur1 | nomJoueur2 | nombreManchesJoueur2 | nomJoueur3 | nombreManchesJoueur3 | joueurGagnant |
      | Bob        | 2                    | John       | 1                    | Jane       | 0                    | Bob           |
      | Bob        | 1                    | John       | 2                    | Jane       | 0                    | John          |
      | Bob        | 0                    | John       | 1                    | Jane       | 2                    | Jane          |