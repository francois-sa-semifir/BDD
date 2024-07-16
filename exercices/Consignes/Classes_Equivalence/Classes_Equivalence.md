# Test de classe d'équivalence

---

## Exercice 1 : Validation d'un âge

Écrire des classes d'équivalence pour une fonction qui valide si une personne est éligible pour une carte de membre d'un club. Les règles sont les suivantes :

- L'âge doit être un entier entre 18 et 60 ans inclus.

---

**Classes d'équivalence possibles :**

1. Âge en dessous de 18 (invalides)
2. Âge entre 18 et 60 inclus (valides)
3. Âge au-dessus de 60 (invalides)

**Cas de test :**

- Âge = 17 (classe 1)
- Âge = 18 (classe 2)
- Âge = 30 (classe 2)
- Âge = 60 (classe 2)
- Âge = 61 (classe 3)

---

## Exercice 2 : Calcul de la racine carrée

Écrire des classes d'équivalence pour une fonction qui calcule la racine carrée d'un nombre. La fonction accepte uniquement des nombres non négatifs.

**Classes d'équivalence possibles :**

1. Nombre négatif (invalides)
2. Nombre égal à zéro (valide)
3. Nombre positif (valide)

**Cas de test :**

- Nombre = -1 (classe 1)
- Nombre = 0 (classe 2)
- Nombre = 4 (classe 3)
- Nombre = 9.5 (classe 3)

---

## Exercice 3 : Validation d'une adresse e-mail

Écrire des classes d'équivalence pour une fonction qui valide une adresse e-mail. Les règles de validation sont les suivantes :

- L'adresse e-mail doit contenir un "@".
- L'adresse e-mail doit contenir un point "." après le "@".

**Classes d'équivalence possibles :**

1. Adresse sans "@" (invalides)
2. Adresse avec "@" mais sans "." après le "@" (invalides)
3. Adresse valide contenant "@" et "." après le "@" (valides)

**Cas de test :**

- Email = `userexample.com` (classe 1)
- Email = `user@examplecom` (classe 2)
- Email = `user@example.com` (classe 3)

---

## Exercice 4 : Saisie d'un code postal

Écrire des classes d'équivalence pour une fonction qui valide un code postal. Les règles de validation sont les suivantes :

- Le code postal doit être un entier à 5 chiffres.

**Classes d'équivalence possibles :**

1. Code postal avec moins de 5 chiffres (invalides)
2. Code postal avec plus de 5 chiffres (invalides)
3. Code postal avec exactement 5 chiffres (valides)

**Cas de test :**

- Code postal = "1234" (classe 1)
- Code postal = "123456" (classe 2)
- Code postal = "12345" (classe 3)

---

## Exercice 5 : Mot de passe

Écrire des classes d'équivalence pour une fonction qui valide un mot de passe. Les règles de validation sont les suivantes :

- Le mot de passe doit contenir entre 8 et 12 caractères inclus.
- Le mot de passe doit contenir au moins une lettre majuscule.
- Le mot de passe doit contenir au moins un chiffre.

**Classes d'équivalence possibles :**

1. Mot de passe avec moins de 8 caractères (invalides)
2. Mot de passe avec plus de 12 caractères (invalides)
3. Mot de passe sans lettre majuscule (invalides)
4. Mot de passe sans chiffre (invalides)
5. Mot de passe valide (entre 8 et 12 caractères, avec majuscule et chiffre) (valides)

**Cas de test :**

- Mot de passe = "Pass1" (classe 1)
- Mot de passe = "Password12345" (classe 2)
- Mot de passe = "password1" (classe 3)
- Mot de passe = "Password" (classe 4)
- Mot de passe = "Pass1234" (classe 5)

D'accord, voici cinq exercices plus complexes sur les tests de classe d'équivalence, avec des réponses détaillées pour chaque exercice fournies séparément.

---

## Exercice 6 : Calcul de l'impôt sur le revenu

**Description :**
Écrire une fonction qui calcule l'impôt sur le revenu en fonction du revenu annuel. Les règles fiscales sont les suivantes :

- Revenu <= 10,000 : 0% d'impôt
- 10,001 <= Revenu <= 30,000 : 10% d'impôt
- 30,001 <= Revenu <= 60,000 : 20% d'impôt
- Revenu > 60,000 : 30% d'impôt

**Classes d'équivalence :**

1. Revenu <= 10,000
2. 10,001 <= Revenu <= 30,000
3. 30,001 <= Revenu <= 60,000
4. Revenu > 60,000

**Cas de test :**

- Revenu = 9,500 (classe 1)
- Revenu = 15,000 (classe 2)
- Revenu = 45,000 (classe 3)
- Revenu = 75,000 (classe 4)

---

## Exercice 7 : Validation d'un numéro de carte de crédit

