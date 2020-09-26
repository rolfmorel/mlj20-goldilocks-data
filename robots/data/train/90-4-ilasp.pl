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

#pos(p0, {f(w(42,90))}, {}, {
start_state(w(42,34)).
}).
#pos(p1, {f(w(85,90))}, {}, {
start_state(w(85,20)).
}).
#pos(p2, {f(w(60,90))}, {}, {
start_state(w(60,8)).
}).
#pos(p3, {f(w(16,90))}, {}, {
start_state(w(16,81)).
}).
#pos(p4, {f(w(44,90))}, {}, {
start_state(w(44,67)).
}).
#pos(p5, {f(w(82,90))}, {}, {
start_state(w(82,50)).
}).
#pos(p6, {f(w(73,90))}, {}, {
start_state(w(73,30)).
}).
#pos(p7, {f(w(38,90))}, {}, {
start_state(w(38,14)).
}).
#pos(p8, {f(w(66,90))}, {}, {
start_state(w(66,25)).
}).
#pos(p9, {f(w(31,90))}, {}, {
start_state(w(31,80)).
}).
#pos(p10, {f(w(56,90))}, {}, {
start_state(w(56,44)).
}).
#pos(p11, {f(w(6,90))}, {}, {
start_state(w(6,80)).
}).
#pos(p12, {f(w(75,90))}, {}, {
start_state(w(75,87)).
}).
#pos(p13, {f(w(8,90))}, {}, {
start_state(w(8,82)).
}).
#pos(p14, {f(w(7,90))}, {}, {
start_state(w(7,89)).
}).
#pos(p15, {f(w(17,90))}, {}, {
start_state(w(17,12)).
}).
#pos(p16, {f(w(78,90))}, {}, {
start_state(w(78,80)).
}).
#pos(p17, {f(w(48,90))}, {}, {
start_state(w(48,15)).
}).
#pos(p18, {f(w(26,90))}, {}, {
start_state(w(26,47)).
}).
#pos(p19, {f(w(56,90))}, {}, {
start_state(w(56,40)).
}).
#pos(n0, {}, {f(w(21,90))}, {
start_state(w(33,30)).
}).
#pos(n1, {}, {f(w(53,69))}, {
start_state(w(7,84)).
}).
#pos(n2, {}, {f(w(77,90))}, {
start_state(w(29,41)).
}).
#pos(n3, {}, {f(w(27,41))}, {
start_state(w(6,9)).
}).
#pos(n4, {}, {f(w(86,20))}, {
start_state(w(17,35)).
}).
#pos(n5, {}, {f(w(33,90))}, {
start_state(w(46,22)).
}).
#pos(n6, {}, {f(w(89,18))}, {
start_state(w(74,34)).
}).
#pos(n7, {}, {f(w(38,90))}, {
start_state(w(18,59)).
}).
#pos(n8, {}, {f(w(43,68))}, {
start_state(w(81,34)).
}).
#pos(n9, {}, {f(w(6,82))}, {
start_state(w(59,64)).
}).
#pos(n10, {}, {f(w(4,14))}, {
start_state(w(83,6)).
}).
#pos(n11, {}, {f(w(81,17))}, {
start_state(w(50,52)).
}).
#pos(n12, {}, {f(w(44,79))}, {
start_state(w(25,5)).
}).
#pos(n13, {}, {f(w(14,13))}, {
start_state(w(47,74)).
}).
#pos(n14, {}, {f(w(25,5))}, {
start_state(w(5,50)).
}).
#pos(n15, {}, {f(w(60,5))}, {
start_state(w(84,74)).
}).
#pos(n16, {}, {f(w(62,4))}, {
start_state(w(56,61)).
}).
#pos(n17, {}, {f(w(48,50))}, {
start_state(w(44,47)).
}).
#pos(n18, {}, {f(w(2,42))}, {
start_state(w(58,59)).
}).
#pos(n19, {}, {f(w(53,76))}, {
start_state(w(15,6)).
}).
