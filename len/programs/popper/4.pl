f(A,B) :- zero(B),empty(A).
f(A,B) :- tail(A,D),f(D,C),increment(C,B).
%NUMPROGS: 644
%TIME: 13.199067702
%SOLVING: 3.0674541069998966
%GROUNDING: 8.379797867999955

