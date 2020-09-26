#maxv(1).

%% primorial6
%% num(0..30030).

%% primorial7
num(0..510511).
%% #constant(num, 0..510510).

#modeh(1,f(var(num)), (positive)).
#modeb(1,div2(var(num)), (positive)).
#modeb(1,div3(var(num)), (positive)).
#modeb(1,div5(var(num)), (positive)).
#modeb(1,div7(var(num)), (positive)).
#modeb(1,div11(var(num)), (positive)).
#modeb(1,div13(var(num)), (positive)).
#modeb(1,div17(var(num)), (positive)).
#modeb(1,div19(var(num)), (positive)).
#modeb(1,div23(var(num)), (positive)).
#modeb(1,div29(var(num)), (positive)).
#modeb(1,div31(var(num)), (positive)).
#modeb(1,div37(var(num)), (positive)).
#modeb(1,div41(var(num)), (positive)).
#modeb(1,div43(var(num)), (positive)).
#modeb(1,div47(var(num)), (positive)).
#modeb(1,div53(var(num)), (positive)).
#modeb(1,div59(var(num)), (positive)).
#modeb(1,div61(var(num)), (positive)).
#modeb(1,div67(var(num)), (positive)).
#modeb(1,div71(var(num)), (positive)).
#modeb(1,div73(var(num)), (positive)).
#modeb(1,div79(var(num)), (positive)).
#modeb(1,div83(var(num)), (positive)).
#modeb(1,div89(var(num)), (positive)).
#modeb(1,div97(var(num)), (positive)).

div2(A):- num(A), A \ 2 = 0.
div3(A):- num(A), A \ 3 = 0.
div5(A):- num(A), A \ 5 = 0.
div7(A):- num(A), A \ 7 = 0.
div11(A):- num(A), A \ 11 = 0.
div13(A):- num(A), A \ 13 = 0.
div17(A):- num(A), A \ 17 = 0.
div19(A):- num(A), A \ 19 = 0.
div23(A):- num(A), A \ 23 = 0.
div29(A):- num(A), A \ 29 = 0.
div31(A):- num(A), A \ 31 = 0.
div37(A):- num(A), A \ 37 = 0.
div41(A):- num(A), A \ 41 = 0.
div43(A):- num(A), A \ 43 = 0.
div47(A):- num(A), A \ 47 = 0.
div53(A):- num(A), A \ 53 = 0.
div59(A):- num(A), A \ 59 = 0.
div61(A):- num(A), A \ 61 = 0.
div67(A):- num(A), A \ 67 = 0.
div71(A):- num(A), A \ 71 = 0.
div73(A):- num(A), A \ 73 = 0.
div79(A):- num(A), A \ 79 = 0.
div83(A):- num(A), A \ 83 = 0.
div89(A):- num(A), A \ 89 = 0.
div97(A):- num(A), A \ 97 = 0.
