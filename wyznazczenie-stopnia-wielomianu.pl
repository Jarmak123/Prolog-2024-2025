%Wyznaczanie stoponia wielomianu
%o współczynnikach iczbowych

/*
Definicja: rekurencja strukturalna

1) st(x)=1
 st(c)=0, gdzie c - liczba

2) Stopnie wielomianów złóżonych określamy następująco:
st(-W)=st(W),
st(W1+W2)=st(W1-W2)=max(st(W1),st(W2)),
st(W1*W2)=st(W1)+st(W2),
st(W^N)=st(W)*N (N-liczba naturalna, N>1)

*/

stwielomian(X,X,1).
stwielomian(C,_,0):-number(C).

stwielomian(-W,X,N):-stwielomian(W,X,N).
stwielomian(W1+W2,X,N):-wielomian(W1,X,N1),wielomian(W2,X,N2),N is max(N1,N2).
stwielomian(W1*W2,X,N):-wielomian(W1,X,N1),wielomian(W2,X,N2),N is N1+N2.
stwielomian(W^K,X,N):-integer(K),K>1,stwielomian(W,X,Z),N is K*Z.