na(a, c).
na(b, c).
na(c, d).
na(e, a).
na(f, d).

% Y jest na X
pod(X, Y):-na(Y,X).

%Y jest na X i X jest na Z wiec X jest pomiedzy
miedzy(X, Y, Z):-na(Y, X), na(X, Z).

%Z jest na X i X jest na Y wiec X jest pomiedzy
miedzy(X, Z, Y):-na(Z, X), na(X, Y).

