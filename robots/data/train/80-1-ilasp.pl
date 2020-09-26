size(80).
position(1..80).
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

#pos(p0, {f(w(59,80))}, {}, {
start_state(w(59,19)).
}).
#pos(p1, {f(w(6,80))}, {}, {
start_state(w(6,54)).
}).
#pos(p2, {f(w(26,80))}, {}, {
start_state(w(26,19)).
}).
#pos(p3, {f(w(61,80))}, {}, {
start_state(w(61,60)).
}).
#pos(p4, {f(w(50,80))}, {}, {
start_state(w(50,35)).
}).
#pos(p5, {f(w(48,80))}, {}, {
start_state(w(48,41)).
}).
#pos(p6, {f(w(3,80))}, {}, {
start_state(w(3,76)).
}).
#pos(p7, {f(w(46,80))}, {}, {
start_state(w(46,79)).
}).
#pos(p8, {f(w(3,80))}, {}, {
start_state(w(3,13)).
}).
#pos(p9, {f(w(21,80))}, {}, {
start_state(w(21,35)).
}).
#pos(p10, {f(w(6,80))}, {}, {
start_state(w(6,47)).
}).
#pos(p11, {f(w(7,80))}, {}, {
start_state(w(7,53)).
}).
#pos(p12, {f(w(2,80))}, {}, {
start_state(w(2,38)).
}).
#pos(p13, {f(w(39,80))}, {}, {
start_state(w(39,27)).
}).
#pos(p14, {f(w(9,80))}, {}, {
start_state(w(9,3)).
}).
#pos(p15, {f(w(8,80))}, {}, {
start_state(w(8,72)).
}).
#pos(p16, {f(w(13,80))}, {}, {
start_state(w(13,38)).
}).
#pos(p17, {f(w(72,80))}, {}, {
start_state(w(72,52)).
}).
#pos(p18, {f(w(68,80))}, {}, {
start_state(w(68,73)).
}).
#pos(p19, {f(w(73,80))}, {}, {
start_state(w(73,27)).
}).
#pos(n0, {}, {f(w(72,30))}, {
start_state(w(75,31)).
}).
#pos(n1, {}, {f(w(10,47))}, {
start_state(w(62,32)).
}).
#pos(n2, {}, {f(w(14,80))}, {
start_state(w(36,62)).
}).
#pos(n3, {}, {f(w(6,67))}, {
start_state(w(1,11)).
}).
#pos(n4, {}, {f(w(19,2))}, {
start_state(w(56,67)).
}).
#pos(n5, {}, {f(w(56,14))}, {
start_state(w(32,4)).
}).
#pos(n6, {}, {f(w(73,50))}, {
start_state(w(44,23)).
}).
#pos(n7, {}, {f(w(6,65))}, {
start_state(w(12,21)).
}).
#pos(n8, {}, {f(w(6,72))}, {
start_state(w(65,53)).
}).
#pos(n9, {}, {f(w(74,2))}, {
start_state(w(52,71)).
}).
#pos(n10, {}, {f(w(44,80))}, {
start_state(w(19,14)).
}).
#pos(n11, {}, {f(w(27,24))}, {
start_state(w(76,22)).
}).
#pos(n12, {}, {f(w(2,11))}, {
start_state(w(1,28)).
}).
#pos(n13, {}, {f(w(33,71))}, {
start_state(w(63,58)).
}).
#pos(n14, {}, {f(w(76,35))}, {
start_state(w(26,70)).
}).
#pos(n15, {}, {f(w(20,27))}, {
start_state(w(15,62)).
}).
#pos(n16, {}, {f(w(21,18))}, {
start_state(w(10,74)).
}).
#pos(n17, {}, {f(w(75,18))}, {
start_state(w(20,1)).
}).
#pos(n18, {}, {f(w(73,80))}, {
start_state(w(10,7)).
}).
#pos(n19, {}, {f(w(25,19))}, {
start_state(w(42,79)).
}).
