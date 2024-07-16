# Test de classe d'équivalence - Correction

---

## Exercice 1 : Validation d'un âge

**Classes d'équivalence :**

1. Âge en dessous de 18 (invalides)
2. Âge entre 18 et 60 inclus (valides)
3. Âge au-dessus de 60 (invalides)

**Cas de test :**

- Âge = 17 (classe 1) -> Invalide
- Âge = 18 (classe 2) -> Valide
- Âge = 30 (classe 2) -> Valide
- Âge = 60 (classe 2) -> Valide
- Âge = 61 (classe 3) -> Invalide

---

## Exercice 2 : Calcul de la racine carrée

**Classes d'équivalence :**

1. Nombre négatif (invalides)
2. Nombre égal à zéro (valide)
3. Nombre positif (valide)

**Cas de test :**

- Nombre = -1 (classe 1) -> Invalide
- Nombre = 0 (classe 2) -> Valide
- Nombre = 4 (classe 3) -> Valide
- Nombre = 9.5 (classe 3) -> Valide

---

## Exercice 3 : Validation d'une adresse e-mail

**Classes d'équivalence :**

1. Adresse sans "@" (invalides)
2. Adresse avec "@" mais sans "." après le "@" (invalides)
3. Adresse valide contenant "@" et "." après le "@" (valides)

**Cas de test :**

- Email = `userexample.com` (classe 1) -> Invalide
- Email = `user@examplecom` (classe 2) -> Invalide
- Email = `user@example.com` (classe 3) -> Valide

---

## Exercice 4 : Saisie d'un code postal

**Classes d'équivalence :**

1. Code postal avec moins de 5 chiffres (invalides)
2. Code postal avec plus de 5 chiffres (invalides)
3. Code postal avec exactement 5 chiffres (valides)

**Cas de test :**

- Code postal = "1234" (classe 1) -> Invalide
- Code postal = "123456" (classe 2) -> Invalide
- Code postal = "12345" (classe 3) -> Valide

---

## Exercice 5 : Mot de passe

**Classes d'équivalence :**

1. Mot de passe avec moins de 8 caractères (invalides)
2. Mot de passe avec plus de 12 caractères (invalides)
3. Mot de passe sans lettre majuscule (invalides)
4. Mot de passe sans chiffre (invalides)
5. Mot de passe valide (entre 8 et 12 caractères, avec majuscule et chiffre) (valides)

**Cas de test :**

- Mot de passe = "Pass1" (classe 1) -> Invalide
- Mot de passe = "Password12345" (classe 2) -> Invalide
- Mot de passe = "password1" (classe 3) -> Invalide
- Mot de passe = "Password" (classe 4) -> Invalide
- Mot de passe = "Pass1234" (classe 5) -> Valide

---

## Exercice 6 : Calcul de l'impôt sur le revenu

**Classes d'équivalence :**

1. Revenu <= 10,000
2. 10,001 <= Revenu <= 30,000
3. 30,001 <= Revenu <= 60,000
4. Revenu > 60,000

**Cas de test et explications :**

- Revenu = 9,500 (classe 1) -> Impôt = 0%
- Revenu = 15,000 (classe 2) -> Impôt = 10% de 15,000 = 1,500
- Revenu = 45,000 (classe 3) -> Impôt = 20% de 45,000 = 9,000
- Revenu = 75,000 (classe 4) -> Impôt = 30% de 75,000 = 22,500

---

## Exercice 7 : Validation d'un numéro de carte de crédit

**Classes d'équivalence :**

1. Numéro avec moins de 16 chiffres (invalides)
2. Numéro avec plus de 16 chiffres (invalides)
3. Numéro avec 16 chiffres mais ne commence pas par 4, 5, ou 6 (invalides)
4. Numéro valide (16 chiffres et commence par 4, 5, ou 6) (valides)

**Cas de test et explications :**

