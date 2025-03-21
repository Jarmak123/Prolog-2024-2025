% PROGRAM: klocki_1
% Baza wiedzy o układzie klocków
% Definiowane predykaty:
%           na/2
%============================

% na(X,Y)
% opis: spełniony, gdy klocek x leży
% bezpośrednio na klocku Y
% -----------------------------------------------na/2
           na(c,a).
           na(c,b).
           na(d,c).
           pod(X,Y):-na(Y,X).
	   miedzy(X,Y,Z):-na(Z,X),na(X,Y).
	   miedzy(X,Y,Z):-na(Y,X),na(X,Z).
% -----------------------------------------------na/2

/*
Informacje o budowie programu:
Program składa się z 6 klauzul.
Program zawiera 3 definicje relacji.
Są to relacje na/2, pod/2, i miedzy/3.
Definicja relacji na/2 składa się z 3 klauzul które są faktami.
Definicja relacji pod/2 składa się z 1 klauzuli która składa się z relacji na/2.
Definicja relacji miedzy
*/
