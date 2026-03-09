% Zad1
fib(1, 1).
fib(2, 1).


fib(N, Wynik):- N > 1, N1 is N-1, N2 is N-2, fib(N1, W1), fib(N2, W2), Wynik is W1 + W2.

% Zad2
potega(A, 0, 1).

potega(A, N, Wynik):- N >= 0, N1 is N - 1, potega(A, N1, W), Wynik is A * W.


% Zad3
krotnosc(0, L, 0).

krotnosc(N, L, Wynik):- N>=0, N1 is N-1, krotnosc(N1, L, W), Wynik is L + W.

% Zad4
kobieta(maria).
kobieta(anna).
kobieta(helena).
kobieta(katarzyna).
kobieta(dorota).
kobieta(ola).
kobieta(ewa).
kobieta(julia).
kobieta(magda).
kobieta(zosia).
kobieta(monika).
kobieta(lena).
kobieta(natalia).

mezczyzna(jan).
mezczyzna(piotr).
mezczyzna(tomasz).
mezczyzna(andrzej).
mezczyzna(pawel).
mezczyzna(marek).
mezczyzna(michal).
mezczyzna(adam).
mezczyzna(karol).
mezczyzna(filip).
mezczyzna(robert).
mezczyzna(jakub).

rodzic(jan, piotr).
rodzic(maria, piotr).
rodzic(jan, anna).
rodzic(maria, anna).
rodzic(jan, tomasz).
rodzic(maria, tomasz).
rodzic(andrzej, katarzyna).
rodzic(helena, katarzyna).
rodzic(andrzej, pawel).
rodzic(helena, pawel).
rodzic(andrzej, dorota).
rodzic(helena, dorota).
rodzic(piotr, ola).

rodzic(katarzyna, ola).
rodzic(piotr, marek).
rodzic(katarzyna, marek).
rodzic(piotr, ewa).
rodzic(katarzyna, ewa).
rodzic(anna, julia).
rodzic(michal, julia).
rodzic(anna, adam).
rodzic(michal, adam).
rodzic(tomasz, karol).
rodzic(magda, karol).
rodzic(tomasz, zosia).
rodzic(magda, zosia).
rodzic(pawel, filip).
rodzic(monika, filip).
rodzic(pawel, lena).
rodzic(monika, lena).
rodzic(dorota, natalia).
rodzic(robert, natalia).
rodzic(dorota, jakub).
rodzic(robert, jakub).

rodzenstwo(X, Y):- rodzic(Z, X), rodzic(Z, Y), X \= Y.
siostra(X, Y):- rodzenstwo(X, Y), kobieta(X).
brat(X, Y):- rodzenstwo(X, Y), mezczyzna(X).
corka(X, Y):- rodzic(Y, X), kobieta(X).
syn(X, Y):- rodzic(Y, X), mezczyzna(X).
dziadek(X, Y):- rodzic(X, Z), rodzic(Z, Y), mezczyzna(X).
babcia(X, Y):- rodzic(X, Z), rodzic(Z, Y), kobieta(X).











