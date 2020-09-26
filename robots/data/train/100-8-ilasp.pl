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

#pos(p0, {f(w(46,100))}, {}, {
start_state(w(46,69)).
}).
#pos(p1, {f(w(19,100))}, {}, {
start_state(w(19,30)).
}).
#pos(p2, {f(w(56,100))}, {}, {
start_state(w(56,7)).
}).
#pos(p3, {f(w(10,100))}, {}, {
start_state(w(10,35)).
}).
#pos(p4, {f(w(81,100))}, {}, {
start_state(w(81,41)).
}).
#pos(p5, {f(w(100,100))}, {}, {
start_state(w(100,79)).
}).
#pos(p6, {f(w(95,100))}, {}, {
start_state(w(95,49)).
}).
#pos(p7, {f(w(6,100))}, {}, {
start_state(w(6,87)).
}).
#pos(p8, {f(w(21,100))}, {}, {
start_state(w(21,24)).
}).
#pos(p9, {f(w(6,100))}, {}, {
start_state(w(6,25)).
}).
#pos(p10, {f(w(37,100))}, {}, {
start_state(w(37,88)).
}).
#pos(p11, {f(w(25,100))}, {}, {
start_state(w(25,23)).
}).
#pos(p12, {f(w(40,100))}, {}, {
start_state(w(40,1)).
}).
#pos(p13, {f(w(72,100))}, {}, {
start_state(w(72,60)).
}).
#pos(p14, {f(w(81,100))}, {}, {
start_state(w(81,88)).
}).
#pos(p15, {f(w(76,100))}, {}, {
start_state(w(76,17)).
}).
#pos(p16, {f(w(80,100))}, {}, {
start_state(w(80,40)).
}).
#pos(p17, {f(w(46,100))}, {}, {
start_state(w(46,44)).
}).
#pos(p18, {f(w(64,100))}, {}, {
start_state(w(64,79)).
}).
#pos(p19, {f(w(67,100))}, {}, {
start_state(w(67,66)).
}).
#pos(n0, {}, {f(w(8,83))}, {
start_state(w(67,56)).
}).
#pos(n1, {}, {f(w(81,80))}, {
start_state(w(47,36)).
}).
#pos(n2, {}, {f(w(5,100))}, {
start_state(w(67,31)).
}).
#pos(n3, {}, {f(w(39,93))}, {
start_state(w(91,92)).
}).
#pos(n4, {}, {f(w(45,67))}, {
start_state(w(100,95)).
}).
#pos(n5, {}, {f(w(79,69))}, {
start_state(w(94,25)).
}).
#pos(n6, {}, {f(w(81,38))}, {
start_state(w(95,88)).
}).
#pos(n7, {}, {f(w(12,20))}, {
start_state(w(44,75)).
}).
#pos(n8, {}, {f(w(41,33))}, {
start_state(w(42,18)).
}).
#pos(n9, {}, {f(w(86,6))}, {
start_state(w(96,46)).
}).
#pos(n10, {}, {f(w(14,66))}, {
start_state(w(84,11)).
}).
#pos(n11, {}, {f(w(32,82))}, {
start_state(w(35,45)).
}).
#pos(n12, {}, {f(w(31,76))}, {
start_state(w(6,90)).
}).
#pos(n13, {}, {f(w(17,25))}, {
start_state(w(46,100)).
}).
#pos(n14, {}, {f(w(13,21))}, {
start_state(w(20,20)).
}).
#pos(n15, {}, {f(w(31,100))}, {
start_state(w(56,9)).
}).
#pos(n16, {}, {f(w(73,100))}, {
start_state(w(36,35)).
}).
#pos(n17, {}, {f(w(9,100))}, {
start_state(w(86,98)).
}).
#pos(n18, {}, {f(w(98,42))}, {
start_state(w(32,32)).
}).
#pos(n19, {}, {f(w(13,30))}, {
start_state(w(48,84)).
}).
