size(30).
position(1..30).

#pos(p1, {f(w(1,30))}, {}, {
    start_state(w(1,4)).
}).

#pos(p2, {f(w(1,30))}, {}, {
    start_state(w(1,3)).
}).

#pos(p3, {f(w(2,30))}, {}, {
    start_state(w(2,2)).
}).

#pos(n1, {}, {f(w(1,30))}, {
    start_state(w(2,4)).
}).

#pos(n2, {}, {f(w(1,2))}, {
    start_state(w(1,2)).
}).

#pos(n3, {}, {f(w(1,4))}, {
    start_state(w(1,3)).
}).

#pos(n4, {}, {f(w(1,1))}, {
    start_state(w(1,30)).
}).

#pos(n5, {}, {f(w(1,3))}, {
    start_state(w(1,1)).
}).


#modeh(3,f(var(state))).
#modeh(3,start_state(var(state))).
#modeb(3,move_up(var(state),var(state))).
#modeb(3,move_down(var(state),var(state))).
#modeb(3,move_left(var(state),var(state))).
#modeb(3,move_right(var(state),var(state))).
#modeb(3,f(var(state)), (positive)).
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

move_left(w(Rx1,Ry),w(Rx2,Ry)):-
    position(Rx1),
    position(Rx2),
    position(Ry),
    Rx2 = Rx1 - 1.

move_right(w(Rx1,Ry),w(Rx2,Ry)):-
    position(Rx1),
    position(Rx2),
    position(Ry),
    Rx2 = Rx1 + 1.