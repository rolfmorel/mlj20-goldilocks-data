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

#pos(p0, {f(w(5,100))}, {}, {
start_state(w(5,42)).
}).
#pos(p1, {f(w(3,100))}, {}, {
start_state(w(3,15)).
}).
#pos(p2, {f(w(65,100))}, {}, {
start_state(w(65,76)).
}).
#pos(p3, {f(w(4,100))}, {}, {
start_state(w(4,44)).
}).
#pos(p4, {f(w(51,100))}, {}, {
start_state(w(51,1)).
}).
#pos(p5, {f(w(29,100))}, {}, {
start_state(w(29,22)).
}).
#pos(p6, {f(w(99,100))}, {}, {
start_state(w(99,40)).
}).
#pos(p7, {f(w(33,100))}, {}, {
start_state(w(33,4)).
}).
#pos(p8, {f(w(4,100))}, {}, {
start_state(w(4,66)).
}).
#pos(p9, {f(w(8,100))}, {}, {
start_state(w(8,31)).
}).
#pos(p10, {f(w(73,100))}, {}, {
start_state(w(73,39)).
}).
#pos(p11, {f(w(33,100))}, {}, {
start_state(w(33,54)).
}).
#pos(p12, {f(w(32,100))}, {}, {
start_state(w(32,68)).
}).
#pos(p13, {f(w(24,100))}, {}, {
start_state(w(24,6)).
}).
#pos(p14, {f(w(72,100))}, {}, {
start_state(w(72,36)).
}).
#pos(p15, {f(w(99,100))}, {}, {
start_state(w(99,86)).
}).
#pos(p16, {f(w(81,100))}, {}, {
start_state(w(81,59)).
}).
#pos(p17, {f(w(53,100))}, {}, {
start_state(w(53,25)).
}).
#pos(p18, {f(w(22,100))}, {}, {
start_state(w(22,37)).
}).
#pos(p19, {f(w(69,100))}, {}, {
start_state(w(69,17)).
}).
#pos(n0, {}, {f(w(87,89))}, {
start_state(w(2,89)).
}).
#pos(n1, {}, {f(w(89,45))}, {
start_state(w(21,63)).
}).
#pos(n2, {}, {f(w(46,100))}, {
start_state(w(89,89)).
}).
#pos(n3, {}, {f(w(45,37))}, {
start_state(w(80,64)).
}).
#pos(n4, {}, {f(w(12,100))}, {
start_state(w(38,99)).
}).
#pos(n5, {}, {f(w(19,50))}, {
start_state(w(61,61)).
}).
#pos(n6, {}, {f(w(44,37))}, {
start_state(w(77,34)).
}).
#pos(n7, {}, {f(w(50,77))}, {
start_state(w(83,32)).
}).
#pos(n8, {}, {f(w(64,100))}, {
start_state(w(36,24)).
}).
#pos(n9, {}, {f(w(59,64))}, {
start_state(w(37,66)).
}).
#pos(n10, {}, {f(w(4,89))}, {
start_state(w(74,62)).
}).
#pos(n11, {}, {f(w(84,100))}, {
start_state(w(12,28)).
}).
#pos(n12, {}, {f(w(13,100))}, {
start_state(w(50,17)).
}).
#pos(n13, {}, {f(w(44,20))}, {
start_state(w(86,29)).
}).
#pos(n14, {}, {f(w(34,37))}, {
start_state(w(70,14)).
}).
#pos(n15, {}, {f(w(33,95))}, {
start_state(w(96,19)).
}).
#pos(n16, {}, {f(w(64,65))}, {
start_state(w(73,95)).
}).
#pos(n17, {}, {f(w(18,43))}, {
start_state(w(93,87)).
}).
#pos(n18, {}, {f(w(53,100))}, {
start_state(w(65,58)).
}).
#pos(n19, {}, {f(w(58,100))}, {
start_state(w(81,75)).
}).
