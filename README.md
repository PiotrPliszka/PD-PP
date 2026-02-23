# Programowanie Deklaratywne - Paradygmaty Programowania

Repozytorium zawiera rozwiązania zadań laboratoryjnych z przedmiotu **Programowanie Deklaratywne** (język Prolog). 
Zadania opierają się na materiałach dostarczonych przez prowadzącego: mgr. inż. Adama Zalewskiego.

---

## 🧪 Laboratorium 01
### 📋 Treść zadań do wykonania:

* **Zadanie 1: Klasyfikacja termów**
  Na podstawie dostępnych materiałów należało zklasyfikować podane termy (np. `pies`, `lubi(pies, kot)`, `1.12e2`, `kobieta(Alicja)`). Weryfikacja typu termu opiera się na wbudowanych predykatach takich jak: `var/1`, `nonvar/1`, `integer/1`, `float/1`, `rational/1`, `number/1`, `atom/1`, `string/1`, `compound/1` oraz `ground/1`.

* **Zadanie 2: Baza wiedzy (Fakty)**
  Zapisanie podanych zdań logicznych w postaci faktów w Prologu. Baza danych opisuje grupę osób (Marek, Ewa, Szymon, Alicja) określając ich:
  * płeć (mężczyzna/kobieta),
  * wygląd (kolor włosów i oczu),
  * stosunek do palenia (osoba niepaląca),
  * cechy dodatkowe (sportowiec, działkowiec).

* **Zadanie 3: Reguły logiki**
  Zapisanie w Prologu przedstawionych reguł określających relacje. Należało zdefiniować kogo lubi dana osoba na podstawie jej preferencji:
  * Alicja lubi mężczyzn z tym samym odcieniem włosów co ona.
  * Szymon lubi osoby z tym samym stosunkiem do palenia, będące działkowcami.
  * Ewa lubi osoby mające taki sam stosunek do palenia lub będące sportowcami.
  * Marek lubi mężczyzn z ciemnymi włosami i będących sportowcami LUB kobiety z jasnymi włosami będące działkowcami.
  * Reguła ogólna: Każda osoba lubi drugą osobę, która ma ten sam odcień włosów i inny kolor oczu lub inny odcień włosów i ten sam kolor oczu.

* **Zadanie 4: Wnioskowanie i zapytania**
  Na podstawie poprzednich zadań należało zapisać odpowiedni kod i sprawdzić w konsoli odpowiedzi na pytania:
  * *Kto jest sportowcem?*
  * *Kto ma zielone oczy i jest działkowcem?*
  * *Kto ma jasne włosy i jest sportowcem?*
  * *Kto ma ciemne włosy lub jest działkowcem?*
  * *Kto ma zielone oczy i nie pali lub ma brązowe oczy?*

---

*(Kolejne laboratoria będą dodawane poniżej)*

---
