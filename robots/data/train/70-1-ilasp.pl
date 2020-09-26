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

#pos(p0, {f(w(38,70))}, {}, {
start_state(w(38,32)).
}).
#pos(p1, {f(w(40,70))}, {}, {
start_state(w(40,24)).
}).
#pos(p2, {f(w(5,70))}, {}, {
start_state(w(5,59)).
}).
#pos(p3, {f(w(13,70))}, {}, {
start_state(w(13,39)).
}).
#pos(p4, {f(w(32,70))}, {}, {
start_state(w(32,39)).
}).
#pos(p5, {f(w(53,70))}, {}, {
start_state(w(53,17)).
}).
#pos(p6, {f(w(28,70))}, {}, {
start_state(w(28,68)).
}).
#pos(p7, {f(w(1,70))}, {}, {
start_state(w(1,51)).
}).
#pos(p8, {f(w(9,70))}, {}, {
start_state(w(9,63)).
}).
#pos(p9, {f(w(55,70))}, {}, {
start_state(w(55,33)).
}).
#pos(p10, {f(w(11,70))}, {}, {
start_state(w(11,8)).
}).
#pos(p11, {f(w(2,70))}, {}, {
start_state(w(2,64)).
}).
#pos(p12, {f(w(65,70))}, {}, {
start_state(w(65,49)).
}).
#pos(p13, {f(w(57,70))}, {}, {
start_state(w(57,46)).
}).
#pos(p14, {f(w(61,70))}, {}, {
start_state(w(61,35)).
}).
#pos(p15, {f(w(50,70))}, {}, {
start_state(w(50,25)).
}).
#pos(p16, {f(w(45,70))}, {}, {
start_state(w(45,44)).
}).
#pos(p17, {f(w(9,70))}, {}, {
start_state(w(9,18)).
}).
#pos(p18, {f(w(43,70))}, {}, {
start_state(w(43,48)).
}).
#pos(p19, {f(w(1,70))}, {}, {
start_state(w(1,14)).
}).
#pos(n0, {}, {f(w(22,48))}, {
start_state(w(23,5)).
}).
#pos(n1, {}, {f(w(39,60))}, {
start_state(w(16,27)).
}).
#pos(n2, {}, {f(w(6,38))}, {
start_state(w(27,36)).
}).
#pos(n3, {}, {f(w(21,25))}, {
start_state(w(30,21)).
}).
#pos(n4, {}, {f(w(63,29))}, {
start_state(w(52,53)).
}).
#pos(n5, {}, {f(w(37,8))}, {
start_state(w(16,44)).
}).
#pos(n6, {}, {f(w(44,16))}, {
start_state(w(28,7)).
}).
#pos(n7, {}, {f(w(64,67))}, {
start_state(w(50,43)).
}).
#pos(n8, {}, {f(w(12,70))}, {
start_state(w(22,54)).
}).
#pos(n9, {}, {f(w(6,23))}, {
start_state(w(57,39)).
}).
#pos(n10, {}, {f(w(8,27))}, {
start_state(w(12,7)).
}).
#pos(n11, {}, {f(w(37,18))}, {
start_state(w(16,12)).
}).
#pos(n12, {}, {f(w(49,1))}, {
start_state(w(45,10)).
}).
#pos(n13, {}, {f(w(27,63))}, {
start_state(w(45,52)).
}).
#pos(n14, {}, {f(w(70,37))}, {
start_state(w(23,52)).
}).
#pos(n15, {}, {f(w(60,61))}, {
start_state(w(25,44)).
}).
#pos(n16, {}, {f(w(62,3))}, {
start_state(w(48,35)).
}).
#pos(n17, {}, {f(w(43,31))}, {
start_state(w(38,36)).
}).
#pos(n18, {}, {f(w(40,57))}, {
start_state(w(51,10)).
}).
#pos(n19, {}, {f(w(49,33))}, {
start_state(w(5,49)).
}).
