f(A) :- empty(A).
f(A) :- head(A,C),tail(A,B),even(C),f(B).
%NUMPROGS: 2431
%TIME: 159.27378344499994
%SOLVING: 64.44169448699586
%GROUNDING: 88.76167566800325

