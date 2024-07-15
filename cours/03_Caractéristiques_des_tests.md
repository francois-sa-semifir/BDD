---
title: "03 - Caractéristiques des Tests"
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

# Caractéristiques des Tests

![autre image](/assets/...) <!-- .element width="...%" align="left"-->
![semifir](/assets/logo_semifir.png) <!-- .element width="19%" align="right" -->

---

## III. Caractéristiques des Tests en Agile

### Les Quadrants des Tests

Les quadrants des tests sont un cadre conceptuel pour catégoriser les différents types de tests en développement logiciel agile. Ils permettent de s'assurer que tous les aspects du produit sont testés de manière appropriée. Les quadrants sont répartis en quatre catégories principales :

1. **Quadrant Q1 : Tests de Confiance et Tests Unitaires**
   - **Objectif** : Assurer que chaque unité de code fonctionne correctement.
   - **Type de Test** : Tests automatisés, tests unitaires.
   - **Exemples** :
     - Tests unitaires pour vérifier la logique de calcul d'une fonction mathématique.
     - Tests de méthodes individuelles dans un module logiciel.
   - **Outils et Techniques** :
     - Frameworks de tests unitaires comme JUnit (Java), NUnit (.NET), pytest (Python).

2. **Quadrant Q2 : Tests Fonctionnels et de Cas d'Utilisation**
   - **Objectif** : Vérifier que le système fonctionne comme prévu du point de vue de l'utilisateur.
   - **Type de Test** : Tests fonctionnels automatisés et manuels, tests d'acceptation, tests d'interface utilisateur.
   - **Exemples** :
     - Vérification qu'un utilisateur peut se connecter à l'application avec des identifiants valides.
     - Validation du flux de travail d'une commande en ligne, de la sélection de produit au paiement.
   - **Outils et Techniques** :
     - Outils de test fonctionnel comme Selenium, Cucumber.

3. **Quadrant Q3 : Tests d'Exploration et de Scénarios**
   - **Objectif** : Identifier les défauts inconnus par l'exploration et la compréhension approfondie de l'application.
   - **Type de Test** : Tests manuels, tests exploratoires, tests basés sur des scénarios d'utilisation réels.
   - **Exemples** :
     - Simuler l'utilisation de l'application par différents types d'utilisateurs pour découvrir des problèmes inattendus.
     - Explorations des nouvelles fonctionnalités pour identifier les failles non couvertes par les tests automatisés.
   - **Outils et Techniques** :
     - Approches basées sur les tests exploratoires, mind mapping.

4. **Quadrant Q4 : Tests Non-Fonctionnels**
   - **Objectif** : Valider les aspects non-fonctionnels du système comme la performance, la sécurité et l'extensibilité.
   - **Type de Test** : Tests de performance, tests de charge, tests de sécurité.
   - **Exemples** :
     - Tester le temps de réponse de l'application sous une charge utilisateur élevée.
     - Évaluation de la sécurité de l'application contre les attaques courantes comme l'injection SQL.
   - **Outils et Techniques** :
     - Outils de tests de performance comme JMeter, outils de tests de sécurité comme OWASP ZAP.

### La Pyramide des Tests

La pyramide des tests est un modèle qui guide les équipes de développement logiciel sur la quantité et la variété des tests à implémenter. Elle aide à équilibrer les tests automatisés et manuels pour assurer une couverture de qualité tout en maintenant l'efficacité. La pyramide est divisée en trois niveaux principaux :

1. **Tests Unitaires (Base de la Pyramide)**
   - **Description** : Ce sont des tests qui valident le fonctionnement des plus petites unités de code de manière isolée.
   - **Objectif** : Détecter les bugs le plus tôt possible dans le cycle de développement.
   - **Caractéristiques** :
     - Rapides à exécuter.
     - Faciles à écrire et à maintenir.
     - Forte granularité.
   - **Exemples** :
     - Tester la méthode de calcul des intérêts dans un module bancaire.
     - Vérifier que la fonction de tri retourne les éléments dans l'ordre correct.

2. **Tests d'Intégration (Milieu de la Pyramide)**
   - **Description** : Ces tests vérifient que différents modules ou services du système interagissent correctement entre eux.
   - **Objectif** : Assurer que les interfaces entre les composants fonctionnent comme prévu.
   - **Caractéristiques** :
     - Plus lents que les tests unitaires.
     - Plus complexes à mettre en place et à maintenir.
     - Couvre l'interaction entre plusieurs unités de code.
   - **Exemples** :
     - Tester l'intégration entre un module de paiement et un service externe de traitement des paiements.
     - Vérifier que les données circulent correctement entre la couche de service et la couche de base de données.

3. **Tests End-to-End (Sommet de la Pyramide)**
   - **Description** : Ces tests simulent les scénarios d'utilisation réels de bout en bout pour vérifier que le système fonctionne comme attendu dans son ensemble.
   - **Objectif** : Valider que le système complet répond aux exigences de l'utilisateur final.
   - **Caractéristiques** :
     - Très lents à exécuter.
     - Coûteux à maintenir.
     - Couvre des parcours utilisateur complets.
   - **Exemples** :
     - Tester le processus complet d'achat sur un site de commerce électronique, de la sélection de produit au paiement et à la confirmation de commande.
     - Vérifier le parcours utilisateur d'inscription et de gestion de compte dans une application web.

## Conclusion

- **Importance d’un Équilibre** : Bien que chaque niveau de la pyramide et chaque quadrant des tests ait son importance, il est crucial de maintenir un équilibre pour optimiser l'efficacité des tests et la qualité du logiciel.
- **Automatisation** : L'automatisation des tests, particulièrement au niveau des tests unitaires et d'intégration, est essentielle pour garantir des cycles de développement rapides et fiables.
- **Collaboration** : Une bonne communication et collaboration entre les équipes de développement, de test, et les parties prenantes sont indispensables pour la réussite de l'approche de test agile.

---

## La suite

[Approches TDD, ATDD et BDD](cours/04_Approches_TDD_ATDD_BDD.md)

![...](...) <!-- .element width="...%" -->
