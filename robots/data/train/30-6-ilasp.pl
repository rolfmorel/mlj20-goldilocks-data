size(30).
position(1..30).
#modeh(f(var(state)), (positive)).
#modeh(start_state(var(state)), (positive)).
#modeb(3,move_up(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_down(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_left(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_right(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,at_top(var(state)), (positive)).
#modeb(3,at_bottom(var(state)), (positive)).
#modeb(3,at_left(var(state)), (positive)).
#modeb(3,at_right(var(state)), (positive)).
#modeb(1,start_state(var(state)), (positive)).

#bias(":- occurs(V, X), #false : occurs(V, Y), Y != X.").
#bias("occurs(X, f(X)) :- head(f(X)).").
#bias("occurs(X, start_state(X)) :- head(start_state(X)).").
#bias("occurs(X, start_state(X)) :- body(start_state(X)).").
#bias("occurs(X, at_top(X)) :- body(at_top(X)).").
#bias("occurs(X, at_bottom(X)) :- body(at_bottom(X)).").
#bias("occurs(X, at_left(X)) :- body(at_left(X)).").
#bias("occurs(X, at_right(X)) :- body(at_right(X)).").
#bias("occurs(X, move_up(X, Y)) :- body(move_up(X, Y)).").
#bias("occurs(X, move_left(X, Y)) :- body(move_left(X, Y)).").
#bias("occurs(X, move_right(X, Y)) :- body(move_right(X, Y)).").
#bias("occurs(X, move_down(X, Y)) :- body(move_down(X, Y)).").
#bias("occurs(X, move_up(Y, X)) :- body(move_up(Y, X)).").
#bias("occurs(X, move_left(Y, X)) :- body(move_left(Y, X)).").
#bias("occurs(X, move_right(Y, X)) :- body(move_right(Y, X)).").
#bias("occurs(X, move_down(Y, X)) :- body(move_down(Y, X)).").
move_right(w(X1,Y),w(X2,Y)):-
    position(X1),
    position(X2),
    position(Y),
    X2 = X1 + 1.

move_left(w(X1,Y),w(X2,Y)):-
    position(X1),
    position(X2),
    position(Y),
    X2 = X1 - 1.

move_up(w(X,Y1),w(X,Y2)):-
    position(X),
    position(Y1),
    position(Y2),
    Y2 = Y1 + 1.

move_down(w(X,Y1),w(X,Y2)):-
    position(X),
    position(Y1),
    position(Y2),
    Y2 = Y1 - 1.

at_left(w(1,Y)):-
    position(Y).
at_right(w(X,Y)):-
    size(X),
    position(Y).
at_top(w(X,Y)):-
    position(X),
    size(Y).
at_bottom(w(X,1)):-
    position(X).

#pos(p0, {f(w(22,30))}, {}, {
start_state(w(22,8)).
}).
#pos(p1, {f(w(1,30))}, {}, {
start_state(w(1,3)).
}).
#pos(p2, {f(w(28,30))}, {}, {
start_state(w(28,20)).
}).
#pos(p3, {f(w(10,30))}, {}, {
start_state(w(10,4)).
}).
#pos(p4, {f(w(10,30))}, {}, {
start_state(w(10,12)).
}).
#pos(p5, {f(w(17,30))}, {}, {
start_state(w(17,6)).
}).
#pos(p6, {f(w(8,30))}, {}, {
start_state(w(8,21)).
}).
#pos(p7, {f(w(14,30))}, {}, {
start_state(w(14,26)).
}).
#pos(p8, {f(w(22,30))}, {}, {
start_state(w(22,29)).
}).
#pos(p9, {f(w(28,30))}, {}, {
start_state(w(28,6)).
}).
#pos(p10, {f(w(2,30))}, {}, {
start_state(w(2,8)).
}).
#pos(p11, {f(w(2,30))}, {}, {
start_state(w(2,5)).
}).
#pos(p12, {f(w(28,30))}, {}, {
start_state(w(28,19)).
}).
#pos(p13, {f(w(2,30))}, {}, {
start_state(w(2,22)).
}).
#pos(p14, {f(w(11,30))}, {}, {
start_state(w(11,29)).
}).
#pos(p15, {f(w(1,30))}, {}, {
start_state(w(1,17)).
}).
#pos(p16, {f(w(19,30))}, {}, {
start_state(w(19,1)).
}).
#pos(p17, {f(w(17,30))}, {}, {
start_state(w(17,5)).
}).
#pos(p18, {f(w(2,30))}, {}, {
start_state(w(2,9)).
}).
#pos(p19, {f(w(6,30))}, {}, {
start_state(w(6,3)).
}).
#pos(n0, {}, {f(w(18,6))}, {
start_state(w(3,16)).
}).
#pos(n1, {}, {f(w(21,4))}, {
start_state(w(3,27)).
}).
#pos(n2, {}, {f(w(24,30))}, {
start_state(w(22,16)).
}).
#pos(n3, {}, {f(w(14,30))}, {
start_state(w(19,8)).
}).
#pos(n4, {}, {f(w(19,30))}, {
start_state(w(14,1)).
}).
#pos(n5, {}, {f(w(17,30))}, {
start_state(w(27,9)).
}).
#pos(n6, {}, {f(w(19,20))}, {
start_state(w(19,30)).
}).
#pos(n7, {}, {f(w(12,15))}, {
start_state(w(8,2)).
}).
#pos(n8, {}, {f(w(7,30))}, {
start_state(w(25,9)).
}).
#pos(n9, {}, {f(w(19,24))}, {
start_state(w(3,14)).
}).
#pos(n10, {}, {f(w(28,30))}, {
start_state(w(5,12)).
}).
#pos(n11, {}, {f(w(18,30))}, {
start_state(w(6,8)).
}).
#pos(n12, {}, {f(w(28,25))}, {
start_state(w(16,1)).
}).
#pos(n13, {}, {f(w(3,24))}, {
start_state(w(23,19)).
}).
#pos(n14, {}, {f(w(6,30))}, {
start_state(w(21,13)).
}).
#pos(n15, {}, {f(w(7,28))}, {
start_state(w(3,12)).
}).
#pos(n16, {}, {f(w(1,26))}, {
start_state(w(25,3)).
}).
#pos(n17, {}, {f(w(24,29))}, {
start_state(w(18,25)).
}).
#pos(n18, {}, {f(w(8,10))}, {
start_state(w(14,29)).
}).
#pos(n19, {}, {f(w(23,7))}, {
start_state(w(13,1)).
}).
