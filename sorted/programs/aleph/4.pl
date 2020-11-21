
f([2,6,9,16,21,21,24,28,29,30,36,43,46,46,48,49,53,53,56,59,67,67,68,79,87,93,94,98,101]).
f(A):-tail(A,B),tail(B,C),tail(C,D),tail(D,E),f(E).
f(F):-head(F,G),tail(F,H),head(H,I),decrement(I,J),decrement(J,G).
f(K):-tail(K,L),tail(L,M),f(M).
f(N):-tail(N,O),head(O,P),tail(O,Q),head(Q,P).

%TIME: 0.8429031372070312
