mezczyzna(marek).
mezczyzna(szymon).
kobieta(ewa).
kobieta(alicja).

wlosy(marek, ciemne).
wlosy(szymon, jasne).
wlosy(ewa, jasne).
wlosy(alicja, ciemne).

oczy(marek, zielone).
oczy(szymon, zielone).
oczy(alicja, brazowe).
oczy(ewa, niebieskie).

nie_pali(marek).
nie_pali(szymon).
nie_pali(alicja).

dzialkowiec(ewa).
dzialkowiec(szymon).

sportowiec(alicja).

lubi(alicja, X):- mezczyzna(X), wlosy(alicja, Kolor), wlosy(X, Kolor).
lubi(szymon, X):- nie_pali(X), dzialkowiec(X).


silnia(0, 1).
silnia(N, Wynik):-N>0, N1 is N-1, silnia(N1, W1), Wynik is N * W1.

fib(0, 1).
fib(1, 1).
fib(N, Wynik):-N>0, N1 is N-1, N2 is N-2, fib(N1, W1), fib(N2, W2), Wynik is W1 + W2.

suma(0, 0).
suma(N, Wynik):-N>0, N1 is N-1, suma(N1, W1), Wynik is N + W1.

potega(_, 0, 1).
potega(Liczba, Wykladnik, Wynik):- Wykladnik>0, N1 is Wykladnik-1, potega(Liczba, N1, W1), Wynik is Liczba * W1.

krotnosc(_, 0, 0).
krotnosc(A, B, Wynik):-B>0, B1 is B-1, krotnosc(A, B1, W1), Wynik is A + W1.

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


rodzenstwo(X, Y):-rodzic(Z, X), rodzic(Z, A), X \= Y.
siostra(X, Y):-rodzenstwo(X,Y), kobieta(X).
brat(X, Y):-rodzenstwo(X, Y), mezczyzna(X).
corka(X, Y):-rodzic(Y, X), kobieta(X).
syn(X, Y):-rodzic(Y, X), mezczyzna(X).



def(X, Y, Wynik):-Wynik is X**Y.

wiekszy(X, Y, X):-X > Y, !.
wiekszy(_, Y, Y).


btw(A, B, C):-B =< A, A =< C, !.
btw(A, B, C):-C =<A, A=< B.


