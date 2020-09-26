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

#pos(p0, {f(w(69,90))}, {}, {
start_state(w(69,52)).
}).
#pos(p1, {f(w(80,90))}, {}, {
start_state(w(80,22)).
}).
#pos(p2, {f(w(88,90))}, {}, {
start_state(w(88,21)).
}).
#pos(p3, {f(w(39,90))}, {}, {
start_state(w(39,3)).
}).
#pos(p4, {f(w(90,90))}, {}, {
start_state(w(90,70)).
}).
#pos(p5, {f(w(5,90))}, {}, {
start_state(w(5,7)).
}).
#pos(p6, {f(w(52,90))}, {}, {
start_state(w(52,41)).
}).
#pos(p7, {f(w(75,90))}, {}, {
start_state(w(75,88)).
}).
#pos(p8, {f(w(17,90))}, {}, {
start_state(w(17,23)).
}).
#pos(p9, {f(w(88,90))}, {}, {
start_state(w(88,7)).
}).
#pos(p10, {f(w(41,90))}, {}, {
start_state(w(41,5)).
}).
#pos(p11, {f(w(32,90))}, {}, {
start_state(w(32,53)).
}).
#pos(p12, {f(w(70,90))}, {}, {
start_state(w(70,73)).
}).
#pos(p13, {f(w(54,90))}, {}, {
start_state(w(54,22)).
}).
#pos(p14, {f(w(47,90))}, {}, {
start_state(w(47,45)).
}).
#pos(p15, {f(w(89,90))}, {}, {
start_state(w(89,55)).
}).
#pos(p16, {f(w(48,90))}, {}, {
start_state(w(48,2)).
}).
#pos(p17, {f(w(84,90))}, {}, {
start_state(w(84,56)).
}).
#pos(p18, {f(w(36,90))}, {}, {
start_state(w(36,6)).
}).
#pos(p19, {f(w(22,90))}, {}, {
start_state(w(22,78)).
}).
#pos(n0, {}, {f(w(8,90))}, {
start_state(w(89,53)).
}).
#pos(n1, {}, {f(w(79,1))}, {
start_state(w(85,82)).
}).
#pos(n2, {}, {f(w(78,63))}, {
start_state(w(10,42)).
}).
#pos(n3, {}, {f(w(82,1))}, {
start_state(w(21,35)).
}).
#pos(n4, {}, {f(w(6,90))}, {
start_state(w(82,45)).
}).
#pos(n5, {}, {f(w(6,8))}, {
start_state(w(76,34)).
}).
#pos(n6, {}, {f(w(72,46))}, {
start_state(w(12,33)).
}).
#pos(n7, {}, {f(w(55,16))}, {
start_state(w(58,2)).
}).
#pos(n8, {}, {f(w(40,34))}, {
start_state(w(74,34)).
}).
#pos(n9, {}, {f(w(30,12))}, {
start_state(w(86,89)).
}).
#pos(n10, {}, {f(w(80,12))}, {
start_state(w(30,42)).
}).
#pos(n11, {}, {f(w(81,14))}, {
start_state(w(11,59)).
}).
#pos(n12, {}, {f(w(62,90))}, {
start_state(w(65,6)).
}).
#pos(n13, {}, {f(w(85,12))}, {
start_state(w(41,15)).
}).
#pos(n14, {}, {f(w(52,83))}, {
start_state(w(77,49)).
}).
#pos(n15, {}, {f(w(80,34))}, {
start_state(w(42,42)).
}).
#pos(n16, {}, {f(w(75,90))}, {
start_state(w(49,20)).
}).
#pos(n17, {}, {f(w(52,45))}, {
start_state(w(57,59)).
}).
#pos(n18, {}, {f(w(34,90))}, {
start_state(w(1,34)).
}).
#pos(n19, {}, {f(w(88,41))}, {
start_state(w(63,51)).
}).
