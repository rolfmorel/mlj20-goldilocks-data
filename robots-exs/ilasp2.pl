size(5).
position(1..5).

#pos(p1, {f(w(1,4),w(1,5)),f(w(1,3),w(1,5))}, {f(w(1,4),w(1,4)),f(w(1,4),w(2,5)),f(w(1,3),w(1,4))}, {}).
%% #pos(p1, {f(w(2,4),w(2,5))}, {}, {}).
%% #pos(n1, {}, {}, {}).
%% #pos(n2, {}, {}, {}).
%% #pos(n3, {}, {}, {}).

%% %% TARGET
%% %% f(A):-start(B),move_up(B,A).

#modeh(1,f(var(state),var(state))).
#modeb(1,move_up(var(state),var(state)), (positive)).
%% #modeb(1,start_state(var(state)), (positive)).
#modeb(1,at_top(var(state))).
#modeb(1,f(var(state),var(state))).

%% %% #modeb(3,move_left(var(state),var(state)), (positive)).
%% %% #modeb(3,move_right(var(state),var(state)), (positive)).
%% %% #modeb(3,move_down(var(state),var(state)), (positive)).


%% #maxv(4).

at_top(w(X,Y)):-
    position(X),
    size(Y).
%% move_right(w(Rx1,Ry),w(Rx2,Ry)):-
%%     position(Rx1),
%%     position(Rx2),
%%     position(Ry),
%%     Rx2 = Rx1 + 1.

%% move_left(w(Rx1,Ry),w(Rx2,Ry)):-
%%     position(Rx1),
%%     position(Rx2),
%%     position(Ry),
%%     Rx2 = Rx1 - 1.

move_up(w(Rx,Ry1),w(Rx,Ry2)):-
    position(Rx),
    position(Ry1),
    position(Ry2),
    Ry2 = Ry1 + 1.

%% move_down(w(Rx,Ry1),w(Rx,Ry2)):-
%%     position(Rx),
%%     position(Ry1),
%%     position(Ry2),
%%     Ry2 = Ry1 - 1.

%% start_state(w(1,2)).
%% f(B):-f(A),move_up(A,B).
%% f(A):-start_state(A).

%% start_state(w(1,4)).
%% start_state(w(1,1)).

%% f(A):-start_state(A),at_top(A).
%% f(B):-f(A),move_up(A,B),at_top(B).
%% f(B):-start_state(A),not at_top(A),move_up(A,B),f(B).

%% f(A):-f(B),move_up(B,A),at_top(A).
%% f(A):-start_state(B),move_up(B,A),f(A).

%% move_up(A,B),f(B).

%% f(V1) :- move_up(V0,V1), not f(V0).
%% f(V0) :- move_up(V0,V1), not f(V1).

%% #show f/1.