**Description :**
Écrire une fonction qui valide un numéro de carte de crédit. Les règles de validation sont les suivantes :

- Le numéro doit être une chaîne de 16 chiffres.
- Le numéro doit commencer par 4 (Visa), 5 (MasterCard), ou 6 (Discover).

**Classes d'équivalence :**

1. Numéro avec moins de 16 chiffres (invalides)
2. Numéro avec plus de 16 chiffres (invalides)
3. Numéro avec 16 chiffres mais ne commence pas par 4, 5, ou 6 (invalides)
4. Numéro valide (16 chiffres et commence par 4, 5, ou 6) (valides)

**Cas de test :**

- Numéro = "123456789012345" (classe 1)
- Numéro = "12345678901234567" (classe 2)
- Numéro = "7234567890123456" (classe 3)
- Numéro = "5234567890123456" (classe 4)

---

### Exercice 8 : Système de notation des étudiants

**Description :**
Écrire une fonction qui attribue une note en fonction du score obtenu. Les règles de notation sont les suivantes :

- Score < 50 : F
- 50 <= Score < 65 : D
- 65 <= Score < 75 : C
- 75 <= Score < 85 : B
- 85 <= Score <= 100 : A

**Classes d'équivalence :**

1. Score < 50
2. 50 <= Score < 65
3. 65 <= Score < 75
4. 75 <= Score < 85
5. 85 <= Score <= 100

**Cas de test :**

- Score = 45 (classe 1)
- Score = 55 (classe 2)
- Score = 70 (classe 3)
- Score = 80 (classe 4)
- Score = 95 (classe 5)

---

## Exercice 9 : Validation d'une adresse IP

**Description :**
Écrire une fonction qui valide une adresse IP au format IPv4. Les règles de validation sont les suivantes :

- L'adresse doit être constituée de quatre octets, chacun étant un entier compris entre 0 et 255, séparés par des points.

**Classes d'équivalence :**

1. Adresse avec moins de 4 octets (invalides)
2. Adresse avec plus de 4 octets (invalides)
3. Octet hors de l'intervalle 0-255 (invalides)
4. Adresse valide (quatre octets entre 0 et 255) (valides)

**Cas de test :**

- Adresse = "192.168.1" (classe 1)
- Adresse = "192.168.1.1.1" (classe 2)
- Adresse = "192.168.1.256" (classe 3)
- Adresse = "192.168.1.1" (classe 4)

---

## Exercice 10 : Réservation de billets d'avion

**Description :**
Écrire une fonction qui calcule le coût total d'une réservation de billets d'avion. Les règles de tarification sont les suivantes :

- Classe économique : 100€ par billet
- Classe affaires : 300€ par billet
- Première classe : 500€ par billet
- Une réduction de 10% est appliquée pour les réservations de plus de 5 billets.

**Classes d'équivalence :**

1. Classe économique, <= 5 billets
2. Classe économique, > 5 billets
3. Classe affaires, <= 5 billets
4. Classe affaires, > 5 billets
5. Première classe, <= 5 billets
6. Première classe, > 5 billets

**Cas de test :**

- Classe économique, 4 billets (classe 1)
- Classe économique, 6 billets (classe 2)
- Classe affaires, 3 billets (classe 3)
- Classe affaires, 8 billets (classe 4)
- Première classe, 5 billets (classe 5)
- Première classe, 10 billets (classe 6)

---

## Exercice 11 : Validation de formulaire d'inscription

**Description :**
Écrire une fonction qui valide un formulaire d'inscription avec les champs suivants :

