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

#pos(p0, {f(w(15,70))}, {}, {
start_state(w(15,49)).
}).
#pos(p1, {f(w(36,70))}, {}, {
start_state(w(36,57)).
}).
#pos(p2, {f(w(21,70))}, {}, {
start_state(w(21,37)).
}).
#pos(p3, {f(w(2,70))}, {}, {
start_state(w(2,10)).
}).
#pos(p4, {f(w(26,70))}, {}, {
start_state(w(26,43)).
}).
#pos(p5, {f(w(53,70))}, {}, {
start_state(w(53,45)).
}).
#pos(p6, {f(w(28,70))}, {}, {
start_state(w(28,60)).
}).
#pos(p7, {f(w(31,70))}, {}, {
start_state(w(31,35)).
}).
#pos(p8, {f(w(70,70))}, {}, {
start_state(w(70,36)).
}).
#pos(p9, {f(w(33,70))}, {}, {
start_state(w(33,21)).
}).
#pos(p10, {f(w(57,70))}, {}, {
start_state(w(57,53)).
}).
#pos(p11, {f(w(56,70))}, {}, {
start_state(w(56,69)).
}).
#pos(p12, {f(w(65,70))}, {}, {
start_state(w(65,14)).
}).
#pos(p13, {f(w(70,70))}, {}, {
start_state(w(70,33)).
}).
#pos(p14, {f(w(7,70))}, {}, {
start_state(w(7,59)).
}).
#pos(p15, {f(w(49,70))}, {}, {
start_state(w(49,52)).
}).
#pos(p16, {f(w(44,70))}, {}, {
start_state(w(44,50)).
}).
#pos(p17, {f(w(47,70))}, {}, {
start_state(w(47,15)).
}).
#pos(p18, {f(w(69,70))}, {}, {
start_state(w(69,54)).
}).
#pos(p19, {f(w(7,70))}, {}, {
start_state(w(7,54)).
}).
#pos(n0, {}, {f(w(17,70))}, {
start_state(w(23,2)).
}).
#pos(n1, {}, {f(w(51,57))}, {
start_state(w(11,20)).
}).
#pos(n2, {}, {f(w(64,22))}, {
start_state(w(51,61)).
}).
#pos(n3, {}, {f(w(64,70))}, {
start_state(w(53,1)).
}).
#pos(n4, {}, {f(w(48,70))}, {
start_state(w(65,68)).
}).
#pos(n5, {}, {f(w(55,70))}, {
start_state(w(35,39)).
}).
#pos(n6, {}, {f(w(45,51))}, {
start_state(w(12,61)).
}).
#pos(n7, {}, {f(w(36,70))}, {
start_state(w(45,57)).
}).
#pos(n8, {}, {f(w(30,51))}, {
start_state(w(64,21)).
}).
#pos(n9, {}, {f(w(16,25))}, {
start_state(w(50,37)).
}).
#pos(n10, {}, {f(w(22,70))}, {
start_state(w(60,42)).
}).
#pos(n11, {}, {f(w(2,68))}, {
start_state(w(63,45)).
}).
#pos(n12, {}, {f(w(45,70))}, {
start_state(w(69,21)).
}).
#pos(n13, {}, {f(w(70,50))}, {
start_state(w(15,31)).
}).
#pos(n14, {}, {f(w(26,39))}, {
start_state(w(34,8)).
}).
#pos(n15, {}, {f(w(38,32))}, {
start_state(w(24,36)).
}).
#pos(n16, {}, {f(w(47,58))}, {
start_state(w(68,34)).
}).
#pos(n17, {}, {f(w(50,11))}, {
start_state(w(18,17)).
}).
#pos(n18, {}, {f(w(44,70))}, {
start_state(w(42,6)).
}).
#pos(n19, {}, {f(w(38,70))}, {
start_state(w(5,69)).
}).
