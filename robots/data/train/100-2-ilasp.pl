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

#pos(p0, {f(w(42,100))}, {}, {
start_state(w(42,99)).
}).
#pos(p1, {f(w(65,100))}, {}, {
start_state(w(65,32)).
}).
#pos(p2, {f(w(43,100))}, {}, {
start_state(w(43,75)).
}).
#pos(p3, {f(w(5,100))}, {}, {
start_state(w(5,38)).
}).
#pos(p4, {f(w(5,100))}, {}, {
start_state(w(5,88)).
}).
#pos(p5, {f(w(94,100))}, {}, {
start_state(w(94,9)).
}).
#pos(p6, {f(w(35,100))}, {}, {
start_state(w(35,64)).
}).
#pos(p7, {f(w(35,100))}, {}, {
start_state(w(35,90)).
}).
#pos(p8, {f(w(80,100))}, {}, {
start_state(w(80,75)).
}).
#pos(p9, {f(w(88,100))}, {}, {
start_state(w(88,16)).
}).
#pos(p10, {f(w(86,100))}, {}, {
start_state(w(86,30)).
}).
#pos(p11, {f(w(46,100))}, {}, {
start_state(w(46,66)).
}).
#pos(p12, {f(w(18,100))}, {}, {
start_state(w(18,79)).
}).
#pos(p13, {f(w(37,100))}, {}, {
start_state(w(37,20)).
}).
#pos(p14, {f(w(41,100))}, {}, {
start_state(w(41,51)).
}).
#pos(p15, {f(w(47,100))}, {}, {
start_state(w(47,59)).
}).
#pos(p16, {f(w(32,100))}, {}, {
start_state(w(32,60)).
}).
#pos(p17, {f(w(17,100))}, {}, {
start_state(w(17,75)).
}).
#pos(p18, {f(w(75,100))}, {}, {
start_state(w(75,38)).
}).
#pos(p19, {f(w(87,100))}, {}, {
start_state(w(87,68)).
}).
#pos(n0, {}, {f(w(3,17))}, {
start_state(w(32,34)).
}).
#pos(n1, {}, {f(w(86,67))}, {
start_state(w(16,46)).
}).
#pos(n2, {}, {f(w(51,39))}, {
start_state(w(21,24)).
}).
#pos(n3, {}, {f(w(41,78))}, {
start_state(w(86,42)).
}).
#pos(n4, {}, {f(w(42,35))}, {
start_state(w(99,49)).
}).
#pos(n5, {}, {f(w(74,52))}, {
start_state(w(82,97)).
}).
#pos(n6, {}, {f(w(10,100))}, {
start_state(w(63,10)).
}).
#pos(n7, {}, {f(w(33,62))}, {
start_state(w(13,48)).
}).
#pos(n8, {}, {f(w(69,100))}, {
start_state(w(46,44)).
}).
#pos(n9, {}, {f(w(47,70))}, {
start_state(w(8,68)).
}).
#pos(n10, {}, {f(w(33,100))}, {
start_state(w(36,2)).
}).
#pos(n11, {}, {f(w(45,31))}, {
start_state(w(11,56)).
}).
#pos(n12, {}, {f(w(65,10))}, {
start_state(w(17,50)).
}).
#pos(n13, {}, {f(w(2,86))}, {
start_state(w(94,60)).
}).
#pos(n14, {}, {f(w(89,100))}, {
start_state(w(76,47)).
}).
#pos(n15, {}, {f(w(8,100))}, {
start_state(w(10,62)).
}).
#pos(n16, {}, {f(w(19,100))}, {
start_state(w(61,14)).
}).
#pos(n17, {}, {f(w(19,87))}, {
start_state(w(72,87)).
}).
#pos(n18, {}, {f(w(25,34))}, {
start_state(w(46,72)).
}).
#pos(n19, {}, {f(w(26,83))}, {
start_state(w(97,10)).
}).
