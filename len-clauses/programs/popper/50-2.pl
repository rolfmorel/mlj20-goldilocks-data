f(A,B) :- zero(B),empty(A).
f(A,B) :- tail(A,D),f(D,C),increment(C,B).
%time,45.107219219207764
