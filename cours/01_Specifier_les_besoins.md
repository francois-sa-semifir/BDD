---
title: "01 - Spécifier les Besoins"
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

# Spécifier les Besoins

![autre image](/assets/...) <!-- .element width="...%" align="left"-->
![semifir](/assets/logo_semifir.png) <!-- .element width="19%" align="right" -->

---

## I. Les Difficultés de Spécifier les Besoins

### Identification des Problèmes Courants dans la Spécification des Besoins

#### 1. Manque de Clarté et de Précision

- **Description :** Les besoins ne sont pas clairement définis, ce qui laisse place à différentes interprétations.
- **Exemple :** Un besoin tel que "L'application doit être rapide" est vague. Que signifie "rapide" ? Pour certains, cela peut signifier une réponse en moins d'une seconde, pour d'autres, moins de cinq secondes.

#### 2. Incomplétude des Besoins

- **Description :** Les besoins spécifiés sont souvent incomplets, omettant des fonctionnalités ou des scénarios importants.
- **Exemple :** Une spécification qui décrit comment un utilisateur peut se connecter, mais ne mentionne pas la procédure de récupération de mot de passe en cas d'oubli.

#### 3. Changement de Besoins en Cours de Projet

- **Description :** Les besoins peuvent évoluer en cours de projet en raison de nouvelles informations, de changements de marché ou de nouvelles priorités des parties prenantes.
- **Exemple :** Initialement, l'application devait uniquement supporter les navigateurs web, mais en cours de développement, une demande est faite pour supporter également les applications mobiles.

#### 4. Manque de Communication et de Collaboration

- **Description :** Les parties prenantes, y compris les clients, les développeurs et les testeurs, ne communiquent pas efficacement, entraînant des malentendus.
- **Exemple :** Les développeurs ne comprennent pas exactement ce que le client veut parce qu'ils n'ont pas eu de réunion directe avec eux et travaillent uniquement à partir de documents de spécification.

#### 5. Besoins Non Priorisés

- **Description :** Tous les besoins sont traités avec la même priorité, ce qui conduit à une allocation inefficace des ressources et à un manque de focus sur les fonctionnalités critiques.
- **Exemple :** Consacrer du temps à des fonctionnalités mineures alors que des fonctionnalités essentielles et critiques pour le lancement ne sont pas encore prêtes.

#### 6. Spécification Trop Technique

- **Description :** Les besoins sont spécifiés en termes trop techniques, ce qui les rend difficiles à comprendre pour les non-techniciens.
- **Exemple :** Utiliser des termes comme "API RESTful" ou "microservices" dans des spécifications destinées à des utilisateurs finaux ou des clients non techniques.

#### 7. Non-prise en Compte des Scénarios d'Utilisation

- **Description :** Les spécifications ne prennent pas en compte les divers scénarios d'utilisation réels auxquels les utilisateurs peuvent faire face.
- **Exemple :** Spécifier une fonctionnalité de recherche sans considérer des scénarios comme la recherche avec des fautes de frappe ou des synonymes.

### Conséquences de ces Problèmes sur le Développement Logiciel et la Qualité des Produits

#### 1. Développement de Fonctionnalités Inadéquates

- **Description :** Les développeurs créent des fonctionnalités qui ne répondent pas correctement aux besoins des utilisateurs finaux.
- **Impact :** Conduit à des retours fréquents de la part des utilisateurs, nécessitant des corrections et des modifications fréquentes.

#### 2. Retards dans les Projets

- **Description :** Les changements de besoins et les malentendus entraînent des retards dans les projets.
- **Impact :** Augmente le temps nécessaire pour compléter le projet, ce qui peut également augmenter les coûts.

#### 3. Surcoûts

- **Description :** Les ajustements répétés et les modifications des spécifications entraînent des surcoûts.
- **Impact :** Le budget du projet est dépassé, ce qui peut affecter la rentabilité et la viabilité du projet.

#### 4. Perte de Confiance des Parties Prenantes

- **Description :** Les problèmes répétés et les défaillances dans la livraison des fonctionnalités attendues peuvent entraîner une perte de confiance des clients et des parties prenantes.
- **Impact :** La relation client-fournisseur est affectée, ce qui peut nuire aux collaborations futures.

#### 5. Qualité du Produit Final

- **Description :** Un manque de clarté et de précision dans les spécifications peut entraîner un produit final de faible qualité.
- **Impact :** Le produit peut ne pas répondre aux attentes des utilisateurs, ce qui conduit à des taux de satisfaction faibles et à une adoption réduite.

#### 6. Augmentation de la Charge de Travail pour les Testeurs

- **Description :** Les testeurs doivent souvent combler les lacunes laissées par des spécifications inadéquates, en identifiant des scénarios non prévus et en ajustant les tests en conséquence.
- **Impact :** Les équipes de test sont surchargées, ce qui peut affecter leur efficacité et leur capacité à détecter toutes les anomalies.

#### 7. Non-Conformité aux Réglementations

- **Description :** Les spécifications inadéquates peuvent conduire à des non-conformités aux normes et réglementations industrielles.
- **Impact :** Entraîne des risques juridiques et financiers pour l'organisation, incluant des amendes et des litiges.

En résumé, les difficultés de spécification des besoins dans un projet de développement logiciel peuvent avoir des conséquences significatives sur la qualité, le budget, le calendrier et la satisfaction des parties prenantes. Une attention particulière doit être accordée à la clarté, la précision, et la collaboration continue pour minimiser ces risques et garantir la réussite des projets.

---

## La suite

[Principes Agiles](cours/02_Principes_agiles.md)

![...](...) <!-- .element width="...%" -->
