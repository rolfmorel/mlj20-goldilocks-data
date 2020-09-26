size(5).
position(1..5).

#pos(p1, {f(w(1,5))}, {}, {
    start_state(w(1,4)).
}).

#pos(p2, {f(w(1,5))}, {}, {
    start_state(w(1,3)).
}).

#pos(p3, {f(w(2,5))}, {}, {
    start_state(w(2,2)).
}).

#pos(n1, {}, {f(w(1,5))}, {
    start_state(w(2,4)).
}).

#pos(n2, {}, {f(w(1,2))}, {
    start_state(w(1,2)).
}).

#pos(n3, {}, {f(w(1,4))}, {
    start_state(w(1,3)).
}).

#pos(n4, {}, {f(w(1,1))}, {
    start_state(w(1,5)).
}).

#pos(n5, {}, {f(w(1,3))}, {
    start_state(w(1,1)).
}).

%% TARGET
%% f(A):-start_state(B),move_up(B,A).
%% f(A):-move_up(A,B),at_top(B).f(B)

%% #modeh(1,f(var(state)), (positive)).
#modeh(3,f(var(state))).
%% #modeb(3,move_up(var(state),var(state)), (positive)).
#modeb(3,move_up(var(state),var(state))).
%% #modeb(3,start_state(var(state)), (positive)).
#modeb(3,f(var(state)), (positive)).
%% #modeb(3,at_top(var(state)), (positive)).
#modeb(3,at_top(var(state))).
#modeb(3,start_state(var(state))).

at_top(w(X,Y)):-
    position(X),
    size(Y).

move_up(w(Rx,Ry1),w(Rx,Ry2)):-
    position(Rx),
    position(Ry1),
    position(Ry2),
    Ry2 = Ry1 + 1.