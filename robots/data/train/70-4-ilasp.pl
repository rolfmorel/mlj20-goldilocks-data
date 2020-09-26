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

#pos(p0, {f(w(35,70))}, {}, {
start_state(w(35,58)).
}).
#pos(p1, {f(w(38,70))}, {}, {
start_state(w(38,68)).
}).
#pos(p2, {f(w(38,70))}, {}, {
start_state(w(38,57)).
}).
#pos(p3, {f(w(16,70))}, {}, {
start_state(w(16,69)).
}).
#pos(p4, {f(w(57,70))}, {}, {
start_state(w(57,32)).
}).
#pos(p5, {f(w(37,70))}, {}, {
start_state(w(37,58)).
}).
#pos(p6, {f(w(53,70))}, {}, {
start_state(w(53,33)).
}).
#pos(p7, {f(w(25,70))}, {}, {
start_state(w(25,46)).
}).
#pos(p8, {f(w(63,70))}, {}, {
start_state(w(63,1)).
}).
#pos(p9, {f(w(48,70))}, {}, {
start_state(w(48,62)).
}).
#pos(p10, {f(w(39,70))}, {}, {
start_state(w(39,61)).
}).
#pos(p11, {f(w(60,70))}, {}, {
start_state(w(60,47)).
}).
#pos(p12, {f(w(69,70))}, {}, {
start_state(w(69,63)).
}).
#pos(p13, {f(w(18,70))}, {}, {
start_state(w(18,48)).
}).
#pos(p14, {f(w(19,70))}, {}, {
start_state(w(19,12)).
}).
#pos(p15, {f(w(51,70))}, {}, {
start_state(w(51,22)).
}).
#pos(p16, {f(w(69,70))}, {}, {
start_state(w(69,20)).
}).
#pos(p17, {f(w(36,70))}, {}, {
start_state(w(36,61)).
}).
#pos(p18, {f(w(11,70))}, {}, {
start_state(w(11,32)).
}).
#pos(p19, {f(w(36,70))}, {}, {
start_state(w(36,41)).
}).
#pos(n0, {}, {f(w(25,36))}, {
start_state(w(18,14)).
}).
#pos(n1, {}, {f(w(30,63))}, {
start_state(w(46,24)).
}).
#pos(n2, {}, {f(w(11,8))}, {
start_state(w(49,29)).
}).
#pos(n3, {}, {f(w(39,8))}, {
start_state(w(67,53)).
}).
#pos(n4, {}, {f(w(7,29))}, {
start_state(w(31,67)).
}).
#pos(n5, {}, {f(w(43,57))}, {
start_state(w(47,52)).
}).
#pos(n6, {}, {f(w(13,42))}, {
start_state(w(3,45)).
}).
#pos(n7, {}, {f(w(18,70))}, {
start_state(w(32,64)).
}).
#pos(n8, {}, {f(w(24,65))}, {
start_state(w(5,19)).
}).
#pos(n9, {}, {f(w(70,70))}, {
start_state(w(38,5)).
}).
#pos(n10, {}, {f(w(2,70))}, {
start_state(w(20,65)).
}).
#pos(n11, {}, {f(w(1,38))}, {
start_state(w(12,50)).
}).
#pos(n12, {}, {f(w(25,4))}, {
start_state(w(27,28)).
}).
#pos(n13, {}, {f(w(36,70))}, {
start_state(w(6,42)).
}).
#pos(n14, {}, {f(w(5,5))}, {
start_state(w(29,39)).
}).
#pos(n15, {}, {f(w(61,7))}, {
start_state(w(16,25)).
}).
#pos(n16, {}, {f(w(4,43))}, {
start_state(w(22,42)).
}).
#pos(n17, {}, {f(w(42,70))}, {
start_state(w(8,44)).
}).
#pos(n18, {}, {f(w(44,5))}, {
start_state(w(19,22)).
}).
#pos(n19, {}, {f(w(28,36))}, {
start_state(w(65,7)).
}).
