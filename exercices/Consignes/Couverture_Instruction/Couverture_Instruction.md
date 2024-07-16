# Test de couverture d'instruction

---

## Exercice 1: Fonction de maximum simple

**Consigne :** Écrivez un test pour la fonction qui retourne le maximum de deux nombres.

```python
def maximum(a, b):
    if a > b:
        return a
    else:
        return b
```

---

## Exercice 2: Vérification de l'âge

**Consigne :** Testez la fonction qui vérifie si une personne est majeure.

```python
def est_majeur(age):
    return age >= 18
```

---

## Exercice 3: Conversion Celsius à Fahrenheit

**Consigne :** Testez la conversion de Celsius à Fahrenheit.

```python
def celsius_vers_fahrenheit(celsius):
    return (celsius * 9/5) + 32
```

---

## Exercice 4: Compte à rebours

**Consigne :** Écrivez des tests pour une fonction qui fait un compte à rebours à partir d'un nombre donné.

```python
def compte_a_rebours(n):
    if n < 0:
        return []
    return list(range(n, -1, -1))
```

---

## Exercice 5: Factorielle

**Consigne :** Testez la fonction qui calcule la factorielle d'un entier.

```python
def factorielle(n):
    if n < 0:
        raise ValueError("Nombre négatif")
    if n == 0:
        return 1
    return n * factorielle(n - 1)
```

---

## Exercice 6: Calculer la somme d'une liste

**Consigne :** Testez la fonction qui calcule la somme d'une liste de nombres.

```python
def somme(liste):
    return sum(liste)
```

---

## Exercice 7: Vérification de palindrome

**Consigne :** Écrivez des tests pour vérifier si une chaîne est un palindrome.

```python
def est_palindrome(chaine):
    return chaine == chaine[::-1]
```

---

## Exercice 8: Tri par sélection

**Consigne :** Testez une fonction qui implémente le tri par sélection.

```python
def tri_selection(liste):
    for i in range(len(liste)):
        min_idx = i
        for j in range(i+1, len(liste)):
            if liste[j] < liste[min_idx]:
                min_idx = j
        liste[i], liste[min_idx] = liste[min_idx], liste[i]
    return liste
```

---

## Exercice 9: Recherche binaire

**Consigne :** Testez la fonction de recherche binaire dans une liste triée.

```python
def recherche_binaire(liste, cible):
    gauche, droite = 0, len(liste) - 1
    while gauche <= droite:
        milieu = (gauche + droite) // 2
        if liste[milieu] == cible:
            return milieu
        elif liste[milieu] < cible:
            gauche = milieu + 1
        else:
            droite = milieu - 1
    return -1
```

---

## Exercice 10: Compter les voyelles

**Consigne :** Testez la fonction qui compte le nombre de voyelles dans une chaîne.

```python
def compter_voyelles(chaine):
    return sum(1 for char in chaine if char in 'aeiouAEIOU')
```

---

## Exercice 11: Calculer la moyenne

**Consigne :** Écrivez des tests pour une fonction qui calcule la moyenne d'une liste de nombres.

```python
def moyenne(liste):
    if not liste:
        return 0
    return sum(liste) / len(liste)
```

---

## Exercice 12: Inverser une chaîne

**Consigne :** Testez la fonction qui inverse une chaîne de caractères.

```python
def inverser_chaine(chaine):
    return chaine[::-1]
```

---

## Exercice 13: Générateur de Fibonacci

**Consigne :** Testez un générateur de nombres de Fibonacci.

```python
def generateur_fibonacci(n):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b
```

---

## Exercice 14: Fonction de tri rapide

**Consigne :** Testez une fonction qui implémente l'algorithme de tri rapide (quicksort).

```python
def tri_rapide(liste):
    if len(liste) <= 1:
        return liste
    pivot = liste[len(liste) // 2]
    gauche = [x for x in liste if x < pivot]
    milieu = [x for x in liste if x == pivot]
    droite = [x for x in liste if x > pivot]
    return tri_rapide(gauche) + milieu + tri_rapide(droite)
```

---

## Exercice 15: Validation d'un mot de passe

**Consigne :** Écrivez des tests pour une fonction qui valide un mot de passe selon certaines règles.

```python
def est_valide_mot_de_passe(mot_de_passe):
    return (len(mot_de_passe) >= 8 and 
            any(c.isdigit() for c in mot_de_passe) and 
            any(c.isupper() for c in mot_de_passe))
```
