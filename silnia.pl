% 0! = 1, dla n>0 n! = n*(n-1)!
%silnia(N,S).
silnia(N,S):-N>0, N1 is N-1, silnia(N1,S1), S is N *S1.