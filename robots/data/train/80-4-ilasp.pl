size(80).
position(1..80).
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

#pos(p0, {f(w(33,80))}, {}, {
start_state(w(33,40)).
}).
#pos(p1, {f(w(28,80))}, {}, {
start_state(w(28,26)).
}).
#pos(p2, {f(w(30,80))}, {}, {
start_state(w(30,62)).
}).
#pos(p3, {f(w(60,80))}, {}, {
start_state(w(60,45)).
}).
#pos(p4, {f(w(52,80))}, {}, {
start_state(w(52,23)).
}).
#pos(p5, {f(w(54,80))}, {}, {
start_state(w(54,39)).
}).
#pos(p6, {f(w(6,80))}, {}, {
start_state(w(6,79)).
}).
#pos(p7, {f(w(34,80))}, {}, {
start_state(w(34,57)).
}).
#pos(p8, {f(w(28,80))}, {}, {
start_state(w(28,28)).
}).
#pos(p9, {f(w(47,80))}, {}, {
start_state(w(47,16)).
}).
#pos(p10, {f(w(3,80))}, {}, {
start_state(w(3,79)).
}).
#pos(p11, {f(w(7,80))}, {}, {
start_state(w(7,52)).
}).
#pos(p12, {f(w(24,80))}, {}, {
start_state(w(24,77)).
}).
#pos(p13, {f(w(59,80))}, {}, {
start_state(w(59,38)).
}).
#pos(p14, {f(w(23,80))}, {}, {
start_state(w(23,19)).
}).
#pos(p15, {f(w(7,80))}, {}, {
start_state(w(7,74)).
}).
#pos(p16, {f(w(78,80))}, {}, {
start_state(w(78,16)).
}).
#pos(p17, {f(w(74,80))}, {}, {
start_state(w(74,5)).
}).
#pos(p18, {f(w(30,80))}, {}, {
start_state(w(30,64)).
}).
#pos(p19, {f(w(33,80))}, {}, {
start_state(w(33,22)).
}).
#pos(n0, {}, {f(w(6,80))}, {
start_state(w(25,44)).
}).
#pos(n1, {}, {f(w(36,30))}, {
start_state(w(4,60)).
}).
#pos(n2, {}, {f(w(34,80))}, {
start_state(w(52,74)).
}).
#pos(n3, {}, {f(w(31,80))}, {
start_state(w(61,37)).
}).
#pos(n4, {}, {f(w(62,80))}, {
start_state(w(61,52)).
}).
#pos(n5, {}, {f(w(28,66))}, {
start_state(w(14,4)).
}).
#pos(n6, {}, {f(w(16,79))}, {
start_state(w(35,22)).
}).
#pos(n7, {}, {f(w(9,64))}, {
start_state(w(56,31)).
}).
#pos(n8, {}, {f(w(8,80))}, {
start_state(w(73,9)).
}).
#pos(n9, {}, {f(w(16,80))}, {
start_state(w(70,69)).
}).
#pos(n10, {}, {f(w(28,32))}, {
start_state(w(74,63)).
}).
#pos(n11, {}, {f(w(48,14))}, {
start_state(w(48,54)).
}).
#pos(n12, {}, {f(w(32,38))}, {
start_state(w(50,4)).
}).
#pos(n13, {}, {f(w(47,80))}, {
start_state(w(61,48)).
}).
#pos(n14, {}, {f(w(42,24))}, {
start_state(w(23,62)).
}).
#pos(n15, {}, {f(w(21,79))}, {
start_state(w(8,75)).
}).
#pos(n16, {}, {f(w(74,77))}, {
start_state(w(24,1)).
}).
#pos(n17, {}, {f(w(46,80))}, {
start_state(w(39,55)).
}).
#pos(n18, {}, {f(w(25,16))}, {
start_state(w(17,63)).
}).
#pos(n19, {}, {f(w(52,15))}, {
start_state(w(66,19)).
}).