- Numéro = "123456789012345" (classe 1) -> Invalide (moins de 16 chiffres)
- Numéro = "12345678901234567" (classe 2) -> Invalide (plus de 16 chiffres)
- Numéro = "7234567890123456" (classe 3) -> Invalide (ne commence pas par 4, 5, ou 6)
- Numéro = "5234567890123456" (classe 4) -> Valide (16 chiffres et commence par 5)

---

## Exercice 8 : Système de notation des étudiants

**Classes d'équivalence :**

1. Score < 50
2. 50 <= Score < 65
3. 65 <= Score < 75
4. 75 <= Score < 85
5. 85 <= Score <= 100

**Cas de test et explications :**

- Score = 45 (classe 1) -> Note = F
- Score = 55 (classe 2) -> Note = D
- Score = 70 (classe 3) -> Note = C
- Score = 80 (classe 4) -> Note = B
- Score = 95 (classe 5) -> Note = A

---

## Exercice 9 : Validation d'une adresse IP

**Classes d'équivalence :**

1. Adresse avec moins de 4 octets (invalides)
2. Adresse avec plus de 4 octets (invalides)
3. Octet hors de l'intervalle 0-255 (invalides)
4. Adresse valide (quatre octets entre 0 et 255) (valides)

**Cas de test et explications :**

