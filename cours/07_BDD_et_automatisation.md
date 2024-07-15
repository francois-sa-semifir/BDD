---
title: "07 - BDD et automatisation"
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

# BDD et automatisation

![autre image](/assets/...) <!-- .element width="...%" align="left"-->
![semifir](/assets/logo_semifir.png) <!-- .element width="19%" align="right" -->

---

## VII. BDD et Stratégie d'Automatisation

### A. Pourquoi une Stratégie d’Automatisation ?

#### 1. Bénéfices de l'Automatisation des Tests

L'automatisation des tests présente de nombreux avantages pour les équipes de développement agile :

- **Efficacité et Rapidité** : Les tests automatisés peuvent être exécutés rapidement et fréquemment, réduisant le temps nécessaire pour valider les changements de code.
- **Réduction des Erreurs Humaines** : L'automatisation élimine les erreurs possibles lors de l'exécution manuelle des tests, garantissant une plus grande fiabilité des résultats.
- **Réutilisabilité** : Les scripts de test automatisés peuvent être réutilisés pour différentes versions de l'application, ce qui réduit l'effort de maintenance.
- **Couverture de Test Accrue** : L'automatisation permet de tester un plus grand nombre de cas et de scénarios en un temps réduit, augmentant ainsi la couverture de test.
- **Feedback Rapide** : Les tests automatisés fournissent un feedback instantané aux développeurs, facilitant une détection précoce des bugs et une correction rapide.
- **Consistance et Reproductibilité** : Les tests automatisés sont exécutés de manière cohérente et reproductible, assurant une validation constante des fonctionnalités.

#### 2. Critères pour Sélectionner les Tests à Automatiser

Tous les tests ne sont pas adaptés à l'automatisation. Il est crucial de sélectionner judicieusement les tests à automatiser pour maximiser les avantages tout en minimisant les efforts. Voici les critères pour choisir les tests à automatiser :

- **Fréquence d'Exécution** : Les tests exécutés fréquemment, comme les tests de régression, sont de bons candidats pour l'automatisation.
- **Criticité des Fonctions** : Les fonctionnalités critiques pour le business ou la sécurité de l'application doivent être automatisées pour garantir leur fiabilité.
- **Tests Répétitifs et Monotones** : Les tests qui nécessitent des tâches répétitives et monotones bénéficient grandement de l'automatisation.
- **Stabilité des Fonctionnalités** : Les fonctionnalités stables, qui ne changent pas fréquemment, sont idéales pour l'automatisation.
- **Complexité et Temps de Test** : Les tests complexes et longs, qui nécessitent beaucoup de temps pour être exécutés manuellement, sont de bons candidats pour l'automatisation.
- **Tests de Données Multiples** : Les tests nécessitant des vérifications avec de multiples jeux de données sont plus efficaces lorsqu'ils sont automatisés.

### B. Les Apports du BDD pour la Conception de Tests Automatisés

#### 1. Comment BDD Facilite la Création de Tests Automatisés Robustes

Le Behavior-Driven Development (BDD) joue un rôle crucial dans la création de tests automatisés robustes :

- **Clarté et Compréhension Commune** : BDD utilise des scénarios écrits en langage naturel, facilitant la compréhension des exigences par toutes les parties prenantes, y compris les non-techniciens.
- **Spécification par le Comportement** : En se concentrant sur le comportement attendu du système, BDD aide à définir des critères d'acceptation clairs et précis, qui sont directement utilisables pour l'automatisation des tests.
- **Alignement avec les Exigences Métier** : Les scénarios BDD sont dérivés des exigences métier, assurant que les tests automatisés valident les fonctionnalités critiques pour les utilisateurs finaux.
- **Documentation Vivante** : Les scénarios BDD servent de documentation vivante, évoluant avec le code et les besoins métier, assurant une correspondance continue entre les tests et les exigences.

#### 2. Intégration des Scénarios BDD dans les Frameworks d'Automatisation

L'intégration des scénarios BDD dans les frameworks d'automatisation suit généralement ces étapes :

- **Rédaction des Scénarios en Gherkin** : Les scénarios sont rédigés en langage Gherkin, utilisant des mots-clés comme Given, When, Then pour décrire les comportements attendus.
- **Mapping avec le Code d'Automatisation** : Les étapes des scénarios Gherkin sont mappées avec des méthodes de code dans le framework d'automatisation (par exemple, Cucumber, SpecFlow).
- **Implémentation des Étapes de Test** : Les méthodes correspondant aux étapes des scénarios sont implémentées pour exécuter les actions nécessaires et vérifier les résultats attendus.
- **Exécution Automatisée des Scénarios** : Les scénarios BDD automatisés sont exécutés dans le cadre du pipeline de CI/CD, assurant une validation continue des fonctionnalités.

### C. Point de Vue sur l’Automatisation des Tests de Bout en Bout

#### 1. Importance des Tests de Bout en Bout dans un Environnement Agile

Les tests de bout en bout (E2E) sont essentiels pour garantir que l'ensemble du système fonctionne correctement d'un point de vue utilisateur :

- **Validation Intégrée** : Les tests E2E valident le flux complet de l'application, de l'interface utilisateur aux bases de données, en passant par les services backend.
- **Détection des Intégrations Défectueuses** : Ils identifient les problèmes d'intégration entre les différents composants du système, qui pourraient ne pas être détectés par les tests unitaires ou d'intégration.
- **Simulation des Scénarios Réels** : Les tests E2E simulent des scénarios réels d'utilisation, assurant que l'application répond aux attentes des utilisateurs finaux.
- **Assurance de la Qualité Globale** : Ils offrent une vue globale sur la qualité et les performances de l'application, garantissant une expérience utilisateur cohérente et sans faille.

#### 2. Stratégies et Outils pour l'Automatisation des Tests de Bout en Bout

Pour une automatisation efficace des tests de bout en bout, plusieurs stratégies et outils peuvent être utilisés :

- **Choix des Outils d'Automatisation** : Sélection d'outils appropriés pour les tests E2E, comme Selenium, Cypress, ou TestCafe, en fonction des besoins et des technologies utilisées.
- **Définition de Scénarios Représentatifs** : Identification et rédaction de scénarios E2E représentatifs des parcours utilisateurs critiques.
- **Environnements de Test** : Mise en place d'environnements de test similaires à la production pour garantir la fiabilité des tests E2E.
- **Intégration Continue** : Intégration des tests E2E dans le pipeline de CI/CD pour une exécution régulière et automatisée.
- **Maintenance des Tests** : Mise à jour régulière des scripts de test pour refléter les changements dans l'application et garantir leur pertinence.

En suivant ces pratiques et stratégies, les équipes de développement agile peuvent s'assurer que leurs applications sont robustes, fiables et répondent aux attentes des utilisateurs finaux.

---

# Merci à tous·tes !

![semifir](/assets/logo_semifir.png) <!-- .element width="19%" align="center" -->
