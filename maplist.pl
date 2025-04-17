% wieksza_lista(+L1,+L2)
%spełniony, gdy elementy listy L1 są wiekzse od L2
%L1=[x1,...,xn], L2=[y1,...,yn], xi>yi, i=1,...,n

wieksza_lista(L1,L2):-
maplist(wiekszy_od,L2,L1).

%wiekszy_od(X,Y)
%spełniony, gdy Y jest wieksze od X

wiekszy_od(X,Y):- Y>X.

%wiekszy_od_lista(+X,+L).
%spełniony, gdy wszystkie elementy listy L
%są wieksze od X

lista_mniejsza_o2(L1,L2):-
maplist(mniejsza_o2,L1,L2).

mniejsza_o2(X,Y):- Y is X-2.

%CUT CUT CUT CUT CUT CUT CUT CUT CUT CUT CUT CUT
%signum(x) -1 dla x<0, 0 dla x=0, 1 dla x>0.

signum(X,-1):- X<0, !.
signum(X,0):- X=0, !.
signum(X,1):- X>0, !.


