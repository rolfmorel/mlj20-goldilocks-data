
f([6,7,10,16,16,17,17,19,21,22,25,25,27,30,31,35,36,37,41,46,47,49,50,54,56,56,58,59,60,63,66,66,79,83,90,92,97,98,98]).
f(A):-tail(A,B),tail(B,C),head(C,D),tail(C,E),head(E,D).
f([3,11,17,20,39,49,49,53,54,70,76,90,94,97,99]).
f([3,57,67,73,98]).
f([22,25,29,37,92]).
f(F):-head(F,G),tail(F,H),head(H,I),geq(I,G),even(I).

%TIME: 1.048924207687378