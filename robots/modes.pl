max_vars(3).
max_body(2).
max_clauses(2).

modeh(f,2).
modeb(f,2).
%direction(f,0,in).
%direction(f,1,out).
%direction(f,1,in).

modeb(move_left,2).
%direction(move_left,0,in).
%direction(move_left,1,out).

modeb(move_right,2).
%direction(move_right,0,in).
%direction(move_right,1,out).

modeb(move_up,2).
%direction(move_up,0,in).
%direction(move_up,1,out).

modeb(move_down,2).
%direction(move_down,0,in).
%direction(move_down,1,out).

%modeb(pickup,2).
%direction(pickup,0,in).
%direction(pickup,1,out).
%
%modeb(drop,2).
%direction(drop,0,in).
%direction(drop,1,out).

%modeb(at_top,1).
%modeb(at_bottom,1).
%modeb(at_right,1).
%modeb(at_left,1).

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