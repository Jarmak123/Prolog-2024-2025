na(d,c).
na(c,a).
na(c,b).
na(a,e).
na(b,g).
%na(X,Y).
nad(X,Y):-na(X,Y).
nad(X,Y):-na(X,Z),nad(Z,Y).