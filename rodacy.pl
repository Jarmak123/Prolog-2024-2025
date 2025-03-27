pochodzenie(martyna,polska).
pochodzenie(pawel,polska).
pochodzenie(john,anglia).
pochodzenie(mary,anglia).
pochodzenie(piotr):-pochodzenie(pawel,polska).

rodacy(X,Y):-pochodzenie(X,Z),pochodzenie(Y,Z).