#maxv(1).

%% primorial6
%% num(0..30030).

%% primorial7
num(0..510511).
%% #constant(num, 0..510510).

#modeh(1,f(var(num)), (positive)).
#modeb(1,div1(var(num)), (positive)).
#modeb(1,div2(var(num)), (positive)).
#modeb(1,div3(var(num)), (positive)).
#modeb(1,div4(var(num)), (positive)).
#modeb(1,div5(var(num)), (positive)).
#modeb(1,div6(var(num)), (positive)).
#modeb(1,div7(var(num)), (positive)).
#modeb(1,div8(var(num)), (positive)).
#modeb(1,div9(var(num)), (positive)).
#modeb(1,div10(var(num)), (positive)).
#modeb(1,div11(var(num)), (positive)).
#modeb(1,div12(var(num)), (positive)).
#modeb(1,div13(var(num)), (positive)).
#modeb(1,div14(var(num)), (positive)).
#modeb(1,div15(var(num)), (positive)).
#modeb(1,div16(var(num)), (positive)).
#modeb(1,div17(var(num)), (positive)).
#modeb(1,div18(var(num)), (positive)).
#modeb(1,div19(var(num)), (positive)).
#modeb(1,div20(var(num)), (positive)).
#modeb(1,div21(var(num)), (positive)).
#modeb(1,div22(var(num)), (positive)).
#modeb(1,div23(var(num)), (positive)).
#modeb(1,div24(var(num)), (positive)).
#modeb(1,div25(var(num)), (positive)).
#modeb(1,div26(var(num)), (positive)).
#modeb(1,div27(var(num)), (positive)).
#modeb(1,div28(var(num)), (positive)).
#modeb(1,div29(var(num)), (positive)).
#modeb(1,div30(var(num)), (positive)).
#modeb(1,div31(var(num)), (positive)).
#modeb(1,div32(var(num)), (positive)).
#modeb(1,div33(var(num)), (positive)).
#modeb(1,div34(var(num)), (positive)).
#modeb(1,div35(var(num)), (positive)).
#modeb(1,div36(var(num)), (positive)).
#modeb(1,div37(var(num)), (positive)).
#modeb(1,div38(var(num)), (positive)).
#modeb(1,div39(var(num)), (positive)).
#modeb(1,div40(var(num)), (positive)).
#modeb(1,div41(var(num)), (positive)).
#modeb(1,div42(var(num)), (positive)).
#modeb(1,div43(var(num)), (positive)).
#modeb(1,div44(var(num)), (positive)).
#modeb(1,div45(var(num)), (positive)).
#modeb(1,div46(var(num)), (positive)).
#modeb(1,div47(var(num)), (positive)).
#modeb(1,div48(var(num)), (positive)).
#modeb(1,div49(var(num)), (positive)).
#modeb(1,div50(var(num)), (positive)).
#modeb(1,div51(var(num)), (positive)).
#modeb(1,div52(var(num)), (positive)).
#modeb(1,div53(var(num)), (positive)).
#modeb(1,div54(var(num)), (positive)).
#modeb(1,div55(var(num)), (positive)).
#modeb(1,div56(var(num)), (positive)).
#modeb(1,div57(var(num)), (positive)).
#modeb(1,div58(var(num)), (positive)).
#modeb(1,div59(var(num)), (positive)).
#modeb(1,div60(var(num)), (positive)).
#modeb(1,div61(var(num)), (positive)).
#modeb(1,div62(var(num)), (positive)).
#modeb(1,div63(var(num)), (positive)).
#modeb(1,div64(var(num)), (positive)).
#modeb(1,div65(var(num)), (positive)).
#modeb(1,div66(var(num)), (positive)).
#modeb(1,div67(var(num)), (positive)).
#modeb(1,div68(var(num)), (positive)).
#modeb(1,div69(var(num)), (positive)).
#modeb(1,div70(var(num)), (positive)).
#modeb(1,div71(var(num)), (positive)).
#modeb(1,div72(var(num)), (positive)).
#modeb(1,div73(var(num)), (positive)).
#modeb(1,div74(var(num)), (positive)).
#modeb(1,div75(var(num)), (positive)).
#modeb(1,div76(var(num)), (positive)).
#modeb(1,div77(var(num)), (positive)).
#modeb(1,div78(var(num)), (positive)).
#modeb(1,div79(var(num)), (positive)).
#modeb(1,div80(var(num)), (positive)).
#modeb(1,div81(var(num)), (positive)).
#modeb(1,div82(var(num)), (positive)).
#modeb(1,div83(var(num)), (positive)).
#modeb(1,div84(var(num)), (positive)).
#modeb(1,div85(var(num)), (positive)).
#modeb(1,div86(var(num)), (positive)).
#modeb(1,div87(var(num)), (positive)).
#modeb(1,div88(var(num)), (positive)).
#modeb(1,div89(var(num)), (positive)).
#modeb(1,div90(var(num)), (positive)).
#modeb(1,div91(var(num)), (positive)).
#modeb(1,div92(var(num)), (positive)).
#modeb(1,div93(var(num)), (positive)).
#modeb(1,div94(var(num)), (positive)).
#modeb(1,div95(var(num)), (positive)).
#modeb(1,div96(var(num)), (positive)).
#modeb(1,div97(var(num)), (positive)).
#modeb(1,div98(var(num)), (positive)).
#modeb(1,div99(var(num)), (positive)).
#modeb(1,div100(var(num)), (positive)).

