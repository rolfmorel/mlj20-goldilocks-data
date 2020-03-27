:-['data/train/1'].
:-['bk'].

f(A):-head(A,B),even(B),tail(A,C),head(C,D),even(D).
f(A):-head(A,B),odd(B),tail(A,C),head(C,D),odd(D).


a:-
    forall(pos(A),call(A)).