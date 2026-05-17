mezczyzna(marek).
mezczyzna(szymon).

kobieta(ewa).
kobieta(alicja).

wlosy(marek, ciemne).
wlosy(szymon, jasne).
wlosy(alicja, ciemne).
wlosy(ewa, jasne).

oczy(marek, zielone).
oczy(szymon, zielone).
oczy(alicja, brazowe).
oczy(ewa, niebieskie).

nie_pali(marek).
nie_pali(szymon).
nie_pali(alicja).

sportowiec(marek).
sportowiec(alicja).

dzialkowiec(ewa).
dzialkowiec(szymon).

lubi(alicja, Y):- mezczyzna(Y), wlosy(alicja, Kolor), wlosy(Y, Kolor).
lubi(szymon, Y):- nie_pali(Y), dzialkowiec(Y).
lubi(ewa, Y):-sportowiec(Y); nie_pali(Y).
lubi(marek, X):-mezczyzna(X), wlosy(X, ciemne), sportowiec(X);kobieta(X), wlosy(X, jasne), dzialkowiec(X).
lubi(X, Y):-wlosy(X, W1), wlosy(Y, W1), oczy(X, O1), oczy(X, O2), O1\==O2;oczy(X, O1), oczy(Y, O1), wlosy(X, W1), wlosy(Y, W2), W1\==W2.

fib(0, 0).
fib(1, 1).
fib(N, Wynik):-N>0, N1 is N-1, N2 is N-2, fib(N1, W1), fib(N2, W2), Wynik is W1 + W2.

potega(_, 0, 1).
potega(X, N, Wynik):-N>0, N1 is N-1, potega(X, N1, W1), Wynik is X * W1.

krotnosc(_, 0 ,0).
krotnosc(X, Y, Wynik):-Y>0, Y1 is Y-1, krotnosc(X, Y1, W1), Wynik is X + W1.

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

rodzenstwo(X, Y):-rodzic(Z,X), rodzic(Z, Y), X \== Y.
siostra(X, Y):-rodzenstwo(X,Y), kobieta(X).
brat(X, Y):-rodzenstwo(X,Y),mezczyzna(X).

na(a, c).
na(b, a).
na(c, d).
na(e, a).
na(f, d).

pod(X, Y):-na(Y, X).
miedzy(X, Y, Z):-na(Y, X), na(X, Z).

ocena(bardzo_dobra, X):-X>90, !.
ocena(dobra, X):-X>80, !.
ocena(dostateczna, X):-X>70, !.
ocena(niedostateczna, X):-X<70.

max(X, Y, X):-X>Y, !.
max(_, Y, Y).














