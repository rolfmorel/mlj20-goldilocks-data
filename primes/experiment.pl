:-['bk'].
:-['../metagol'].

metarule(unary1, [P,Q], [P,A], [[Q,A]]).
metarule(unary2, [P,Q,R], [P,A], [[Q,A],[R,A]]).

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


run:-
    findall(A, pos(A), Pos),
    findall(A, neg(A), Neg),
    learn(Pos,Neg).