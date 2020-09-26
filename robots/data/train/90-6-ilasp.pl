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

#pos(p0, {f(w(33,90))}, {}, {
start_state(w(33,37)).
}).
#pos(p1, {f(w(60,90))}, {}, {
start_state(w(60,68)).
}).
#pos(p2, {f(w(59,90))}, {}, {
start_state(w(59,5)).
}).
#pos(p3, {f(w(28,90))}, {}, {
start_state(w(28,49)).
}).
#pos(p4, {f(w(26,90))}, {}, {
start_state(w(26,76)).
}).
#pos(p5, {f(w(15,90))}, {}, {
start_state(w(15,78)).
}).
#pos(p6, {f(w(2,90))}, {}, {
start_state(w(2,4)).
}).
#pos(p7, {f(w(22,90))}, {}, {
start_state(w(22,43)).
}).
#pos(p8, {f(w(40,90))}, {}, {
start_state(w(40,30)).
}).
#pos(p9, {f(w(74,90))}, {}, {
start_state(w(74,82)).
}).
#pos(p10, {f(w(21,90))}, {}, {
start_state(w(21,45)).
}).
#pos(p11, {f(w(48,90))}, {}, {
start_state(w(48,6)).
}).
#pos(p12, {f(w(15,90))}, {}, {
start_state(w(15,29)).
}).
#pos(p13, {f(w(84,90))}, {}, {
start_state(w(84,77)).
}).
#pos(p14, {f(w(31,90))}, {}, {
start_state(w(31,53)).
}).
#pos(p15, {f(w(31,90))}, {}, {
start_state(w(31,2)).
}).
#pos(p16, {f(w(24,90))}, {}, {
start_state(w(24,69)).
}).
#pos(p17, {f(w(73,90))}, {}, {
start_state(w(73,18)).
}).
#pos(p18, {f(w(73,90))}, {}, {
start_state(w(73,54)).
}).
#pos(p19, {f(w(65,90))}, {}, {
start_state(w(65,68)).
}).
#pos(n0, {}, {f(w(60,62))}, {
start_state(w(80,79)).
}).
#pos(n1, {}, {f(w(20,74))}, {
start_state(w(38,78)).
}).
#pos(n2, {}, {f(w(60,37))}, {
start_state(w(31,23)).
}).
#pos(n3, {}, {f(w(77,90))}, {
start_state(w(65,64)).
}).
#pos(n4, {}, {f(w(44,90))}, {
start_state(w(24,65)).
}).
#pos(n5, {}, {f(w(46,53))}, {
start_state(w(22,58)).
}).
#pos(n6, {}, {f(w(68,6))}, {
start_state(w(7,30)).
}).
#pos(n7, {}, {f(w(10,90))}, {
start_state(w(70,67)).
}).
#pos(n8, {}, {f(w(86,90))}, {
start_state(w(58,15)).
}).
#pos(n9, {}, {f(w(32,59))}, {
start_state(w(22,37)).
}).
#pos(n10, {}, {f(w(21,90))}, {
start_state(w(76,88)).
}).
#pos(n11, {}, {f(w(71,54))}, {
start_state(w(11,5)).
}).
#pos(n12, {}, {f(w(28,17))}, {
start_state(w(8,89)).
}).
#pos(n13, {}, {f(w(85,90))}, {
start_state(w(25,10)).
}).
#pos(n14, {}, {f(w(17,10))}, {
start_state(w(57,80)).
}).
#pos(n15, {}, {f(w(85,22))}, {
start_state(w(28,11)).
}).
#pos(n16, {}, {f(w(37,72))}, {
start_state(w(78,4)).
}).
#pos(n17, {}, {f(w(63,81))}, {
start_state(w(52,4)).
}).
#pos(n18, {}, {f(w(15,50))}, {
start_state(w(23,71)).
}).
#pos(n19, {}, {f(w(46,37))}, {
start_state(w(71,88)).
}).
