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

lubi(alicja, X):-mezczyzna(X), wlosy(X,ciemne).
lubi(szymon, X):-nie_pali(X), dzialkowiec(X).
lubi(ewa, X):-sportowiec(X);nie_pali(X).
lubi(marek, X):-mezczyzna(X), wlosy(X, ciemne), sportowiec(X);kobieta(X), wlosy(X, jasne), dzialkowiec(X).
lubi(X, Y):-wlosy(X, WK), wlosy(Y, WK), oczy(X, OK1), oczy(Y, OK2), OK1 =\= OK2 ; wlosy(X, WK1), wlosy(Y, WK2), WK1 =\= WK2, oczy(X, OK), oczy(Y, OK).









