#maxv(1).

size_(3).

#pos(p1, {f(30)}, {}).
#neg(n2, {f(15)}, {}).
#neg(n3, {f(10)}, {}).
#neg(n5, {f(6)}, {}).

#modeh(1,f(var(num)), (positive)).
#modeb(1,div2(var(num)), (positive)).
#modeb(1,div3(var(num)), (positive)).
#modeb(1,div5(var(num)), (positive)).
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
div5(A) :- A \ 5 = 0, num(A).
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
num(7).
num(8).
num(9).
num(10).
num(11).
num(12).
num(13).
num(14).
num(15).
num(16).
num(17).
num(18).
num(19).
num(20).
num(21).
num(22).
num(23).
num(24).
num(25).
num(26).
num(27).
num(28).
num(29).
num(30).

