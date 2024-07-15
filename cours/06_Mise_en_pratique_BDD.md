---
title: "06 - Mise en Pratique BDD"
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

# Mise en Pratique BDD

![autre image](/assets/...) <!-- .element width="...%" align="left"-->
![semifir](/assets/logo_semifir.png) <!-- .element width="19%" align="right" -->

---

## VI. BDD et Mise en Pratique

### A. Introduction au Langage Gherkin

#### 1. Syntaxe et Structure de Gherkin

Gherkin est un langage de spécification comportementale utilisé dans le cadre du BDD (Behavior-Driven Development). Il permet de décrire les comportements attendus d'un système à travers des scénarios de test lisibles par des non-développeurs. Voici les principales caractéristiques de Gherkin :

- **Lignes de Commentaire :** Commencent par `#`. Elles sont ignorées lors de l'exécution.

  ```gherkin
  # Ceci est un commentaire
  ```

- **Mots-clés :** Gherkin utilise des mots-clés spécifiques pour structurer les scénarios. Les principaux mots-clés sont :
  - `Feature` : Décrit la fonctionnalité en cours de test.
  - `Scenario` : Décrit un cas de test spécifique pour la fonctionnalité.
  - `Given`, `When`, `Then` : Décrivent les étapes du scénario, respectivement la condition initiale, l'action entreprise, et le résultat attendu.
  - `And`, `But` : Utilisés pour ajouter des conditions ou actions supplémentaires.

  Exemple de syntaxe de base :

  ```gherkin
  Feature: Connexion à l'application

    Scenario: Connexion avec des identifiants valides
      Given l'utilisateur est sur la page de connexion
      When l'utilisateur entre son nom d'utilisateur et son mot de passe
      And l'utilisateur clique sur le bouton de connexion
      Then l'utilisateur est redirigé vers la page d'accueil
  ```

#### 2. Rédaction de Scénarios BDD avec Gherkin

Pour rédiger des scénarios efficaces en Gherkin, il est important de suivre certaines bonnes pratiques :

- **Utiliser un Langage Clair et Concis :** Les scénarios doivent être compréhensibles par toutes les parties prenantes (développeurs, testeurs, product owners, etc.).
- **Focus sur le Comportement :** Décrire ce que le système doit faire plutôt que comment il le fait.
- **Un Scénario par Cas d'Utilisation :** Chaque scénario doit tester un cas d'utilisation spécifique pour éviter les ambiguïtés.

Exemple d'un scénario bien rédigé :

```gherkin
Feature: Gestion des utilisateurs

  Scenario: Création d'un nouvel utilisateur
    Given l'administrateur est sur la page de gestion des utilisateurs
    When il clique sur "Ajouter un utilisateur"
    And il remplit le formulaire avec les informations de l'utilisateur
    And il clique sur "Enregistrer"
    Then un message de confirmation "Utilisateur créé avec succès" apparaît
    And le nouvel utilisateur apparaît dans la liste des utilisateurs
```

### B. Objectif des Critères d'Acceptation

#### 1. Définir des Critères d'Acceptation Clairs et Partagés

Les critères d'acceptation sont des conditions que le logiciel doit remplir pour être accepté par l'utilisateur ou le product owner. Ils servent à :

- **Clarifier les Exigences :** Ils précisent ce qui est attendu d'une fonctionnalité, éliminant ainsi les ambiguïtés.
- **Aligner les Attentes :** Assurent que tous les membres de l'équipe ont la même compréhension des objectifs et des résultats attendus.
- **Faciliter les Tests :** Servent de base pour la rédaction des tests automatisés.

Pour définir des critères d'acceptation clairs :

- **Utiliser des Termes Spécifiques :** Eviter les termes vagues et imprécis.
- **Être Mesurable :** Les critères doivent permettre de vérifier facilement si la fonctionnalité est correcte.
- **Être Atteignable :** Les critères doivent être réalistes et réalisables dans le cadre du projet.

#### 2. Utilisation de Conversations et d'Exemples pour une Compréhension Commune

Les conversations entre les parties prenantes (Product Owner, Développeurs, Testeurs) sont essentielles pour :

- **Clarifier les Besoins :** Les discussions permettent de poser des questions, lever les ambiguïtés et comprendre les attentes.
- **Explorer les Scénarios :** En parlant des différents cas d'utilisation et en fournissant des exemples concrets, on identifie les différents comportements attendus.

Exemple de critère d'acceptation basé sur des conversations :

```gherkin
Feature: Envoi d'e-mails de confirmation

  Scenario: Envoi d'un e-mail de confirmation après l'inscription
    Given un utilisateur a rempli le formulaire d'inscription
    When il clique sur "S'inscrire"
    Then un e-mail de confirmation est envoyé à l'adresse fournie
    And l'e-mail contient un lien de validation
```

### C. Le Scénario en tant que Livrable du BDD

#### 1. Rôle des Scénarios BDD dans la Documentation et la Communication

Les scénarios BDD jouent un rôle crucial dans :

- **La Documentation Vivante :** Les scénarios BDD servent de documentation à jour sur le comportement du système, facilitant la compréhension du code.
- **La Communication :** Ils permettent de communiquer clairement les attentes et les comportements entre les différentes équipes et les parties prenantes.

Les scénarios doivent être :

- **Accessibles :** Stockés dans un endroit où tous les membres de l'équipe peuvent les consulter.
- **Mis à Jour Régulièrement :** Modifiés en fonction des changements dans les exigences ou le comportement du système.

#### 2. Exemples de Scénarios Bien Rédigés

Voici quelques exemples de scénarios bien rédigés qui couvrent différents aspects d'une application :

- **Exemple 1 : Scénario de Connexion**

```gherkin
Feature: Connexion à l'application

  Scenario: Connexion avec des identifiants valides
    Given l'utilisateur est sur la page de connexion
    When il entre un nom d'utilisateur valide
    And il entre un mot de passe valide
    And il clique sur le bouton de connexion
    Then il est redirigé vers la page d'accueil
    And un message de bienvenue "Bonjour [Nom d'utilisateur]" s'affiche
```

- **Exemple 2 : Scénario de Création de Compte**

```gherkin
Feature: Création de compte utilisateur

  Scenario: Création d'un compte avec des informations valides
    Given l'utilisateur est sur la page de création de compte
    When il remplit le formulaire avec des informations valides
    And il clique sur le bouton "Créer un compte"
    Then un message de confirmation "Compte créé avec succès" s'affiche
    And l'utilisateur est redirigé vers la page de connexion
```

- **Exemple 3 : Scénario d'Achat**

```gherkin
Feature: Achat de produit

  Scenario: Achat d'un produit disponible
    Given l'utilisateur a ajouté un produit à son panier
    When il clique sur le bouton "Passer à la caisse"
    And il remplit les informations de paiement
    And il confirme la commande
    Then un message de confirmation "Votre commande a été passée avec succès" s'affiche
    And un e-mail de confirmation est envoyé à l'utilisateur
```

Ces scénarios bien rédigés illustrent des cas d'utilisation clairs, précis et mesurables, facilitant ainsi la compréhension et la validation des fonctionnalités développées.

---

## La suite

[BDD et automatisation](../cours/07_BDD_et_automatisation.md)

![...](...) <!-- .element width="...%" -->
