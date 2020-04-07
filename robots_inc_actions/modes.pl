%max_vars(5).
%max_body(4).
max_clauses(1).

%:- #count { Cl,Pred,Args : body_literal(Cl,Pred,_,Args) } < 4.

modeh(f,2).
direction(f,0,in).
direction(f,1,out).

modeb(move_left,2).
direction(move_left,0,in).
direction(move_left,1,out).

modeb(move_right,2).
direction(move_right,0,in).
direction(move_right,1,out).

modeb(move_up,2).
direction(move_up,0,in).
direction(move_up,1,out).

%modeb(move_down,2).
%direction(move_down,0,in).
%direction(move_down,1,out).

%modeb(pickup,2).
%direction(pickup,0,in).
%direction(pickup,1,out).
%
%modeb(drop,2).
%direction(drop,0,in).
%direction(drop,1,out).

%:- not body_literal(0,pickup,2,(0,2)).
%:- not body_literal(0,move_right,2,(2,3)).
%:- not body_literal(0,move_up,2,(3,4)).
%:- not body_literal(0,drop,2,(4,1)).
%
%occurs(Pred) :- body_literal(_,Pred,_,_).
%:- not occurs(move_right).
%:- not occurs(move_up).
%:- not occurs(pickup).
%:- not occurs(drop).
