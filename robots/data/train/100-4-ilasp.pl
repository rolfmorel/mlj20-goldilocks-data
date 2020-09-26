size(100).
position(1..100).
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

#pos(p0, {f(w(100,100))}, {}, {
start_state(w(100,45)).
}).
#pos(p1, {f(w(23,100))}, {}, {
start_state(w(23,1)).
}).
#pos(p2, {f(w(59,100))}, {}, {
start_state(w(59,61)).
}).
#pos(p3, {f(w(12,100))}, {}, {
start_state(w(12,92)).
}).
#pos(p4, {f(w(57,100))}, {}, {
start_state(w(57,61)).
}).
#pos(p5, {f(w(43,100))}, {}, {
start_state(w(43,4)).
}).
#pos(p6, {f(w(32,100))}, {}, {
start_state(w(32,26)).
}).
#pos(p7, {f(w(96,100))}, {}, {
start_state(w(96,29)).
}).
#pos(p8, {f(w(33,100))}, {}, {
start_state(w(33,62)).
}).
#pos(p9, {f(w(30,100))}, {}, {
start_state(w(30,92)).
}).
#pos(p10, {f(w(40,100))}, {}, {
start_state(w(40,94)).
}).
#pos(p11, {f(w(98,100))}, {}, {
start_state(w(98,70)).
}).
#pos(p12, {f(w(7,100))}, {}, {
start_state(w(7,73)).
}).
#pos(p13, {f(w(80,100))}, {}, {
start_state(w(80,46)).
}).
#pos(p14, {f(w(17,100))}, {}, {
start_state(w(17,7)).
}).
#pos(p15, {f(w(2,100))}, {}, {
start_state(w(2,19)).
}).
#pos(p16, {f(w(26,100))}, {}, {
start_state(w(26,69)).
}).
#pos(p17, {f(w(99,100))}, {}, {
start_state(w(99,97)).
}).
#pos(p18, {f(w(73,100))}, {}, {
start_state(w(73,83)).
}).
#pos(p19, {f(w(74,100))}, {}, {
start_state(w(74,18)).
}).
#pos(n0, {}, {f(w(95,100))}, {
start_state(w(53,67)).
}).
#pos(n1, {}, {f(w(25,100))}, {
start_state(w(100,14)).
}).
#pos(n2, {}, {f(w(35,100))}, {
start_state(w(25,61)).
}).
#pos(n3, {}, {f(w(88,34))}, {
start_state(w(1,53)).
}).
#pos(n4, {}, {f(w(23,78))}, {
start_state(w(10,43)).
}).
#pos(n5, {}, {f(w(74,100))}, {
start_state(w(86,83)).
}).
#pos(n6, {}, {f(w(5,23))}, {
start_state(w(8,45)).
}).
#pos(n7, {}, {f(w(96,68))}, {
start_state(w(23,76)).
}).
#pos(n8, {}, {f(w(2,19))}, {
start_state(w(67,81)).
}).
#pos(n9, {}, {f(w(59,100))}, {
start_state(w(94,25)).
}).
#pos(n10, {}, {f(w(54,74))}, {
start_state(w(99,57)).
}).
#pos(n11, {}, {f(w(73,25))}, {
start_state(w(51,24)).
}).
#pos(n12, {}, {f(w(94,19))}, {
start_state(w(49,71)).
}).
#pos(n13, {}, {f(w(66,2))}, {
start_state(w(13,19)).
}).
#pos(n14, {}, {f(w(35,81))}, {
start_state(w(66,1)).
}).
#pos(n15, {}, {f(w(42,42))}, {
start_state(w(33,63)).
}).
#pos(n16, {}, {f(w(85,80))}, {
start_state(w(54,78)).
}).
#pos(n17, {}, {f(w(71,54))}, {
start_state(w(81,36)).
}).
#pos(n18, {}, {f(w(48,11))}, {
start_state(w(90,29)).
}).
#pos(n19, {}, {f(w(81,6))}, {
start_state(w(15,37)).
}).
