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

#pos(p0, {f(w(84,100))}, {}, {
start_state(w(84,35)).
}).
#pos(p1, {f(w(22,100))}, {}, {
start_state(w(22,49)).
}).
#pos(p2, {f(w(46,100))}, {}, {
start_state(w(46,58)).
}).
#pos(p3, {f(w(61,100))}, {}, {
start_state(w(61,38)).
}).
#pos(p4, {f(w(86,100))}, {}, {
start_state(w(86,71)).
}).
#pos(p5, {f(w(87,100))}, {}, {
start_state(w(87,17)).
}).
#pos(p6, {f(w(71,100))}, {}, {
start_state(w(71,22)).
}).
#pos(p7, {f(w(42,100))}, {}, {
start_state(w(42,52)).
}).
#pos(p8, {f(w(99,100))}, {}, {
start_state(w(99,70)).
}).
#pos(p9, {f(w(98,100))}, {}, {
start_state(w(98,54)).
}).
#pos(p10, {f(w(32,100))}, {}, {
start_state(w(32,86)).
}).
#pos(p11, {f(w(54,100))}, {}, {
start_state(w(54,57)).
}).
#pos(p12, {f(w(100,100))}, {}, {
start_state(w(100,62)).
}).
#pos(p13, {f(w(92,100))}, {}, {
start_state(w(92,35)).
}).
#pos(p14, {f(w(9,100))}, {}, {
start_state(w(9,86)).
}).
#pos(p15, {f(w(49,100))}, {}, {
start_state(w(49,46)).
}).
#pos(p16, {f(w(23,100))}, {}, {
start_state(w(23,55)).
}).
#pos(p17, {f(w(79,100))}, {}, {
start_state(w(79,55)).
}).
#pos(p18, {f(w(16,100))}, {}, {
start_state(w(16,61)).
}).
#pos(p19, {f(w(69,100))}, {}, {
start_state(w(69,94)).
}).
#pos(n0, {}, {f(w(92,62))}, {
start_state(w(43,58)).
}).
#pos(n1, {}, {f(w(55,23))}, {
start_state(w(67,72)).
}).
#pos(n2, {}, {f(w(68,76))}, {
start_state(w(63,100)).
}).
#pos(n3, {}, {f(w(15,80))}, {
start_state(w(40,35)).
}).
#pos(n4, {}, {f(w(19,36))}, {
start_state(w(7,44)).
}).
#pos(n5, {}, {f(w(1,92))}, {
start_state(w(3,70)).
}).
#pos(n6, {}, {f(w(93,52))}, {
start_state(w(38,71)).
}).
#pos(n7, {}, {f(w(10,78))}, {
start_state(w(55,30)).
}).
#pos(n8, {}, {f(w(42,100))}, {
start_state(w(89,26)).
}).
#pos(n9, {}, {f(w(93,100))}, {
start_state(w(94,78)).
}).
#pos(n10, {}, {f(w(1,42))}, {
start_state(w(67,95)).
}).
#pos(n11, {}, {f(w(35,68))}, {
start_state(w(82,63)).
}).
#pos(n12, {}, {f(w(4,61))}, {
start_state(w(99,33)).
}).
#pos(n13, {}, {f(w(63,100))}, {
start_state(w(98,26)).
}).
#pos(n14, {}, {f(w(69,38))}, {
start_state(w(32,10)).
}).
#pos(n15, {}, {f(w(7,73))}, {
start_state(w(94,2)).
}).
#pos(n16, {}, {f(w(41,28))}, {
start_state(w(87,54)).
}).
#pos(n17, {}, {f(w(42,33))}, {
start_state(w(71,34)).
}).
#pos(n18, {}, {f(w(81,100))}, {
start_state(w(96,53)).
}).
#pos(n19, {}, {f(w(22,90))}, {
start_state(w(11,60)).
}).
