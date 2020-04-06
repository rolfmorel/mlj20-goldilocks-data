f(A) :- head(A,C),even(C),tail(A,B),f(B).
f(A) :- empty(A).
%time,4.542970895767212
