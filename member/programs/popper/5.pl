f(A,B) :- head(A,B).
f(A,B) :- tail(A,C),f(C,B).
%NUMPROGS: 65
%TIME: 0.4547101060000074
%SOLVING: 0.10634531000005154
%GROUNDING: 0.12839667099994756

