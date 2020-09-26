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

#pos(p0, {f(w(4,80))}, {}, {
start_state(w(4,54)).
}).
#pos(p1, {f(w(70,80))}, {}, {
start_state(w(70,79)).
}).
#pos(p2, {f(w(3,80))}, {}, {
start_state(w(3,78)).
}).
#pos(p3, {f(w(7,80))}, {}, {
start_state(w(7,67)).
}).
#pos(p4, {f(w(23,80))}, {}, {
start_state(w(23,5)).
}).
#pos(p5, {f(w(28,80))}, {}, {
start_state(w(28,72)).
}).
#pos(p6, {f(w(65,80))}, {}, {
start_state(w(65,47)).
}).
#pos(p7, {f(w(5,80))}, {}, {
start_state(w(5,31)).
}).
#pos(p8, {f(w(65,80))}, {}, {
start_state(w(65,42)).
}).
#pos(p9, {f(w(25,80))}, {}, {
start_state(w(25,63)).
}).
#pos(p10, {f(w(20,80))}, {}, {
start_state(w(20,15)).
}).
#pos(p11, {f(w(51,80))}, {}, {
start_state(w(51,79)).
}).
#pos(p12, {f(w(39,80))}, {}, {
start_state(w(39,47)).
}).
#pos(p13, {f(w(62,80))}, {}, {
start_state(w(62,67)).
}).
#pos(p14, {f(w(31,80))}, {}, {
start_state(w(31,7)).
}).
#pos(p15, {f(w(46,80))}, {}, {
start_state(w(46,53)).
}).
#pos(p16, {f(w(27,80))}, {}, {
start_state(w(27,55)).
}).
#pos(p17, {f(w(37,80))}, {}, {
start_state(w(37,21)).
}).
#pos(p18, {f(w(53,80))}, {}, {
start_state(w(53,5)).
}).
#pos(p19, {f(w(69,80))}, {}, {
start_state(w(69,78)).
}).
#pos(n0, {}, {f(w(39,76))}, {
start_state(w(33,32)).
}).
#pos(n1, {}, {f(w(76,31))}, {
start_state(w(36,13)).
}).
#pos(n2, {}, {f(w(51,8))}, {
start_state(w(31,7)).
}).
#pos(n3, {}, {f(w(73,10))}, {
start_state(w(76,51)).
}).
#pos(n4, {}, {f(w(16,40))}, {
start_state(w(45,66)).
}).
#pos(n5, {}, {f(w(48,80))}, {
start_state(w(67,40)).
}).
#pos(n6, {}, {f(w(16,80))}, {
start_state(w(24,31)).
}).
#pos(n7, {}, {f(w(34,80))}, {
start_state(w(18,76)).
}).
#pos(n8, {}, {f(w(24,39))}, {
start_state(w(2,68)).
}).
#pos(n9, {}, {f(w(35,40))}, {
start_state(w(70,41)).
}).
#pos(n10, {}, {f(w(24,27))}, {
start_state(w(40,78)).
}).
#pos(n11, {}, {f(w(67,47))}, {
start_state(w(3,73)).
}).
#pos(n12, {}, {f(w(34,31))}, {
start_state(w(33,33)).
}).
#pos(n13, {}, {f(w(53,3))}, {
start_state(w(6,13)).
}).
#pos(n14, {}, {f(w(38,80))}, {
start_state(w(74,66)).
}).
#pos(n15, {}, {f(w(13,13))}, {
start_state(w(5,71)).
}).
#pos(n16, {}, {f(w(73,80))}, {
start_state(w(3,54)).
}).
#pos(n17, {}, {f(w(69,41))}, {
start_state(w(47,37)).
}).
#pos(n18, {}, {f(w(25,41))}, {
start_state(w(45,59)).
}).
#pos(n19, {}, {f(w(70,80))}, {
start_state(w(14,31)).
}).
