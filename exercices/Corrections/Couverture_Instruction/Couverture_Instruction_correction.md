# Tests de couverture d'instruction - Correction

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

**Correction :**

```python
assert maximum(2, 3) == 3
assert maximum(5, 4) == 5
```

---

## Exercice 2: Vérification de l'âge

**Consigne :** Testez la fonction qui vérifie si une personne est majeure.

```python
def est_majeur(age):
    return age >= 18
```

**Correction :**

```python
assert est_majeur(17) == False
assert est_majeur(18) == True
```

---

## Exercice 3: Conversion Celsius à Fahrenheit

**Consigne :** Testez la conversion de Celsius à Fahrenheit.

```python
def celsius_vers_fahrenheit(celsius):
    return (celsius * 9/5) + 32
```

**Correction :**

```python
assert celsius_vers_fahrenheit(0) == 32
assert celsius_vers_fahrenheit(100) == 212
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

**Correction :**

```python
assert compte_a_rebours(5) == [5, 4, 3, 2, 1, 0]
assert compte_a_rebours(0) == [0]
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

**Correction :**

```python
assert factorielle(0) == 1
assert factorielle(5) == 120
try:
    factorielle(-1)
except ValueError:
    assert True  # Test passé
```

---

## Exercice 6: Calculer la somme d'une liste

**Consigne :** Testez la fonction qui calcule la somme d'une liste de nombres.

```python
def somme(liste):
    return sum(liste)
```

**Correction :**

```python
assert somme([1, 2, 3]) == 6
assert somme([]) == 0
```

---

## Exercice 7: Vérification de palindrome

**Consigne :** Écrivez des tests pour vérifier si une chaîne est un palindrome.

```python
def est_palindrome(chaine):
    return chaine == chaine[::-1]
```

**Correction :**

```python
assert est_palindrome("radar") == True
assert est_palindrome("hello") == False
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

**Correction :**

```python
assert tri_selection([64, 25, 12, 22, 11]) == [11, 12, 22, 25, 64]
assert tri_selection([]) == []
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

**Correction :**

```python
assert recherche_binaire([1, 2, 3, 4, 5], 3) == 2
assert recherche_binaire([1, 2, 3, 4, 5], 6) == -1
```

---

## Exercice 10: Compter les voyelles

**Consigne :** Testez la fonction qui compte le nombre de voyelles dans une chaîne.

```python
def compter_voyelles(chaine):
    return sum(1 for char in chaine if char in 'aeiouAEIOU')
```

**Correction :**

```python
assert compter_voyelles("Bonjour") == 3
assert compter_voyelles("xyz") == 0
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

**Correction :**

```python
assert moyenne([1, 2, 3]) == 2
assert moyenne([]) == 0
```

---

## Exercice 12: Inverser une chaîne

**Consigne :** Testez la fonction qui inverse une chaîne de caractères.

```python
def inverser_chaine(chaine):
    return chaine[::-1]
```

**Correction :**

```python
assert inverser_chaine("hello") == "olleh"
assert inverser_chaine("") == ""
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

**Correction :**

```python
assert list(generateur_fibonacci(5)) == [0, 1, 1, 2, 3]
assert list(generateur_fibonacci(0)) == []
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

**Correction :**

```python
assert tri_rapide([3, 6, 8, 10, 1, 2, 1]) == [1, 1, 2, 3, 6, 8, 10]
assert tri_rapide([]) == []
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

**Correction :**

```python
assert est_valide_mot_de_passe("Abc12345") == True
assert est_valide_mot_de_passe("abc") == False
assert est_valide_mot_de_passe("ABCDEFG") == False
```
