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

#pos(p0, {f(w(15,80))}, {}, {
start_state(w(15,17)).
}).
#pos(p1, {f(w(33,80))}, {}, {
start_state(w(33,43)).
}).
#pos(p2, {f(w(50,80))}, {}, {
start_state(w(50,17)).
}).
#pos(p3, {f(w(35,80))}, {}, {
start_state(w(35,56)).
}).
#pos(p4, {f(w(43,80))}, {}, {
start_state(w(43,54)).
}).
#pos(p5, {f(w(71,80))}, {}, {
start_state(w(71,49)).
}).
#pos(p6, {f(w(76,80))}, {}, {
start_state(w(76,76)).
}).
#pos(p7, {f(w(73,80))}, {}, {
start_state(w(73,79)).
}).
#pos(p8, {f(w(8,80))}, {}, {
start_state(w(8,59)).
}).
#pos(p9, {f(w(20,80))}, {}, {
start_state(w(20,28)).
}).
#pos(p10, {f(w(32,80))}, {}, {
start_state(w(32,59)).
}).
#pos(p11, {f(w(25,80))}, {}, {
start_state(w(25,23)).
}).
#pos(p12, {f(w(74,80))}, {}, {
start_state(w(74,18)).
}).
#pos(p13, {f(w(24,80))}, {}, {
start_state(w(24,17)).
}).
#pos(p14, {f(w(62,80))}, {}, {
start_state(w(62,76)).
}).
#pos(p15, {f(w(31,80))}, {}, {
start_state(w(31,77)).
}).
#pos(p16, {f(w(41,80))}, {}, {
start_state(w(41,33)).
}).
#pos(p17, {f(w(23,80))}, {}, {
start_state(w(23,79)).
}).
#pos(p18, {f(w(50,80))}, {}, {
start_state(w(50,43)).
}).
#pos(p19, {f(w(20,80))}, {}, {
start_state(w(20,32)).
}).
#pos(n0, {}, {f(w(73,64))}, {
start_state(w(30,22)).
}).
#pos(n1, {}, {f(w(25,62))}, {
start_state(w(80,46)).
}).
#pos(n2, {}, {f(w(72,76))}, {
start_state(w(56,48)).
}).
#pos(n3, {}, {f(w(80,80))}, {
start_state(w(4,67)).
}).
#pos(n4, {}, {f(w(61,59))}, {
start_state(w(33,43)).
}).
#pos(n5, {}, {f(w(27,78))}, {
start_state(w(48,1)).
}).
#pos(n6, {}, {f(w(66,66))}, {
start_state(w(21,54)).
}).
#pos(n7, {}, {f(w(38,73))}, {
start_state(w(77,2)).
}).
#pos(n8, {}, {f(w(8,34))}, {
start_state(w(55,2)).
}).
#pos(n9, {}, {f(w(78,34))}, {
start_state(w(38,30)).
}).
#pos(n10, {}, {f(w(77,7))}, {
start_state(w(33,71)).
}).
#pos(n11, {}, {f(w(9,80))}, {
start_state(w(18,42)).
}).
#pos(n12, {}, {f(w(21,73))}, {
start_state(w(36,43)).
}).
#pos(n13, {}, {f(w(73,7))}, {
start_state(w(68,64)).
}).
#pos(n14, {}, {f(w(18,80))}, {
start_state(w(8,13)).
}).
#pos(n15, {}, {f(w(33,80))}, {
start_state(w(7,35)).
}).
#pos(n16, {}, {f(w(40,80))}, {
start_state(w(10,13)).
}).
#pos(n17, {}, {f(w(73,58))}, {
start_state(w(54,75)).
}).
#pos(n18, {}, {f(w(20,42))}, {
start_state(w(2,61)).
}).
#pos(n19, {}, {f(w(4,77))}, {
start_state(w(60,45)).
}).
