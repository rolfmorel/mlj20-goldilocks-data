f(A,B) :- head(A,B).
f(A,B) :- tail(A,C),f(C,B).
%NUMPROGS: 65
%TIME: 0.4513001170000024
%SOLVING: 0.10408797000003744
%GROUNDING: 0.12931013300000416

