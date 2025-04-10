%konkat(L1,L2,L3)
%spełniony, gdy L3 jest połączeniem list L1 i L2
%-------------
%rekurencja ze wzgledu a liste L1:
%waruek kończący rekurencję: połączenie listy
%pustej z listą L daje listę L
konkat([],L,L).

%rekurencja:
%głowa listy L3 jest głową listy L1
%ogon listy L3 jest połączeniem ogona listy L1
%z listą L2
konkat([H1|T1],L2,[H1|T3]):-
konkat(T1,L2,T3).

/*
?- konkat([3,4],[c,4,b],X).
X=[3,4,c,4,b).

Podziel  listę na części
*/

odwrotna_lista([],[]).
odwrotna_lista([H1|T1],L2):-
odwrotna_lista(T1,T2),
konkat(T2,[H1],L2).

element(E,[E|_]).
element(E,[_|T]):-element(E,T).




%wywołanie predykatów dla każdego elementu
%predykaty

%dodatni(X)
%spełniony, gdzy X liczbą dodatnią

dodatni(X):-X>0.

%lista_dodatnia(L)
%spełniony, gdy wszystkie elementy listy sa dodatnie

lista_dodatnia(L):-maplist(dodatni,L).

wieksza_od(X,Y):-Y>X.

wiekszy_od_lista(X,L):-maplist(wiekszy_od(X),L).

wieksza_o1(X,Y):-Y is X+1.
wieksza_o1_lista(L1,L2):-maplist(wieksza_o1,L1,L2).