div1(A):- num(A), 0 = 1.
div2(A):- num(A), A \ 2 = 0.
div3(A):- num(A), A \ 3 = 0.
div4(A):- num(A), 0 = 1.
div5(A):- num(A), A \ 5 = 0.
div6(A):- num(A), 0 = 1.
div7(A):- num(A), A \ 7 = 0.
div8(A):- num(A), 0 = 1.
div9(A):- num(A), 0 = 1.
div10(A):- num(A), 0 = 1.
div11(A):- num(A), A \ 11 = 0.
div12(A):- num(A), 0 = 1.
div13(A):- num(A), A \ 13 = 0.
div14(A):- num(A), 0 = 1.
div15(A):- num(A), 0 = 1.
div16(A):- num(A), 0 = 1.
div17(A):- num(A), A \ 17 = 0.
div18(A):- num(A), 0 = 1.
div19(A):- num(A), A \ 19 = 0.
div20(A):- num(A), 0 = 1.
div21(A):- num(A), 0 = 1.
div22(A):- num(A), 0 = 1.
div23(A):- num(A), A \ 23 = 0.
div24(A):- num(A), 0 = 1.
div25(A):- num(A), 0 = 1.
div26(A):- num(A), 0 = 1.
div27(A):- num(A), 0 = 1.
div28(A):- num(A), 0 = 1.
div29(A):- num(A), A \ 29 = 0.
div30(A):- num(A), 0 = 1.
div31(A):- num(A), A \ 31 = 0.
div32(A):- num(A), 0 = 1.
div33(A):- num(A), 0 = 1.
div34(A):- num(A), 0 = 1.
div35(A):- num(A), 0 = 1.
div36(A):- num(A), 0 = 1.
div37(A):- num(A), A \ 37 = 0.
div38(A):- num(A), 0 = 1.
div39(A):- num(A), 0 = 1.
div40(A):- num(A), 0 = 1.
div41(A):- num(A), A \ 41 = 0.
div42(A):- num(A), 0 = 1.
div43(A):- num(A), A \ 43 = 0.
div44(A):- num(A), 0 = 1.
div45(A):- num(A), 0 = 1.
div46(A):- num(A), 0 = 1.
div47(A):- num(A), A \ 47 = 0.
div48(A):- num(A), 0 = 1.
div49(A):- num(A), 0 = 1.
div50(A):- num(A), 0 = 1.
div51(A):- num(A), 0 = 1.
div52(A):- num(A), 0 = 1.
div53(A):- num(A), A \ 53 = 0.
div54(A):- num(A), 0 = 1.
div55(A):- num(A), 0 = 1.
div56(A):- num(A), 0 = 1.
div57(A):- num(A), 0 = 1.
div58(A):- num(A), 0 = 1.
div59(A):- num(A), A \ 59 = 0.
div60(A):- num(A), 0 = 1.
div61(A):- num(A), A \ 61 = 0.
div62(A):- num(A), 0 = 1.
div63(A):- num(A), 0 = 1.
div64(A):- num(A), 0 = 1.
div65(A):- num(A), 0 = 1.
div66(A):- num(A), 0 = 1.
div67(A):- num(A), A \ 67 = 0.
div68(A):- num(A), 0 = 1.
div69(A):- num(A), 0 = 1.
div70(A):- num(A), 0 = 1.
div71(A):- num(A), A \ 71 = 0.
div72(A):- num(A), 0 = 1.
div73(A):- num(A), A \ 73 = 0.
div74(A):- num(A), 0 = 1.
div75(A):- num(A), 0 = 1.
div76(A):- num(A), 0 = 1.
div77(A):- num(A), 0 = 1.
div78(A):- num(A), 0 = 1.
div79(A):- num(A), A \ 79 = 0.
div80(A):- num(A), 0 = 1.
div81(A):- num(A), 0 = 1.
div82(A):- num(A), 0 = 1.
div83(A):- num(A), A \ 83 = 0.
div84(A):- num(A), 0 = 1.
div85(A):- num(A), 0 = 1.
div86(A):- num(A), 0 = 1.
div87(A):- num(A), 0 = 1.
div88(A):- num(A), 0 = 1.
div89(A):- num(A), A \ 89 = 0.
div90(A):- num(A), 0 = 1.
div91(A):- num(A), 0 = 1.
div92(A):- num(A), 0 = 1.
div93(A):- num(A), 0 = 1.
div94(A):- num(A), 0 = 1.
div95(A):- num(A), 0 = 1.
div96(A):- num(A), 0 = 1.
div97(A):- num(A), A \ 97 = 0.
div98(A):- num(A), 0 = 1.
div99(A):- num(A), 0 = 1.
div100(A):- num(A), 0 = 1.