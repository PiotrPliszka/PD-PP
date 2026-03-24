ocena(Punkty, bardzo_dobry):- Punkty>=90, !.
ocena(Punkty, dobry_plus):- Punkty>=80, !.
ocena(Punkty, dobry):- Punkty>=70, !.
ocena(Punkty, dostateczny_plus):-Punkty>=60, !.
ocena(Punkty, dostateczny):-Punkty>=50, !.
ocena(Punkty, niedostateczny):-Punkty<50.


max(X, Y, X):- X >= Y, !.
max(_, Y, Y).

min(X, Y, X):- X =< Y, !.
min(_, Y, Y).

wiekszy(X, Y, X):- X > Y, !.
wiekszy(_, Y, Y).
mniejszy(X, Y, X):- X < Y, !.
mniejszy(_, Y, Y).

pole_trojkata(A, H, Pole):- Pole is (A * H) / 2.
pole_trojkata(A, B, C, Pole):-
    P is (A + B + C) / 2,
    Pole is sqrt(P * (P - A) * (P - B) * (P - C)).
obwod_trojkata(A, B, C, Obwod):- Obwod is A + B + C.

pole_prostokata(A, B, Pole):- Pole is A * B.
obwod_prostokata(A, B, Obwod):- Obwod is (A * 2) + (B * 2).

btw(A, B, C) :- B =< A, A =< C, !.
btw(A, B, C) :- C =< A, A =< B.