- Adresse = "192.168.1" (classe 1) -> Invalide (moins de 4 octets)
- Adresse = "192.168.1.1.1" (classe 2) -> Invalide (plus de 4 octets)
- Adresse = "192.168.1.256" (classe 3) -> Invalide (octet hors de l'intervalle)
- Adresse = "192.168.1.1" (classe 4) -> Valide (quatre octets valides)

---

## Exercice 10 : Réservation de billets d'avion

**Classes d'équivalence :**

1. Classe économique, <= 5 billets
2. Classe économique, > 5 billets
3. Classe affaires, <= 5 billets
4. Classe affaires, > 5 billets
5. Première classe, <= 5 billets
6. Première classe, > 5 billets

**Cas de test et explications :**

- Classe économique, 4 billets (classe 1) -> Coût = 4 * 100€ = 400€
- Classe économique, 6 billets (classe 2) -> Coût = 6 * 100€ * 0.9 = 540€
- Classe affaires, 3 billets (classe 3) -> Coût = 3 * 300€ = 900€
- Classe affaires, 8 billets (classe 4) -> Coût = 8 * 300€ * 0.9 = 2,160€
- Première classe, 5 billets (classe 5) -> Coût = 5 * 500€ = 2,500€
- Première classe, 10 billets (classe 6) -> Coût = 10 * 500€ * 0.9 = 4,500€

---

## Exercice 11 : Validation de formulaire d'inscription

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

**Cas de test et explications :**

- Nom = "" (classe 1) -> Invalide (nom trop court)
- Nom = "a" * 51 (classe 2) -> Invalide (nom trop long)
- Nom = "Alice" (classe 3) -> Valide
- Mot de passe = "Pass1" (classe 4) -> Invalide (mot de passe trop court)
- Mot de passe = "Password12345$123456789" (classe 5) -> Invalide (mot de passe trop long)
- Mot de passe = "password123$" (classe 6) -> Invalide (pas de majuscule)
- Mot de passe = "PASSWORD123$" (classe 7) -> Invalide (pas de minuscule)
- Mot de passe = "Password$$$" (classe 8) -> Invalide (pas de chiffre)
- Mot de passe = "Password123" (classe 9) -> Invalide (pas de caractère spécial)
- Mot de passe = "Password123$" (classe 10) -> Valide
- Date de naissance = "2022-02-30" (classe 11) -> Invalide (date non valide)
- Date de naissance = "2007-07-16"(classe 12) -> Invalide (utilisateur a moins de 18 ans)
- Date de naissance = "2000-07-16" (classe 13) -> Valide (utilisateur a 18 ans ou plus)

---

## Exercice 12 : Calcul des primes d'assurance

**Classes d'équivalence :**

1. Âge de la voiture < 5 ans
2. Âge de la voiture entre 5 et 10 ans
3. Âge de la voiture > 10 ans
4. Âge de l'utilisateur < 25 ans
5. Âge de l'utilisateur entre 25 et 65 ans
6. Âge de l'utilisateur > 65 ans

**Cas de test et explications :**

- Voiture = 3 ans, Utilisateur = 20 ans (classes 1 et 4) -> Prime = 1000€ * 1.20 = 1200€
- Voiture = 6 ans, Utilisateur = 30 ans (classes 2 et 5) -> Prime = 700€
- Voiture = 11 ans, Utilisateur = 70 ans (classes 3 et 6) -> Prime = 500€ * 1.15 = 575€
- Voiture = 4 ans, Utilisateur = 35 ans (classes 1 et 5) -> Prime = 1000€
- Voiture = 9 ans, Utilisateur = 23 ans (classes 2 et 4) -> Prime = 700€ * 1.20 = 840€

---

## Exercice 13 : Gestion d'un compte bancaire

**Classes d'équivalence :**

1. Dépôt avec montant positif
2. Dépôt avec montant négatif (invalides)
3. Retrait avec montant positif et inférieur au solde
4. Retrait avec montant positif et égal au solde
5. Retrait avec montant positif et supérieur au solde (alerte)

**Cas de test et explications :**

- Dépôt = 100 (classe 1) -> Solde augmente de 100€
- Dépôt = -50 (classe 2) -> Invalide (montant négatif)
- Solde = 200, Retrait = 150 (classe 3) -> Solde devient 50€
- Solde = 200, Retrait = 200 (classe 4) -> Solde devient 0€
- Solde = 200, Retrait = 250 (classe 5) -> Alerte (retrait dépasse le solde)

---

## Exercice 14 : Système de gestion des réservations d'hôtel

**Classes d'équivalence :**

1. Chambre simple, <= 7 nuits
2. Chambre simple, > 7 nuits
3. Chambre double, <= 7 nuits
4. Chambre double, > 7 nuits
5. Suite, <= 7 nuits
6. Suite, > 7 nuits

**Cas de test et explications :**

- Chambre simple, 5 nuits (classe 1) -> Coût = 5 * 50€ = 250€
- Chambre simple, 8 nuits (classe 2) -> Coût = 8 * 50€ * 0.9 = 360€
- Chambre double, 6 nuits (classe 3) -> Coût = 6 * 90€ = 540€
- Chambre double, 10 nuits (classe 4) -> Coût = 10 * 90€ * 0.9 = 810€
- Suite, 7 nuits (classe 5) -> Coût = 7 * 200€ = 1400€
- Suite, 15 nuits (classe 6) -> Coût = 15 * 200€ * 0.9 = 2700€

---

## Exercice 15 : Calcul des frais de livraison

**Classes d'équivalence :**

1. Poids <= 1 kg, Distance <= 100 km
2. Poids <= 1 kg, Distance > 100 km
3. 1 kg < Poids <= 5 kg, Distance <= 100 km
4. 1 kg < Poids <= 5 kg, Distance > 100 km
5. Poids > 5 kg, Distance <= 100 km
6. Poids > 5 kg, Distance > 100 km

**Cas de test et explications :**

- Poids = 0.5 kg, Distance = 50 km (classe 1) -> Frais = 5€ + (0.5€ * 50) = 30€
- Poids = 0.8 kg, Distance = 150 km (classe 2) -> Frais = (5€ + (0.5€ * 150)) * 1.2 = 105€
- Poids = 3 kg, Distance = 80 km (classe 3) -> Frais = 10€ + (0.75€ * 80) = 70€
- Poids = 4.5 kg, Distance = 120 km (classe 4) -> Frais = (10€ + (0.75€ * 120)) * 1.2 = 118€
- Poids = 6 kg, Distance = 90 km (classe 5) -> Frais = 20€ + (1€ * 90) = 110€
- Poids = 8 kg, Distance = 200 km (classe 6) -> Frais = (20€ + (1€ * 200)) * 1.2 = 264€
