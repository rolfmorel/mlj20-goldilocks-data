%% metarules
:-['metagol'].
%% :- include("metagol").

metarule(unary1, [P,Q], [P,A], [[Q,A]]).
metarule(unary2, [P,Q,R], [P,A], [[Q,A],[R,A]]).



:- style_check(-singleton).

body_pred(div1/1).
body_pred(div2/1).
body_pred(div3/1).
body_pred(div4/1).
body_pred(div5/1).
body_pred(div6/1).
body_pred(div7/1).
body_pred(div8/1).
body_pred(div9/1).
body_pred(div10/1).
body_pred(div11/1).
body_pred(div12/1).
body_pred(div13/1).
body_pred(div14/1).
body_pred(div15/1).
body_pred(div16/1).
body_pred(div17/1).
body_pred(div18/1).
body_pred(div19/1).
body_pred(div20/1).
body_pred(div21/1).
body_pred(div22/1).
body_pred(div23/1).
body_pred(div24/1).
body_pred(div25/1).
body_pred(div26/1).
body_pred(div27/1).
body_pred(div28/1).
body_pred(div29/1).
body_pred(div30/1).
body_pred(div31/1).
body_pred(div32/1).
body_pred(div33/1).
body_pred(div34/1).
body_pred(div35/1).
body_pred(div36/1).
body_pred(div37/1).
body_pred(div38/1).
body_pred(div39/1).
body_pred(div40/1).
body_pred(div41/1).
body_pred(div42/1).
body_pred(div43/1).
body_pred(div44/1).
body_pred(div45/1).
body_pred(div46/1).
body_pred(div47/1).
body_pred(div48/1).
body_pred(div49/1).
body_pred(div50/1).
body_pred(div51/1).
body_pred(div52/1).
body_pred(div53/1).
body_pred(div54/1).
body_pred(div55/1).
body_pred(div56/1).
body_pred(div57/1).
body_pred(div58/1).
body_pred(div59/1).
body_pred(div60/1).
body_pred(div61/1).
body_pred(div62/1).
body_pred(div63/1).
body_pred(div64/1).
body_pred(div65/1).
body_pred(div66/1).
body_pred(div67/1).
body_pred(div68/1).
body_pred(div69/1).
body_pred(div70/1).
body_pred(div71/1).
body_pred(div72/1).
body_pred(div73/1).
body_pred(div74/1).
body_pred(div75/1).
body_pred(div76/1).
body_pred(div77/1).
body_pred(div78/1).
body_pred(div79/1).
body_pred(div80/1).
body_pred(div81/1).
body_pred(div82/1).
body_pred(div83/1).
body_pred(div84/1).
body_pred(div85/1).
body_pred(div86/1).
body_pred(div87/1).
body_pred(div88/1).
body_pred(div89/1).
body_pred(div90/1).
body_pred(div91/1).
body_pred(div92/1).
body_pred(div93/1).
body_pred(div94/1).
body_pred(div95/1).
body_pred(div96/1).
body_pred(div97/1).
body_pred(div98/1).
body_pred(div99/1).
body_pred(div100/1).

:- include("parameters.pl").

:- style_check(-singleton).

div1(_) :- false.
div2(A) :- 0 is mod(A,2).
div3(A) :- 0 is mod(A,3).
div4(_) :- false.
div5(A) :- 0 is mod(A,5).
div6(_) :- false.
div7(A) :- 0 is mod(A,7).
div8(_) :- false.
div9(_) :- false.
div10(_) :- false.
div11(A) :- 0 is mod(A,11).
div12(_) :- false.
div13(A) :- 0 is mod(A,13).
div14(_) :- false.
div15(_) :- false.
div16(_) :- false.
div17(A) :- 0 is mod(A,17).
div18(_) :- false.
div19(A) :- 0 is mod(A,19).
div20(_) :- false.
div21(_) :- false.
div22(_) :- false.
div23(A) :- 0 is mod(A,23).
div24(_) :- false.
div25(_) :- false.
div26(_) :- false.
div27(_) :- false.
div28(_) :- false.
div29(A) :- 0 is mod(A,29).
div30(_) :- false.
div31(A) :- 0 is mod(A,31).
div32(_) :- false.
div33(_) :- false.
div34(_) :- false.
div35(_) :- false.
div36(_) :- false.
div37(A) :- 0 is mod(A,37).
div38(_) :- false.
div39(_) :- false.
div40(_) :- false.
div41(A) :- 0 is mod(A,41).
div42(_) :- false.
div43(A) :- 0 is mod(A,43).
div44(_) :- false.
div45(_) :- false.
div46(_) :- false.
div47(A) :- 0 is mod(A,47).
div48(_) :- false.
div49(_) :- false.
div50(_) :- false.
div51(_) :- false.
div52(_) :- false.
div53(A) :- 0 is mod(A,53).
div54(_) :- false.
div55(_) :- false.
div56(_) :- false.
div57(_) :- false.
div58(_) :- false.
div59(A) :- 0 is mod(A,59).
div60(_) :- false.
div61(A) :- 0 is mod(A,61).
div62(_) :- false.
div63(_) :- false.
div64(_) :- false.
div65(_) :- false.
div66(_) :- false.
div67(A) :- 0 is mod(A,67).
div68(_) :- false.
div69(_) :- false.
div70(_) :- false.
div71(A) :- 0 is mod(A,71).
div72(_) :- false.
div73(A) :- 0 is mod(A,73).
div74(_) :- false.
div75(_) :- false.
div76(_) :- false.
div77(_) :- false.
div78(_) :- false.
div79(A) :- 0 is mod(A,79).
div80(_) :- false.
div81(_) :- false.
div82(_) :- false.
div83(A) :- 0 is mod(A,83).
div84(_) :- false.
div85(_) :- false.
div86(_) :- false.
div87(_) :- false.
div88(_) :- false.
div89(A) :- 0 is mod(A,89).
div90(_) :- false.
div91(_) :- false.
div92(_) :- false.
div93(_) :- false.
div94(_) :- false.
div95(_) :- false.
div96(_) :- false.
div97(A) :- 0 is mod(A,97).
div98(_) :- false.
div99(_) :- false.
div100(_) :- false.