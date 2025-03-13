%Program:dziadek

ojciec(karol,jan).
ojciec(karol,adam).

dziecko(tomasz,jan).
dziecko(piotr,adam).

dziadek(karol,marek).
dziadek(X,Y):-ojciec(X,Z).
dziadek(X,Y):-dziecko(Y,Z).