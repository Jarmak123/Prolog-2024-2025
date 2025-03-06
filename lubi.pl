% PROGRAM: klocki_1
% Baza wiedzy o układzie klocków
% Definiowane predykaty:
%           na/2
%============================

% na(X,Y)
% opis: spełniony, gdy klocek x leży
% bezpośrednio na klocku Y
% -----------------------------------------------na/2
	   jaorsz(ola).
           jarosz(ewa).
           jarosz(jan).
           jarosz(pawel).
           niepalacy(ola).
           niepalacy(ewa).
           niepalacy(jan).
           czyta(ola).
           czyta(iza).
           czyta(piotr).
           sport(ola).
           sport(jan).
           sport(piotr).
           sport(pawel).
           lubi(ola,X):-jarosz(X),sport(X).
	   lubi(ewa,X):-jarosz(X),niepalacy(X).
	   lubi(iza,X):-czyta(X).
	   lubi(iza,X):-sport(X),niepalacy(X).
	   lubi(jan,X):-sport(X).
	   lubi(piotr,X):-sport(X),jarosz(X).
	   lubi(piotr,X):-czyta(X).
	   lubi(pawel,X):-jarosz(X),sport(X),czyta(X).
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
