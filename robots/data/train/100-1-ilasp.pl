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

#pos(p0, {f(w(13,100))}, {}, {
start_state(w(13,67)).
}).
#pos(p1, {f(w(17,100))}, {}, {
start_state(w(17,92)).
}).
#pos(p2, {f(w(43,100))}, {}, {
start_state(w(43,86)).
}).
#pos(p3, {f(w(70,100))}, {}, {
start_state(w(70,42)).
}).
#pos(p4, {f(w(100,100))}, {}, {
start_state(w(100,86)).
}).
#pos(p5, {f(w(29,100))}, {}, {
start_state(w(29,34)).
}).
#pos(p6, {f(w(69,100))}, {}, {
start_state(w(69,61)).
}).
#pos(p7, {f(w(39,100))}, {}, {
start_state(w(39,50)).
}).
#pos(p8, {f(w(66,100))}, {}, {
start_state(w(66,83)).
}).
#pos(p9, {f(w(88,100))}, {}, {
start_state(w(88,96)).
}).
#pos(p10, {f(w(71,100))}, {}, {
start_state(w(71,99)).
}).
#pos(p11, {f(w(35,100))}, {}, {
start_state(w(35,52)).
}).
#pos(p12, {f(w(32,100))}, {}, {
start_state(w(32,14)).
}).
#pos(p13, {f(w(83,100))}, {}, {
start_state(w(83,3)).
}).
#pos(p14, {f(w(25,100))}, {}, {
start_state(w(25,81)).
}).
#pos(p15, {f(w(31,100))}, {}, {
start_state(w(31,65)).
}).
#pos(p16, {f(w(16,100))}, {}, {
start_state(w(16,92)).
}).
#pos(p17, {f(w(95,100))}, {}, {
start_state(w(95,80)).
}).
#pos(p18, {f(w(64,100))}, {}, {
start_state(w(64,99)).
}).
#pos(p19, {f(w(68,100))}, {}, {
start_state(w(68,18)).
}).
#pos(n0, {}, {f(w(72,30))}, {
start_state(w(60,84)).
}).
#pos(n1, {}, {f(w(45,98))}, {
start_state(w(10,74)).
}).
#pos(n2, {}, {f(w(13,21))}, {
start_state(w(91,24)).
}).
#pos(n3, {}, {f(w(42,100))}, {
start_state(w(3,59)).
}).
#pos(n4, {}, {f(w(24,1))}, {
start_state(w(75,78)).
}).
#pos(n5, {}, {f(w(59,9))}, {
start_state(w(64,13)).
}).
#pos(n6, {}, {f(w(31,29))}, {
start_state(w(2,9)).
}).
#pos(n7, {}, {f(w(10,31))}, {
start_state(w(35,50)).
}).
#pos(n8, {}, {f(w(76,74))}, {
start_state(w(62,65)).
}).
#pos(n9, {}, {f(w(86,48))}, {
start_state(w(59,7)).
}).
#pos(n10, {}, {f(w(61,100))}, {
start_state(w(79,76)).
}).
#pos(n11, {}, {f(w(64,100))}, {
start_state(w(11,85)).
}).
#pos(n12, {}, {f(w(25,73))}, {
start_state(w(17,20)).
}).
#pos(n13, {}, {f(w(71,17))}, {
start_state(w(34,71)).
}).
#pos(n14, {}, {f(w(85,37))}, {
start_state(w(93,45)).
}).
#pos(n15, {}, {f(w(69,36))}, {
start_state(w(93,33)).
}).
#pos(n16, {}, {f(w(30,76))}, {
start_state(w(15,79)).
}).
#pos(n17, {}, {f(w(77,33))}, {
start_state(w(2,39)).
}).
#pos(n18, {}, {f(w(53,60))}, {
start_state(w(49,47)).
}).
#pos(n19, {}, {f(w(7,32))}, {
start_state(w(57,99)).
}).
