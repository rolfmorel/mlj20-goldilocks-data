f(A,B) :- move_down(B,A).
f(A,B) :- move_down(C,A),f(C,B).
%time,4.271921873092651