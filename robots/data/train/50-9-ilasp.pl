size(50).
position(1..50).
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

#pos(p0, {f(w(18,50))}, {}, {
start_state(w(18,23)).
}).
#pos(p1, {f(w(38,50))}, {}, {
start_state(w(38,40)).
}).
#pos(p2, {f(w(44,50))}, {}, {
start_state(w(44,23)).
}).
#pos(p3, {f(w(18,50))}, {}, {
start_state(w(18,9)).
}).
#pos(p4, {f(w(31,50))}, {}, {
start_state(w(31,46)).
}).
#pos(p5, {f(w(19,50))}, {}, {
start_state(w(19,12)).
}).
#pos(p6, {f(w(19,50))}, {}, {
start_state(w(19,34)).
}).
#pos(p7, {f(w(49,50))}, {}, {
start_state(w(49,8)).
}).
#pos(p8, {f(w(34,50))}, {}, {
start_state(w(34,13)).
}).
#pos(p9, {f(w(46,50))}, {}, {
start_state(w(46,7)).
}).
#pos(p10, {f(w(45,50))}, {}, {
start_state(w(45,47)).
}).
#pos(p11, {f(w(36,50))}, {}, {
start_state(w(36,1)).
}).
#pos(p12, {f(w(47,50))}, {}, {
start_state(w(47,35)).
}).
#pos(p13, {f(w(25,50))}, {}, {
start_state(w(25,1)).
}).
#pos(p14, {f(w(16,50))}, {}, {
start_state(w(16,9)).
}).
#pos(p15, {f(w(48,50))}, {}, {
start_state(w(48,38)).
}).
#pos(p16, {f(w(30,50))}, {}, {
start_state(w(30,3)).
}).
#pos(p17, {f(w(38,50))}, {}, {
start_state(w(38,47)).
}).
#pos(p18, {f(w(26,50))}, {}, {
start_state(w(26,49)).
}).
#pos(p19, {f(w(37,50))}, {}, {
start_state(w(37,12)).
}).
#pos(n0, {}, {f(w(40,31))}, {
start_state(w(47,7)).
}).
#pos(n1, {}, {f(w(36,39))}, {
start_state(w(48,27)).
}).
#pos(n2, {}, {f(w(44,50))}, {
start_state(w(25,8)).
}).
#pos(n3, {}, {f(w(47,42))}, {
start_state(w(10,2)).
}).
#pos(n4, {}, {f(w(2,50))}, {
start_state(w(14,39)).
}).
#pos(n5, {}, {f(w(30,16))}, {
start_state(w(38,13)).
}).
#pos(n6, {}, {f(w(16,50))}, {
start_state(w(7,11)).
}).
#pos(n7, {}, {f(w(43,43))}, {
start_state(w(46,21)).
}).
#pos(n8, {}, {f(w(21,5))}, {
start_state(w(28,22)).
}).
#pos(n9, {}, {f(w(20,50))}, {
start_state(w(46,18)).
}).
#pos(n10, {}, {f(w(14,10))}, {
start_state(w(10,6)).
}).
#pos(n11, {}, {f(w(44,39))}, {
start_state(w(49,28)).
}).
#pos(n12, {}, {f(w(7,12))}, {
start_state(w(9,21)).
}).
#pos(n13, {}, {f(w(48,21))}, {
start_state(w(3,15)).
}).
#pos(n14, {}, {f(w(20,11))}, {
start_state(w(38,21)).
}).
#pos(n15, {}, {f(w(35,45))}, {
start_state(w(38,31)).
}).
#pos(n16, {}, {f(w(42,9))}, {
start_state(w(27,13)).
}).
#pos(n17, {}, {f(w(48,50))}, {
start_state(w(8,4)).
}).
#pos(n18, {}, {f(w(46,23))}, {
start_state(w(28,41)).
}).
#pos(n19, {}, {f(w(18,33))}, {
start_state(w(12,49)).
}).
