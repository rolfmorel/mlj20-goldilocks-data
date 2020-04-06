f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- tail(A,C),element(C,B),head(A,B).
%time,21.85593008995056
