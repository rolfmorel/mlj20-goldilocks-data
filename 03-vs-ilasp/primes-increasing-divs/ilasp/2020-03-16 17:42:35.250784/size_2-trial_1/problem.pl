#maxv(1).

size_(2).

#pos(p1, {f(6)}, {}).
#neg(n2, {f(3)}, {}).
#neg(n3, {f(2)}, {}).

#modeh(1,f(var(num)), (positive)).
#modeb(1,div2(var(num)), (positive)).
#modeb(1,div3(var(num)), (positive)).
#modeb(1,bottom1(var(num)), (positive)).
#modeb(1,bottom2(var(num)), (positive)).
#modeb(1,bottom3(var(num)), (positive)).
#modeb(1,bottom4(var(num)), (positive)).
#modeb(1,bottom5(var(num)), (positive)).
#modeb(1,bottom6(var(num)), (positive)).
#modeb(1,bottom7(var(num)), (positive)).
#modeb(1,bottom8(var(num)), (positive)).
#modeb(1,bottom9(var(num)), (positive)).
#modeb(1,bottom10(var(num)), (positive)).

div2(A) :- A \ 2 = 0, num(A).
div3(A) :- A \ 3 = 0, num(A).
bottom1(A) :- num(A), 0 = 1.
bottom2(A) :- num(A), 0 = 1.
bottom3(A) :- num(A), 0 = 1.
bottom4(A) :- num(A), 0 = 1.
bottom5(A) :- num(A), 0 = 1.
bottom6(A) :- num(A), 0 = 1.
bottom7(A) :- num(A), 0 = 1.
bottom8(A) :- num(A), 0 = 1.
bottom9(A) :- num(A), 0 = 1.
bottom10(A) :- num(A), 0 = 1.
num(0).
num(1).
num(2).
num(3).
num(4).
num(5).
num(6).

