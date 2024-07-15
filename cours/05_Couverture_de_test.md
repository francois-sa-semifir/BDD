---
title: "05 - Couverture de Test"
theme: "solarized"
revealOptions:
transition: "slide"
slideNumber: false
touch: true
sources: 
  - 
  - 
author: 
  - "Francois Salmon"
---

<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
</head>

<style type="text/css">
  body{
    position: relative;
    height: 100vh;
  }

  body:before{
    content: ' ';
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    background: url(https://raw.githubusercontent.com/tamo-semifir/gcp-assets/main/logo_semifir.png) no-repeat center fixed;
    background-size: 75vh 45vw;
    opacity: 0.2
  }

  code {
    color: #EB5757;
    background-color: rgba(135,131,120,0.15);
    border-radius: 50px;
    font-size: 65%;
    font-weight: bolder
  }
</style>

# Couverture de Test

![autre image](/assets/...) <!-- .element width="...%" align="left"-->
![semifir](/assets/logo_semifir.png) <!-- .element width="19%" align="right" -->

---

## V. La Couverture de Test avec les Pratiques nDD

### Importance de la Couverture de Test

La couverture de test est une mesure essentielle de la qualité du logiciel qui indique dans quelle mesure le code source d'un programme est testé par un ensemble de tests. Elle permet de vérifier que toutes les parties du code sont correctement testées pour garantir un produit fiable et sans erreurs. Voici quelques raisons pour lesquelles la couverture de test est cruciale :

1. **Détection Précoce des Défauts** : Une couverture de test élevée permet de détecter les défauts tôt dans le cycle de développement, réduisant ainsi les coûts et les efforts nécessaires pour corriger les bugs plus tard.
2. **Amélioration de la Qualité du Code** : Les tests poussent les développeurs à écrire du code propre et maintenable, car le code difficile à tester est souvent un signe de mauvaise conception.
3. **Documentation du Comportement** : Les tests documentent le comportement prévu du logiciel, facilitant la compréhension du code pour les nouveaux développeurs.
4. **Réduction des Risques** : Une couverture de test complète réduit les risques de défaillances en production, augmentant ainsi la confiance des utilisateurs dans le logiciel.
5. **Facilitation des Modifications** : Avec une bonne couverture de test, les développeurs peuvent modifier le code existant en toute confiance, sachant que les tests les avertiront de toute régression.

### Comment TDD, ATDD et BDD Contribuent à une Meilleure Couverture de Test

#### A. TDD (Test-Driven Development)

1. **Définition et Principes de TDD** :
   - TDD est une pratique de développement logiciel où les tests sont écrits avant le code de production.
   - Le cycle de développement suit le schéma : Red (écrire un test qui échoue) -> Green (écrire du code pour passer le test) -> Refactor (optimiser le code tout en s'assurant que les tests passent toujours).

2. **Contribution à la Couverture de Test** :
   - **Test de Chaque Unité** : Chaque fonctionnalité du code est couverte par un test unitaire, assurant une couverture de test granulaire et exhaustive.
   - **Régression Minimale** : Les tests écrits au préalable réduisent les risques de régression, car chaque modification doit passer tous les tests existants.
   - **Code-First Mentality** : Encourage les développeurs à réfléchir à la conception et aux exigences avant de commencer à coder, ce qui se traduit par un code mieux structuré et plus facile à tester.

#### B. ATDD (Acceptance Test-Driven Development)

1. **Définition et Principes de l'ATDD** :
   - ATDD se concentre sur la rédaction de tests d'acceptation avant le développement de la fonctionnalité.
   - Implique la collaboration entre développeurs, testeurs et parties prenantes pour définir les critères d'acceptation.

2. **Contribution à la Couverture de Test** :
   - **Tests Basés sur les Exigences** : Les tests d'acceptation sont directement dérivés des exigences des utilisateurs, assurant que toutes les fonctionnalités importantes sont couvertes.
   - **Focus sur la Valeur Métier** : Garantit que le logiciel développé répond aux besoins et aux attentes des utilisateurs finaux, en couvrant les cas d'utilisation réels.
   - **Réduction des Malentendus** : Clarifie les attentes et réduit les malentendus entre les équipes, assurant une meilleure couverture des scénarios d'utilisation.

#### C. BDD (Behavior-Driven Development)

1. **Définition et Principes de BDD** :
   - BDD est une extension de TDD qui se concentre sur le comportement du système du point de vue de l'utilisateur.
   - Utilise un langage commun (souvent Gherkin) pour décrire les tests sous forme de scénarios lisibles par tous les membres de l'équipe.

2. **Contribution à la Couverture de Test** :
   - **Alignement sur les Exigences Métier** : Les scénarios BDD sont écrits en collaboration avec les parties prenantes, assurant que tous les aspects critiques du comportement du système sont couverts.
   - **Compréhension Partagée** : Utilise un langage simple et naturel, ce qui facilite la compréhension et la participation de toutes les parties prenantes, améliorant ainsi la couverture des tests.
   - **Scénarios Exhaustifs** : Les scénarios couvrent non seulement les chemins heureux, mais aussi les cas d'erreur et les exceptions, assurant une couverture de test complète.

### Conclusion

Les pratiques TDD, ATDD et BDD jouent un rôle crucial dans l'amélioration de la couverture de test dans un contexte agile. En intégrant les tests dès le début du cycle de développement et en encourageant la collaboration entre les équipes, ces approches assurent que toutes les fonctionnalités et comportements attendus sont correctement testés, conduisant à un logiciel de haute qualité et à une réduction des risques de défaillance en production.

---

## La suite

[Mise en Pratique BDD](../cours/06_Mise_en_pratique_BDD.md)

![...](...) <!-- .element width="...%" -->
