modeh(f,2).
direction(f,0,in).
direction(f,1,out).
modeb(move_up,2).
direction(move_up,0,in).
direction(move_up,1,out).
modeb(move_right,2).
direction(move_right,0,in).
direction(move_right,1,out).
modeb(move_down,2).
direction(move_down,0,in).
direction(move_down,1,out).
modeb(move_left,2).
direction(move_left,0,in).
direction(move_left,1,out).

%modeb(grab,2).
%direction(grab,0,in). direction(grab,1,out).
%modeb(drop,2).
%direction(drop,0,in). direction(drop,1,out).

%modeb(at_top,1).
%direction(at_top,0,in).
%modeb(at_right,1).
%direction(at_right,0,in).
%modeb(at_bottom,1).
%direction(at_bottom,0,in).
%modeb(at_left,1).
%direction(at_left,0,in).


type(f,state,state).
type(P,state,state):-
    modeb(P,2).
type(P,state):-
    modeb(P,1).
