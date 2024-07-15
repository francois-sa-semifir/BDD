---
title: "04 - Approches TDD, ATDD et BDD"
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

# Approches TDD, ATDD et BDD

![autre image](/assets/...) <!-- .element width="...%" align="left"-->
![semifir](/assets/logo_semifir.png) <!-- .element width="19%" align="right" -->

---

## IV. Différenciation des Approches TDD, ATDD et BDD

### A. TDD (Test-Driven Development)

#### Définition et Principes de TDD

- **Test-Driven Development (TDD)** est une méthode de développement logiciel où les tests sont écrits avant le code de production. Cela inverse le processus traditionnel de développement, où le code est écrit en premier et les tests ensuite.
- **Principe fondamental** : Écrire un test automatisé qui échoue, écrire le minimum de code nécessaire pour faire passer le test, puis refactorer le code pour respecter les standards de qualité tout en s'assurant que les tests passent toujours.

#### Cycle de Développement avec TDD (Red-Green-Refactor)

1. **Red** : Écrire un test qui échoue. Ce test correspond à une nouvelle fonctionnalité ou à une modification requise. Comme la fonctionnalité n'est pas encore implémentée, le test doit échouer.
2. **Green** : Écrire le code minimal nécessaire pour faire passer le test. L'objectif est de rendre le test vert, c'est-à-dire qu'il passe.
3. **Refactor** : Améliorer le code tout en s'assurant que les tests passent toujours. Refactoriser le code signifie le nettoyer, le rendre plus lisible, plus efficace, sans changer son comportement observable.

#### Avantages et Défis de l'Implémentation de TDD

- **Avantages** :
  - **Qualité du Code** : TDD encourage l'écriture de code plus propre et mieux structuré.
  - **Détection Précoce des Bugs** : Les tests écrits dès le début aident à identifier les bugs plus tôt dans le cycle de développement.
  - **Documentation Vivante** : Les tests servent de documentation vivante, décrivant ce que le code est censé faire.
  - **Moins de Débogage** : Le cycle rapide Red-Green-Refactor réduit le temps passé à déboguer.

- **Défis** :
  - **Courbe d'Apprentissage** : La pratique de TDD peut être difficile à adopter pour les développeurs habitués à écrire du code sans tests préalables.
  - **Temps Initial** : Écrire des tests avant de coder peut sembler prendre plus de temps au début.
  - **Résistance au Changement** : Les équipes de développement peuvent résister à changer leurs méthodes de travail habituelles.

### B. ATDD (Acceptance Test-Driven Development)

#### Définition et Principes de l'ATDD

- **Acceptance Test-Driven Development (ATDD)** est une méthodologie de développement logiciel où les tests d'acceptation sont définis avant le développement. Ces tests sont écrits en collaboration avec les parties prenantes (clients, testeurs, développeurs) pour s'assurer que le système répond aux exigences fonctionnelles.
- **Principe fondamental** : Collaborer avec toutes les parties prenantes pour définir les tests d'acceptation qui décrivent les comportements attendus du système. Ces tests deviennent les critères de validation pour l'acceptation du système.

#### Rôle des Parties Prenantes dans la Définition des Tests d'Acceptation

- **Collaboration** : Les parties prenantes (clients, utilisateurs finaux, testeurs, développeurs) travaillent ensemble pour définir les critères d'acceptation.
- **Compréhension Commune** : Cette collaboration assure une compréhension partagée des besoins et des attentes, réduisant ainsi le risque de malentendus.
- **Critères d'Acceptation** : Les tests d'acceptation sont spécifiques, mesurables, atteignables, réalistes et temporellement définis (SMART).

#### Exemple de Cycle ATDD

1. **Définition des Critères d'Acceptation** : Les parties prenantes définissent les tests d'acceptation basés sur les exigences.
2. **Écriture des Tests** : Les tests d'acceptation sont formalisés en tests automatisés ou manuels.
3. **Développement** : Les développeurs écrivent le code pour faire passer les tests d'acceptation.
4. **Validation** : Les tests d'acceptation sont exécutés pour vérifier que le système répond aux exigences définies.
5. **Révision** : Les résultats des tests sont examinés par les parties prenantes, et les ajustements nécessaires sont effectués.

### C. BDD (Behavior-Driven Development)

#### Définition et Principes de BDD

- **Behavior-Driven Development (BDD)** est une méthodologie de développement logiciel qui étend TDD en se concentrant sur la collaboration entre les développeurs, les testeurs et les non-techniciens ou les parties prenantes commerciales. BDD utilise un langage commun (souvent Gherkin) pour décrire les comportements attendus du système.
- **Principe fondamental** : Décrire le comportement du système en termes de scénarios d'usage concrets, utilisant une syntaxe claire et compréhensible par tous les intervenants.

#### Différences entre BDD et TDD/ATDD

- **Focus sur le Comportement** : Alors que TDD se concentre sur l'écriture de tests unitaires pour des composants individuels, BDD se concentre sur la spécification du comportement du système dans son ensemble.
- **Collaboration et Communication** : BDD encourage une collaboration étroite entre les développeurs, les testeurs et les parties prenantes non techniques pour garantir que les comportements spécifiés répondent aux besoins métier.
- **Langage Commun** : BDD utilise des langages comme Gherkin pour écrire des scénarios dans un format Given-When-Then, facilitant la compréhension pour tous.

#### Rôle des Critères d'Acceptation dans BDD

- **Critères d'Acceptation** : Les scénarios BDD sont basés sur des critères d'acceptation qui décrivent les comportements attendus du système. Ces critères sont définis en collaboration avec les parties prenantes pour assurer une compréhension partagée.
- **Scénarios Concrets** : Chaque scénario décrit une situation spécifique dans laquelle le système est utilisé, facilitant la validation des comportements attendus.
- **Documentation et Communication** : Les scénarios BDD servent de documentation vivante et facilitent la communication continue entre les équipes de développement et les parties prenantes.

### Conclusion

- TDD, ATDD et BDD sont des approches complémentaires qui améliorent la qualité du logiciel en se concentrant sur différents aspects du développement et du test.
- Une compréhension approfondie de chaque approche permet de choisir la méthodologie la plus adaptée à chaque contexte de projet, en fonction des besoins spécifiques et des objectifs de l'équipe de développement.

---

## La suite

[Couverture de Test](../cours/05_Couverture_de_test.md)

![...](...) <!-- .element width="...%" -->
