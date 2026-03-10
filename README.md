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

## 🧪 Laboratorium 02
### 📋 Treść zadań do wykonania:

* **Zadanie 1: Unifikacja termów**
  Sprawdzenie w Prologu możliwości zunifikowania podanych par termów. Należało zweryfikować czy i na jakich warunkach (jakie podstawienia zmiennych) nastąpi unifikacja dla par:
  * `pies` oraz `pies`
  * `kot` oraz `pies`
  * `a(b)` oraz `b`
  * `a(b, B)` oraz `a(b, c)`
  * `punkt(X, Y, Z)` oraz `punkt(3, 4, 5)`
  * `litera("a")` oraz `slowo(litera)`
  * `lubi(adam, X)` oraz `lubi(Y, ewa)`
  * `kradnie(X, Y)` oraz `kradnie(adam, cenne(zloto))`

* **Zadanie 2: Operatory porównywania termów**
  Dla każdego z operatorów wchodzących w skład "Porównywania termów" należało wymyślić i zapisać po dwa przykłady: jeden ewaluujący się do prawdy (`true`), a drugi do fałszu (`false`).

* **Zadanie 3: Standardowy porządek termów i operator compare/3**
  Dla każdego operatora z kategorii "Standardowy porządek termów" należało napisać po dwa przykłady (jeden dający `true`, drugi `false`). Ponadto, dla wbudowanego predykatu `compare(Order, +Term1, +Term2)` należało podać po jednym przykładzie dla sytuacji, w których zmienna `Order` przyjmuje wynik `<`, `>` lub `=`.

* **Zadanie 4: Rozpisywanie unifikacji termów złożonych**
  Opierając się na omawianym na zajęciach przykładzie, należało "ręcznie" rozpisać proces unifikacji krok po kroku dla następujących par bardzo złożonych termów:
  * `f(X, a(b, Y), c)` z termem `f(d(Z, Y), a(A, p(d)) , Z)`
  * `punkt(x(Y, d), y(d, X), z(X, Y, Z))` z termem `punkt(Z, y(d, f), z(A, p(x, y), B))`

---

## 🧪 Laboratorium 03
### 📋 Treść zadań do wykonania:

* **Zadanie 1: Ciąg Fibonacciego**
  Za pomocą rekurencji należało zapisać regułę liczącą n-ty wyraz ciągu Fibonacciego.

* **Zadanie 2: Potęgowanie**
  Za pomocą rekurencji należało zapisać regułę obliczającą n-tą potęgę podanej liczby bazowej.

* **Zadanie 3: Wielokrotność**
  Za pomocą rekurencji należało zapisać regułę obliczającą n-tą krotność danej liczby.

* **Zadanie 4: Relacje rodzinne**
  Na podstawie dostarczonych na zajęciach relacji, należało napisać reguły określające powiązania rodzinne (kto jest czyim: rodzeństwem, siostrą, bratem, córką, synem, dziadkiem, babcią). W razie potrzeby zadanie wymagało samodzielnego dopisania brakujących faktów do bazy wiedzy.

---
