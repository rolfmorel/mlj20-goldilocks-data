size(70).
position(1..70).
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

#pos(p0, {f(w(20,70))}, {}, {
start_state(w(20,31)).
}).
#pos(p1, {f(w(20,70))}, {}, {
start_state(w(20,12)).
}).
#pos(p2, {f(w(9,70))}, {}, {
start_state(w(9,57)).
}).
#pos(p3, {f(w(10,70))}, {}, {
start_state(w(10,37)).
}).
#pos(p4, {f(w(1,70))}, {}, {
start_state(w(1,48)).
}).
#pos(p5, {f(w(5,70))}, {}, {
start_state(w(5,60)).
}).
#pos(p6, {f(w(31,70))}, {}, {
start_state(w(31,59)).
}).
#pos(p7, {f(w(60,70))}, {}, {
start_state(w(60,31)).
}).
#pos(p8, {f(w(67,70))}, {}, {
start_state(w(67,20)).
}).
#pos(p9, {f(w(51,70))}, {}, {
start_state(w(51,68)).
}).
#pos(p10, {f(w(2,70))}, {}, {
start_state(w(2,60)).
}).
#pos(p11, {f(w(2,70))}, {}, {
start_state(w(2,12)).
}).
#pos(p12, {f(w(44,70))}, {}, {
start_state(w(44,23)).
}).
#pos(p13, {f(w(63,70))}, {}, {
start_state(w(63,64)).
}).
#pos(p14, {f(w(63,70))}, {}, {
start_state(w(63,15)).
}).
#pos(p15, {f(w(19,70))}, {}, {
start_state(w(19,67)).
}).
#pos(p16, {f(w(32,70))}, {}, {
start_state(w(32,5)).
}).
#pos(p17, {f(w(46,70))}, {}, {
start_state(w(46,34)).
}).
#pos(p18, {f(w(39,70))}, {}, {
start_state(w(39,63)).
}).
#pos(p19, {f(w(12,70))}, {}, {
start_state(w(12,37)).
}).
#pos(n0, {}, {f(w(53,54))}, {
start_state(w(70,41)).
}).
#pos(n1, {}, {f(w(11,70))}, {
start_state(w(30,47)).
}).
#pos(n2, {}, {f(w(34,70))}, {
start_state(w(6,37)).
}).
#pos(n3, {}, {f(w(10,22))}, {
start_state(w(57,18)).
}).
#pos(n4, {}, {f(w(38,20))}, {
start_state(w(64,35)).
}).
#pos(n5, {}, {f(w(24,70))}, {
start_state(w(53,17)).
}).
#pos(n6, {}, {f(w(16,70))}, {
start_state(w(22,12)).
}).
#pos(n7, {}, {f(w(67,39))}, {
start_state(w(48,32)).
}).
#pos(n8, {}, {f(w(52,24))}, {
start_state(w(14,45)).
}).
#pos(n9, {}, {f(w(9,40))}, {
start_state(w(47,13)).
}).
#pos(n10, {}, {f(w(26,70))}, {
start_state(w(61,29)).
}).
#pos(n11, {}, {f(w(25,36))}, {
start_state(w(4,38)).
}).
#pos(n12, {}, {f(w(47,44))}, {
start_state(w(26,34)).
}).
#pos(n13, {}, {f(w(65,33))}, {
start_state(w(11,14)).
}).
#pos(n14, {}, {f(w(22,31))}, {
start_state(w(56,21)).
}).
#pos(n15, {}, {f(w(59,70))}, {
start_state(w(52,3)).
}).
#pos(n16, {}, {f(w(4,40))}, {
start_state(w(33,62)).
}).
#pos(n17, {}, {f(w(18,47))}, {
start_state(w(50,21)).
}).
#pos(n18, {}, {f(w(35,13))}, {
start_state(w(7,10)).
}).
#pos(n19, {}, {f(w(56,70))}, {
start_state(w(39,18)).
}).
