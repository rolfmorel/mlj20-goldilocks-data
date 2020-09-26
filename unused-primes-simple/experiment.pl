:-['bk'].
:-['../metagol'].

metarule(unary1, [P,Q], [P,A], [[Q,A]]).
metarule(unary2, [P,Q,R], [P,A], [[Q,A],[R,A]]).

body_pred(div2/1).
body_pred(div3/1).
body_pred(div5/1).
body_pred(div7/1).
body_pred(div11/1).
body_pred(div13/1).
body_pred(div17/1).
body_pred(div19/1).
body_pred(div23/1).
body_pred(div29/1).
body_pred(div31/1).
body_pred(div37/1).
body_pred(div41/1).
body_pred(div43/1).
body_pred(div47/1).
body_pred(div53/1).
body_pred(div59/1).
body_pred(div61/1).
body_pred(div67/1).
body_pred(div71/1).
body_pred(div73/1).
body_pred(div79/1).
body_pred(div83/1).
body_pred(div89/1).
body_pred(div97/1).


run:-
    findall(A, pos(A), Pos),
    findall(A, neg(A), Neg),
    learn(Pos,Neg).