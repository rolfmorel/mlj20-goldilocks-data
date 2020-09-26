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

#pos(p0, {f(w(41,90))}, {}, {
start_state(w(41,31)).
}).
#pos(p1, {f(w(17,90))}, {}, {
start_state(w(17,30)).
}).
#pos(p2, {f(w(23,90))}, {}, {
start_state(w(23,67)).
}).
#pos(p3, {f(w(71,90))}, {}, {
start_state(w(71,4)).
}).
#pos(p4, {f(w(3,90))}, {}, {
start_state(w(3,83)).
}).
#pos(p5, {f(w(11,90))}, {}, {
start_state(w(11,6)).
}).
#pos(p6, {f(w(59,90))}, {}, {
start_state(w(59,47)).
}).
#pos(p7, {f(w(75,90))}, {}, {
start_state(w(75,31)).
}).
#pos(p8, {f(w(9,90))}, {}, {
start_state(w(9,34)).
}).
#pos(p9, {f(w(12,90))}, {}, {
start_state(w(12,76)).
}).
#pos(p10, {f(w(46,90))}, {}, {
start_state(w(46,52)).
}).
#pos(p11, {f(w(12,90))}, {}, {
start_state(w(12,83)).
}).
#pos(p12, {f(w(17,90))}, {}, {
start_state(w(17,39)).
}).
#pos(p13, {f(w(42,90))}, {}, {
start_state(w(42,54)).
}).
#pos(p14, {f(w(18,90))}, {}, {
start_state(w(18,88)).
}).
#pos(p15, {f(w(86,90))}, {}, {
start_state(w(86,26)).
}).
#pos(p16, {f(w(35,90))}, {}, {
start_state(w(35,16)).
}).
#pos(p17, {f(w(43,90))}, {}, {
start_state(w(43,24)).
}).
#pos(p18, {f(w(73,90))}, {}, {
start_state(w(73,30)).
}).
#pos(p19, {f(w(26,90))}, {}, {
start_state(w(26,10)).
}).
#pos(n0, {}, {f(w(84,22))}, {
start_state(w(87,54)).
}).
#pos(n1, {}, {f(w(15,29))}, {
start_state(w(55,4)).
}).
#pos(n2, {}, {f(w(40,90))}, {
start_state(w(58,59)).
}).
#pos(n3, {}, {f(w(9,37))}, {
start_state(w(3,7)).
}).
#pos(n4, {}, {f(w(82,2))}, {
start_state(w(1,53)).
}).
#pos(n5, {}, {f(w(29,74))}, {
start_state(w(89,70)).
}).
#pos(n6, {}, {f(w(38,90))}, {
start_state(w(26,17)).
}).
#pos(n7, {}, {f(w(76,81))}, {
start_state(w(74,46)).
}).
#pos(n8, {}, {f(w(67,90))}, {
start_state(w(40,51)).
}).
#pos(n9, {}, {f(w(63,70))}, {
start_state(w(49,43)).
}).
#pos(n10, {}, {f(w(17,28))}, {
start_state(w(37,32)).
}).
#pos(n11, {}, {f(w(9,16))}, {
start_state(w(87,81)).
}).
#pos(n12, {}, {f(w(58,48))}, {
start_state(w(3,6)).
}).
#pos(n13, {}, {f(w(56,90))}, {
start_state(w(12,71)).
}).
#pos(n14, {}, {f(w(38,35))}, {
start_state(w(39,18)).
}).
#pos(n15, {}, {f(w(32,63))}, {
start_state(w(6,89)).
}).
#pos(n16, {}, {f(w(3,21))}, {
start_state(w(40,31)).
}).
#pos(n17, {}, {f(w(87,90))}, {
start_state(w(41,6)).
}).
#pos(n18, {}, {f(w(43,88))}, {
start_state(w(39,4)).
}).
#pos(n19, {}, {f(w(8,14))}, {
start_state(w(16,71)).
}).
