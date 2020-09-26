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

#pos(p0, {f(w(26,90))}, {}, {
start_state(w(26,52)).
}).
#pos(p1, {f(w(85,90))}, {}, {
start_state(w(85,26)).
}).
#pos(p2, {f(w(13,90))}, {}, {
start_state(w(13,81)).
}).
#pos(p3, {f(w(70,90))}, {}, {
start_state(w(70,74)).
}).
#pos(p4, {f(w(64,90))}, {}, {
start_state(w(64,17)).
}).
#pos(p5, {f(w(52,90))}, {}, {
start_state(w(52,6)).
}).
#pos(p6, {f(w(26,90))}, {}, {
start_state(w(26,67)).
}).
#pos(p7, {f(w(80,90))}, {}, {
start_state(w(80,34)).
}).
#pos(p8, {f(w(54,90))}, {}, {
start_state(w(54,5)).
}).
#pos(p9, {f(w(40,90))}, {}, {
start_state(w(40,41)).
}).
#pos(p10, {f(w(68,90))}, {}, {
start_state(w(68,33)).
}).
#pos(p11, {f(w(19,90))}, {}, {
start_state(w(19,75)).
}).
#pos(p12, {f(w(90,90))}, {}, {
start_state(w(90,17)).
}).
#pos(p13, {f(w(31,90))}, {}, {
start_state(w(31,84)).
}).
#pos(p14, {f(w(15,90))}, {}, {
start_state(w(15,82)).
}).
#pos(p15, {f(w(44,90))}, {}, {
start_state(w(44,8)).
}).
#pos(p16, {f(w(14,90))}, {}, {
start_state(w(14,75)).
}).
#pos(p17, {f(w(35,90))}, {}, {
start_state(w(35,44)).
}).
#pos(p18, {f(w(90,90))}, {}, {
start_state(w(90,40)).
}).
#pos(p19, {f(w(7,90))}, {}, {
start_state(w(7,16)).
}).
#pos(n0, {}, {f(w(26,23))}, {
start_state(w(53,32)).
}).
#pos(n1, {}, {f(w(13,74))}, {
start_state(w(65,49)).
}).
#pos(n2, {}, {f(w(41,21))}, {
start_state(w(33,20)).
}).
#pos(n3, {}, {f(w(87,90))}, {
start_state(w(10,2)).
}).
#pos(n4, {}, {f(w(75,67))}, {
start_state(w(88,50)).
}).
#pos(n5, {}, {f(w(63,90))}, {
start_state(w(80,67)).
}).
#pos(n6, {}, {f(w(60,50))}, {
start_state(w(43,15)).
}).
#pos(n7, {}, {f(w(43,81))}, {
start_state(w(15,15)).
}).
#pos(n8, {}, {f(w(61,24))}, {
start_state(w(81,87)).
}).
#pos(n9, {}, {f(w(19,39))}, {
start_state(w(38,78)).
}).
#pos(n10, {}, {f(w(82,8))}, {
start_state(w(48,20)).
}).
#pos(n11, {}, {f(w(58,77))}, {
start_state(w(1,84)).
}).
#pos(n12, {}, {f(w(17,36))}, {
start_state(w(36,80)).
}).
#pos(n13, {}, {f(w(2,90))}, {
start_state(w(57,73)).
}).
#pos(n14, {}, {f(w(70,12))}, {
start_state(w(5,74)).
}).
#pos(n15, {}, {f(w(27,44))}, {
start_state(w(79,76)).
}).
#pos(n16, {}, {f(w(86,25))}, {
start_state(w(15,35)).
}).
#pos(n17, {}, {f(w(24,48))}, {
start_state(w(19,58)).
}).
#pos(n18, {}, {f(w(24,39))}, {
start_state(w(28,89)).
}).
#pos(n19, {}, {f(w(21,69))}, {
start_state(w(56,23)).
}).
