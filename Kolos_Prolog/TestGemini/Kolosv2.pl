czytelnik(adam, diuna).
czytelnik(ewa, fundacja).
czytelnik(marek, diuna).

czytaja_to_samo(X, Y):-czytelnik(X, Z), czytelnik(Y, Z), Y \== Z.

potega(_, 0, 1).
potega(Podstawa, Wykladnik, Wynik):-Wykladnik>0, N1 is Wykladnik-1, potega(Podstawa, N1, W1), Wynik is Podstawa * W1.

%Zad3
%f(d(c,p(d)), a(b, p(d)), c)

ocena(5, X):-X >= 90, !.
ocena(4, X):-X>=75, X<90, !.
ocena(3, X):-X>=50, X=<74, !.
ocena(2, X):-X<50.


%Zadania V2
na(a, c).
na(b, a).
na(c, d).
na(e, a).
na(f, d).

pod(X,Y):-na(Y, X).
nad(X, Y):-na(X, Z), nad(Z, Y).

%true
%true
%=

btw(A, B, C) :- B =< A, A =< C, !.
btw(A, B, C) :- C =< A, A =< B.


magiczny_ciag(1, 4).
magiczny_ciag(N, Wynik):-N>1, N1 is N-1, magiczny_ciag(N1, W1), Wynik is (W1*2)+5.

test_liczby(X, dodatnia):-X>0, !.
test_liczby(_, ujemna).


obwod_prostokata(A, B, Obw):-Obw is (A * 2) + (B * 2).
pole_prostokata(A, B, Pole):-Pole is A * B.

%true
%false
%false

na(a, c).
na(b, a).
na(c, d).

miedzy(X, Y, Z):-na(X, Y), na(Z, X).

%true
%true
%false


rodzic(jan, piotr).
rodzic(maria, piotr).
rodzic(jan, anna).
rodzic(maria, anna).

rodzenstwo(X, Y):-rodzic(Z, X), rodzic(Z, Y).

%1.Redo
%2.Exit
%3.Call
%4.Fail

pole_trojkata(A, H, Pole):-Pole is A * H.

iloczyn(A^N, A^M, Wynik):-Wynik is A^(N+M).
iloraz(A^N, A^M, Wynik):-Wynik is A^(N-M).

krotnosc(_, 0, 0).
krotnosc(A, B, Wynik):-B>0, B1 is B-1, krotnosc(A, B1, W1), Wynik is A+W1.

min(X, Y, X):- X<Y, !.
min(_, Y, Y).








