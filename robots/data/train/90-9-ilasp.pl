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

#pos(p0, {f(w(83,90))}, {}, {
start_state(w(83,43)).
}).
#pos(p1, {f(w(5,90))}, {}, {
start_state(w(5,42)).
}).
#pos(p2, {f(w(22,90))}, {}, {
start_state(w(22,15)).
}).
#pos(p3, {f(w(85,90))}, {}, {
start_state(w(85,11)).
}).
#pos(p4, {f(w(9,90))}, {}, {
start_state(w(9,77)).
}).
#pos(p5, {f(w(52,90))}, {}, {
start_state(w(52,16)).
}).
#pos(p6, {f(w(41,90))}, {}, {
start_state(w(41,64)).
}).
#pos(p7, {f(w(14,90))}, {}, {
start_state(w(14,42)).
}).
#pos(p8, {f(w(3,90))}, {}, {
start_state(w(3,75)).
}).
#pos(p9, {f(w(81,90))}, {}, {
start_state(w(81,21)).
}).
#pos(p10, {f(w(38,90))}, {}, {
start_state(w(38,74)).
}).
#pos(p11, {f(w(65,90))}, {}, {
start_state(w(65,41)).
}).
#pos(p12, {f(w(17,90))}, {}, {
start_state(w(17,19)).
}).
#pos(p13, {f(w(90,90))}, {}, {
start_state(w(90,7)).
}).
#pos(p14, {f(w(18,90))}, {}, {
start_state(w(18,69)).
}).
#pos(p15, {f(w(33,90))}, {}, {
start_state(w(33,54)).
}).
#pos(p16, {f(w(65,90))}, {}, {
start_state(w(65,72)).
}).
#pos(p17, {f(w(27,90))}, {}, {
start_state(w(27,43)).
}).
#pos(p18, {f(w(44,90))}, {}, {
start_state(w(44,86)).
}).
#pos(p19, {f(w(79,90))}, {}, {
start_state(w(79,89)).
}).
#pos(n0, {}, {f(w(4,55))}, {
start_state(w(7,90)).
}).
#pos(n1, {}, {f(w(7,90))}, {
start_state(w(66,80)).
}).
#pos(n2, {}, {f(w(45,24))}, {
start_state(w(6,1)).
}).
#pos(n3, {}, {f(w(32,90))}, {
start_state(w(50,49)).
}).
#pos(n4, {}, {f(w(17,5))}, {
start_state(w(29,70)).
}).
#pos(n5, {}, {f(w(80,36))}, {
start_state(w(77,11)).
}).
#pos(n6, {}, {f(w(67,21))}, {
start_state(w(70,14)).
}).
#pos(n7, {}, {f(w(43,90))}, {
start_state(w(9,11)).
}).
#pos(n8, {}, {f(w(64,90))}, {
start_state(w(23,17)).
}).
#pos(n9, {}, {f(w(46,14))}, {
start_state(w(43,75)).
}).
#pos(n10, {}, {f(w(41,22))}, {
start_state(w(63,80)).
}).
#pos(n11, {}, {f(w(38,17))}, {
start_state(w(42,80)).
}).
#pos(n12, {}, {f(w(19,64))}, {
start_state(w(78,18)).
}).
#pos(n13, {}, {f(w(59,29))}, {
start_state(w(1,73)).
}).
#pos(n14, {}, {f(w(65,73))}, {
start_state(w(53,63)).
}).
#pos(n15, {}, {f(w(1,42))}, {
start_state(w(68,16)).
}).
#pos(n16, {}, {f(w(15,90))}, {
start_state(w(59,49)).
}).
#pos(n17, {}, {f(w(90,41))}, {
start_state(w(9,7)).
}).
#pos(n18, {}, {f(w(73,32))}, {
start_state(w(33,34)).
}).
#pos(n19, {}, {f(w(20,90))}, {
start_state(w(82,85)).
}).
