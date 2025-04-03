% [1,2,3] H-głowa listy, T -ogon listy, H -1, T-[2,3], lista pusta []
% lista składająca sie tylko z [5], H-5, T-[] dalszy ciag w
% zeszycie
kwadrat_listy([],[]).

kwadrat_listy([H1|T1],[H2|T2]):-
                H2 is H1*H1, 
                kwadrat_listy(T1,T2).

podwojenie([],[]).

podwojenie([H1|T1],[H1,H1|T2]):-
                              podwojenie(T1,T2).

lista_wieksza_o3([],[]).

lista_wieksza_o3([H1|T1],[H2|T2]):-
H2 is H1+3, lista_wieksza_o3(T1,T2).

lista_razy5([],[]).

lista_razy5([H1|T1],[H2|T2]):-
H2 is H1*5, lista_razy5(T1,T2).

liczba_elem([],0).

liczba_elem([_|T],N):-
liczba_elem(T,M),N is M+1.