- Nom (doit contenir entre 1 et 50 caractères)
- Mot de passe (doit contenir entre 8 et 20 caractères, avec au moins une majuscule, une minuscule, un chiffre et un caractère spécial)
- Date de naissance (doit être une date valide et l'utilisateur doit être âgé de 18 ans ou plus)

**Classes d'équivalence :**

1. Nom trop court (< 1 caractère)
2. Nom trop long (> 50 caractères)
3. Nom valide (1-50 caractères)
4. Mot de passe trop court (< 8 caractères)
5. Mot de passe trop long (> 20 caractères)
6. Mot de passe sans majuscule
7. Mot de passe sans minuscule
8. Mot de passe sans chiffre
9. Mot de passe sans caractère spécial
10. Mot de passe valide (8-20 caractères, contient majuscule, minuscule, chiffre et caractère spécial)
11. Date de naissance non valide
12. Âge < 18 ans
13. Âge >= 18 ans

**Cas de test :**

- Nom = "" (classe 1)
- Nom = "a" * 51 (classe 2)
- Nom = "Alice" (classe 3)
- Mot de passe = "Pass1" (classe 4)
- Mot de passe = "Password12345$123456789" (classe 5)
- Mot de passe = "password123$" (classe 6)
- Mot de passe = "PASSWORD123$" (classe 7)
- Mot de passe = "Password$$$" (classe 8)
- Mot de passe = "Password123" (classe 9)
- Mot de passe = "Password123$" (classe 10)
- Date de naissance = "2022-02-30" (classe 11)
- Date de naissance = "2007-07-16" (classe 12)
- Date de naissance = "2000-07-16" (classe 13)

---

## Exercice 12 : Calcul des primes d'assurance

**Description :**
Écrire une fonction qui calcule la prime d'assurance annuelle pour une voiture. Les règles de calcul sont les suivantes :

- Voiture de moins de 5 ans : 1000 €
- Voiture de 5 à 10 ans : 700 €
- Voiture de plus de 10 ans : 500 €
- Si l'utilisateur a moins de 25 ans, une surcharge de 20% est appliquée
- Si l'utilisateur a plus de 65 ans, une surcharge de 15% est appliquée

**Classes d'équivalence :**

1. Âge de la voiture < 5 ans
2. Âge de la voiture entre 5 et 10 ans
3. Âge de la voiture > 10 ans
4. Âge de l'utilisateur < 25 ans
5. Âge de l'utilisateur entre 25 et 65 ans
6. Âge de l'utilisateur > 65 ans

**Cas de test :**

- Voiture = 3 ans, Utilisateur = 20 ans (classes 1 et 4)
- Voiture = 6 ans, Utilisateur = 30 ans (classes 2 et 5)
- Voiture = 11 ans, Utilisateur = 70 ans (classes 3 et 6)
- Voiture = 4 ans, Utilisateur = 35 ans (classes 1 et 5)
- Voiture = 9 ans, Utilisateur = 23 ans (classes 2 et 4)

---

## Exercice 13 : Gestion d'un compte bancaire

**Description :**
Écrire une fonction qui gère les transactions d'un compte bancaire. Les transactions peuvent être des dépôts ou des retraits. Le solde du compte ne doit pas devenir négatif. Si un retrait dépasse le solde, une alerte est générée.

**Classes d'équivalence :**

1. Dépôt avec montant positif
2. Dépôt avec montant négatif (invalides)
3. Retrait avec montant positif et inférieur au solde
4. Retrait avec montant positif et égal au solde
5. Retrait avec montant positif et supérieur au solde (alerte)

**Cas de test :**

- Dépôt = 100 (classe 1)
- Dépôt = -50 (classe 2)
- Solde = 200, Retrait = 150 (classe 3)
- Solde = 200, Retrait = 200 (classe 4)
- Solde = 200, Retrait = 250 (classe 5)

---

## Exercice 14 : Système de gestion des réservations d'hôtel

**Description :**

Écrire une fonction qui gère les réservations d'hôtel. Les règles de réservation sont les suivantes :

- Une chambre simple coûte 50 € par nuit
- Une chambre double coûte 90 € par nuit
- Une suite coûte 200 € par nuit
- Si la réservation est pour plus de 7 nuits, une réduction de 10% est appliquée

**Classes d'équivalence :**

1. Chambre simple, <= 7 nuits
2. Chambre simple, > 7 nuits
3. Chambre double, <= 7 nuits
4. Chambre double, > 7 nuits
5. Suite, <= 7 nuits
6. Suite, > 7 nuits

**Cas de test :**

- Chambre simple, 5 nuits (classe 1)
- Chambre simple, 8 nuits (classe 2)
- Chambre double, 6 nuits (classe 3)
- Chambre double, 10 nuits (classe 4)
- Suite, 7 nuits (classe 5)
- Suite, 15 nuits (classe 6)

---

## Exercice 15 : Calcul des frais de livraison

**Description :**
Écrire une fonction qui calcule les frais de livraison d'un colis en fonction de son poids et de la distance à parcourir. Les règles de calcul sont les suivantes :

- Poids <= 1 kg : 5 € + 0.5 € par km
- 1 kg < Poids <= 5 kg : 10 € + 0.75 € par km
- Poids > 5 kg : 20 € + 1 € par km
- Si la distance est supérieure à 100 km, une surcharge de 20% est appliquée

**Classes d'équivalence :**

1. Poids <= 1 kg, Distance <= 100 km
2. Poids <= 1 kg, Distance > 100 km
3. 1 kg < Poids <= 5 kg, Distance <= 100 km
4. 1 kg < Poids <= 5 kg, Distance > 100 km
5. Poids > 5 kg, Distance <= 100 km
6. Poids > 5 kg, Distance > 100 km

**Cas de test :**

- Poids = 0.5 kg, Distance = 50 km (classe 1)
- Poids = 0.8 kg, Distance = 150 km (classe 2)
- Poids = 3 kg, Distance = 80 km (classe 3)
- Poids = 4.5 kg, Distance = 120 km (classe 4)
- Poids = 6 kg, Distance = 90 km (classe 5)
- Poids = 8 kg, Distance = 200 km (classe 6)
