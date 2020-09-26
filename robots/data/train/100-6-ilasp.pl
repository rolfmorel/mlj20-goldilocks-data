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

#pos(p0, {f(w(40,100))}, {}, {
start_state(w(40,82)).
}).
#pos(p1, {f(w(8,100))}, {}, {
start_state(w(8,41)).
}).
#pos(p2, {f(w(86,100))}, {}, {
start_state(w(86,97)).
}).
#pos(p3, {f(w(53,100))}, {}, {
start_state(w(53,34)).
}).
#pos(p4, {f(w(66,100))}, {}, {
start_state(w(66,99)).
}).
#pos(p5, {f(w(78,100))}, {}, {
start_state(w(78,8)).
}).
#pos(p6, {f(w(30,100))}, {}, {
start_state(w(30,93)).
}).
#pos(p7, {f(w(7,100))}, {}, {
start_state(w(7,71)).
}).
#pos(p8, {f(w(42,100))}, {}, {
start_state(w(42,15)).
}).
#pos(p9, {f(w(82,100))}, {}, {
start_state(w(82,52)).
}).
#pos(p10, {f(w(22,100))}, {}, {
start_state(w(22,95)).
}).
#pos(p11, {f(w(41,100))}, {}, {
start_state(w(41,88)).
}).
#pos(p12, {f(w(44,100))}, {}, {
start_state(w(44,71)).
}).
#pos(p13, {f(w(36,100))}, {}, {
start_state(w(36,21)).
}).
#pos(p14, {f(w(14,100))}, {}, {
start_state(w(14,64)).
}).
#pos(p15, {f(w(79,100))}, {}, {
start_state(w(79,78)).
}).
#pos(p16, {f(w(36,100))}, {}, {
start_state(w(36,73)).
}).
#pos(p17, {f(w(63,100))}, {}, {
start_state(w(63,59)).
}).
#pos(p18, {f(w(10,100))}, {}, {
start_state(w(10,7)).
}).
#pos(p19, {f(w(62,100))}, {}, {
start_state(w(62,11)).
}).
#pos(n0, {}, {f(w(44,93))}, {
start_state(w(63,16)).
}).
#pos(n1, {}, {f(w(68,11))}, {
start_state(w(86,40)).
}).
#pos(n2, {}, {f(w(57,73))}, {
start_state(w(59,33)).
}).
#pos(n3, {}, {f(w(92,49))}, {
start_state(w(57,59)).
}).
#pos(n4, {}, {f(w(88,80))}, {
start_state(w(37,92)).
}).
#pos(n5, {}, {f(w(25,57))}, {
start_state(w(45,66)).
}).
#pos(n6, {}, {f(w(7,100))}, {
start_state(w(4,90)).
}).
#pos(n7, {}, {f(w(8,7))}, {
start_state(w(22,99)).
}).
#pos(n8, {}, {f(w(13,100))}, {
start_state(w(76,85)).
}).
#pos(n9, {}, {f(w(36,33))}, {
start_state(w(70,83)).
}).
#pos(n10, {}, {f(w(17,59))}, {
start_state(w(66,11)).
}).
#pos(n11, {}, {f(w(11,100))}, {
start_state(w(74,60)).
}).
#pos(n12, {}, {f(w(88,100))}, {
start_state(w(3,67)).
}).
#pos(n13, {}, {f(w(27,72))}, {
start_state(w(9,47)).
}).
#pos(n14, {}, {f(w(100,100))}, {
start_state(w(56,26)).
}).
#pos(n15, {}, {f(w(87,100))}, {
start_state(w(12,20)).
}).
#pos(n16, {}, {f(w(67,100))}, {
start_state(w(13,74)).
}).
#pos(n17, {}, {f(w(39,100))}, {
start_state(w(32,25)).
}).
#pos(n18, {}, {f(w(48,91))}, {
start_state(w(51,16)).
}).
#pos(n19, {}, {f(w(98,69))}, {
start_state(w(44,22)).
}).
