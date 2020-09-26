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

#pos(p0, {f(w(73,80))}, {}, {
start_state(w(73,2)).
}).
#pos(p1, {f(w(72,80))}, {}, {
start_state(w(72,51)).
}).
#pos(p2, {f(w(25,80))}, {}, {
start_state(w(25,68)).
}).
#pos(p3, {f(w(28,80))}, {}, {
start_state(w(28,6)).
}).
#pos(p4, {f(w(10,80))}, {}, {
start_state(w(10,47)).
}).
#pos(p5, {f(w(3,80))}, {}, {
start_state(w(3,32)).
}).
#pos(p6, {f(w(79,80))}, {}, {
start_state(w(79,67)).
}).
#pos(p7, {f(w(53,80))}, {}, {
start_state(w(53,4)).
}).
#pos(p8, {f(w(47,80))}, {}, {
start_state(w(47,22)).
}).
#pos(p9, {f(w(29,80))}, {}, {
start_state(w(29,38)).
}).
#pos(p10, {f(w(76,80))}, {}, {
start_state(w(76,44)).
}).
#pos(p11, {f(w(6,80))}, {}, {
start_state(w(6,75)).
}).
#pos(p12, {f(w(54,80))}, {}, {
start_state(w(54,68)).
}).
#pos(p13, {f(w(28,80))}, {}, {
start_state(w(28,78)).
}).
#pos(p14, {f(w(46,80))}, {}, {
start_state(w(46,8)).
}).
#pos(p15, {f(w(33,80))}, {}, {
start_state(w(33,4)).
}).
#pos(p16, {f(w(21,80))}, {}, {
start_state(w(21,15)).
}).
#pos(p17, {f(w(66,80))}, {}, {
start_state(w(66,43)).
}).
#pos(p18, {f(w(37,80))}, {}, {
start_state(w(37,35)).
}).
#pos(p19, {f(w(49,80))}, {}, {
start_state(w(49,66)).
}).
#pos(n0, {}, {f(w(29,30))}, {
start_state(w(48,26)).
}).
#pos(n1, {}, {f(w(23,16))}, {
start_state(w(72,40)).
}).
#pos(n2, {}, {f(w(30,47))}, {
start_state(w(23,42)).
}).
#pos(n3, {}, {f(w(23,6))}, {
start_state(w(16,1)).
}).
#pos(n4, {}, {f(w(56,80))}, {
start_state(w(11,36)).
}).
#pos(n5, {}, {f(w(14,37))}, {
start_state(w(34,54)).
}).
#pos(n6, {}, {f(w(62,80))}, {
start_state(w(44,61)).
}).
#pos(n7, {}, {f(w(42,68))}, {
start_state(w(44,12)).
}).
#pos(n8, {}, {f(w(53,80))}, {
start_state(w(79,6)).
}).
#pos(n9, {}, {f(w(66,61))}, {
start_state(w(73,65)).
}).
#pos(n10, {}, {f(w(69,80))}, {
start_state(w(68,18)).
}).
#pos(n11, {}, {f(w(1,8))}, {
start_state(w(48,9)).
}).
#pos(n12, {}, {f(w(35,71))}, {
start_state(w(77,41)).
}).
#pos(n13, {}, {f(w(29,37))}, {
start_state(w(9,71)).
}).
#pos(n14, {}, {f(w(53,80))}, {
start_state(w(20,61)).
}).
#pos(n15, {}, {f(w(53,51))}, {
start_state(w(44,3)).
}).
#pos(n16, {}, {f(w(33,80))}, {
start_state(w(71,54)).
}).
#pos(n17, {}, {f(w(33,44))}, {
start_state(w(73,74)).
}).
#pos(n18, {}, {f(w(70,61))}, {
start_state(w(15,23)).
}).
#pos(n19, {}, {f(w(17,37))}, {
start_state(w(11,13)).
}).
