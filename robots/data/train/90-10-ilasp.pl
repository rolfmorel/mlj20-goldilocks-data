size(90).
position(1..90).
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

#pos(p0, {f(w(46,90))}, {}, {
start_state(w(46,23)).
}).
#pos(p1, {f(w(12,90))}, {}, {
start_state(w(12,1)).
}).
#pos(p2, {f(w(89,90))}, {}, {
start_state(w(89,76)).
}).
#pos(p3, {f(w(20,90))}, {}, {
start_state(w(20,39)).
}).
#pos(p4, {f(w(68,90))}, {}, {
start_state(w(68,79)).
}).
#pos(p5, {f(w(63,90))}, {}, {
start_state(w(63,62)).
}).
#pos(p6, {f(w(23,90))}, {}, {
start_state(w(23,21)).
}).
#pos(p7, {f(w(82,90))}, {}, {
start_state(w(82,18)).
}).
#pos(p8, {f(w(82,90))}, {}, {
start_state(w(82,50)).
}).
#pos(p9, {f(w(2,90))}, {}, {
start_state(w(2,66)).
}).
#pos(p10, {f(w(77,90))}, {}, {
start_state(w(77,71)).
}).
#pos(p11, {f(w(25,90))}, {}, {
start_state(w(25,89)).
}).
#pos(p12, {f(w(63,90))}, {}, {
start_state(w(63,38)).
}).
#pos(p13, {f(w(40,90))}, {}, {
start_state(w(40,38)).
}).
#pos(p14, {f(w(9,90))}, {}, {
start_state(w(9,60)).
}).
#pos(p15, {f(w(59,90))}, {}, {
start_state(w(59,9)).
}).
#pos(p16, {f(w(9,90))}, {}, {
start_state(w(9,54)).
}).
#pos(p17, {f(w(67,90))}, {}, {
start_state(w(67,68)).
}).
#pos(p18, {f(w(55,90))}, {}, {
start_state(w(55,74)).
}).
#pos(p19, {f(w(64,90))}, {}, {
start_state(w(64,57)).
}).
#pos(n0, {}, {f(w(49,57))}, {
start_state(w(74,59)).
}).
#pos(n1, {}, {f(w(27,9))}, {
start_state(w(23,78)).
}).
#pos(n2, {}, {f(w(72,33))}, {
start_state(w(15,66)).
}).
#pos(n3, {}, {f(w(11,80))}, {
start_state(w(22,43)).
}).
#pos(n4, {}, {f(w(16,17))}, {
start_state(w(77,56)).
}).
#pos(n5, {}, {f(w(49,90))}, {
start_state(w(77,64)).
}).
#pos(n6, {}, {f(w(18,21))}, {
start_state(w(14,17)).
}).
#pos(n7, {}, {f(w(83,47))}, {
start_state(w(21,87)).
}).
#pos(n8, {}, {f(w(1,76))}, {
start_state(w(32,17)).
}).
#pos(n9, {}, {f(w(5,11))}, {
start_state(w(84,32)).
}).
#pos(n10, {}, {f(w(33,90))}, {
start_state(w(52,28)).
}).
#pos(n11, {}, {f(w(2,63))}, {
start_state(w(69,78)).
}).
#pos(n12, {}, {f(w(10,65))}, {
start_state(w(56,80)).
}).
#pos(n13, {}, {f(w(35,22))}, {
start_state(w(84,28)).
}).
#pos(n14, {}, {f(w(54,90))}, {
start_state(w(79,8)).
}).
#pos(n15, {}, {f(w(10,33))}, {
start_state(w(16,62)).
}).
#pos(n16, {}, {f(w(56,84))}, {
start_state(w(4,20)).
}).
#pos(n17, {}, {f(w(27,90))}, {
start_state(w(41,89)).
}).
#pos(n18, {}, {f(w(5,61))}, {
start_state(w(49,90)).
}).
#pos(n19, {}, {f(w(86,57))}, {
start_state(w(35,71)).
}).
