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

#pos(p0, {f(w(16,80))}, {}, {
start_state(w(16,27)).
}).
#pos(p1, {f(w(15,80))}, {}, {
start_state(w(15,36)).
}).
#pos(p2, {f(w(68,80))}, {}, {
start_state(w(68,30)).
}).
#pos(p3, {f(w(59,80))}, {}, {
start_state(w(59,46)).
}).
#pos(p4, {f(w(68,80))}, {}, {
start_state(w(68,49)).
}).
#pos(p5, {f(w(28,80))}, {}, {
start_state(w(28,72)).
}).
#pos(p6, {f(w(29,80))}, {}, {
start_state(w(29,47)).
}).
#pos(p7, {f(w(68,80))}, {}, {
start_state(w(68,79)).
}).
#pos(p8, {f(w(61,80))}, {}, {
start_state(w(61,11)).
}).
#pos(p9, {f(w(55,80))}, {}, {
start_state(w(55,44)).
}).
#pos(p10, {f(w(14,80))}, {}, {
start_state(w(14,33)).
}).
#pos(p11, {f(w(42,80))}, {}, {
start_state(w(42,66)).
}).
#pos(p12, {f(w(9,80))}, {}, {
start_state(w(9,32)).
}).
#pos(p13, {f(w(27,80))}, {}, {
start_state(w(27,63)).
}).
#pos(p14, {f(w(54,80))}, {}, {
start_state(w(54,22)).
}).
#pos(p15, {f(w(75,80))}, {}, {
start_state(w(75,79)).
}).
#pos(p16, {f(w(72,80))}, {}, {
start_state(w(72,62)).
}).
#pos(p17, {f(w(31,80))}, {}, {
start_state(w(31,6)).
}).
#pos(p18, {f(w(1,80))}, {}, {
start_state(w(1,7)).
}).
#pos(p19, {f(w(10,80))}, {}, {
start_state(w(10,24)).
}).
#pos(n0, {}, {f(w(11,39))}, {
start_state(w(74,76)).
}).
#pos(n1, {}, {f(w(9,74))}, {
start_state(w(44,61)).
}).
#pos(n2, {}, {f(w(52,80))}, {
start_state(w(78,18)).
}).
#pos(n3, {}, {f(w(7,60))}, {
start_state(w(15,61)).
}).
#pos(n4, {}, {f(w(70,80))}, {
start_state(w(25,59)).
}).
#pos(n5, {}, {f(w(80,44))}, {
start_state(w(73,49)).
}).
#pos(n6, {}, {f(w(7,11))}, {
start_state(w(21,75)).
}).
#pos(n7, {}, {f(w(1,59))}, {
start_state(w(72,49)).
}).
#pos(n8, {}, {f(w(23,66))}, {
start_state(w(12,62)).
}).
#pos(n9, {}, {f(w(67,78))}, {
start_state(w(49,57)).
}).
#pos(n10, {}, {f(w(39,80))}, {
start_state(w(62,32)).
}).
#pos(n11, {}, {f(w(77,14))}, {
start_state(w(44,71)).
}).
#pos(n12, {}, {f(w(4,76))}, {
start_state(w(38,45)).
}).
#pos(n13, {}, {f(w(60,5))}, {
start_state(w(57,64)).
}).
#pos(n14, {}, {f(w(51,76))}, {
start_state(w(66,52)).
}).
#pos(n15, {}, {f(w(52,16))}, {
start_state(w(31,2)).
}).
#pos(n16, {}, {f(w(4,36))}, {
start_state(w(45,46)).
}).
#pos(n17, {}, {f(w(2,20))}, {
start_state(w(80,8)).
}).
#pos(n18, {}, {f(w(79,17))}, {
start_state(w(4,75)).
}).
#pos(n19, {}, {f(w(24,72))}, {
start_state(w(60,30)).
}).
