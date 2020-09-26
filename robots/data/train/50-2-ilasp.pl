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

#pos(p0, {f(w(40,50))}, {}, {
start_state(w(40,2)).
}).
#pos(p1, {f(w(40,50))}, {}, {
start_state(w(40,26)).
}).
#pos(p2, {f(w(32,50))}, {}, {
start_state(w(32,14)).
}).
#pos(p3, {f(w(32,50))}, {}, {
start_state(w(32,10)).
}).
#pos(p4, {f(w(24,50))}, {}, {
start_state(w(24,33)).
}).
#pos(p5, {f(w(13,50))}, {}, {
start_state(w(13,31)).
}).
#pos(p6, {f(w(27,50))}, {}, {
start_state(w(27,10)).
}).
#pos(p7, {f(w(32,50))}, {}, {
start_state(w(32,35)).
}).
#pos(p8, {f(w(36,50))}, {}, {
start_state(w(36,27)).
}).
#pos(p9, {f(w(10,50))}, {}, {
start_state(w(10,9)).
}).
#pos(p10, {f(w(40,50))}, {}, {
start_state(w(40,2)).
}).
#pos(p11, {f(w(48,50))}, {}, {
start_state(w(48,14)).
}).
#pos(p12, {f(w(40,50))}, {}, {
start_state(w(40,32)).
}).
#pos(p13, {f(w(14,50))}, {}, {
start_state(w(14,49)).
}).
#pos(p14, {f(w(2,50))}, {}, {
start_state(w(2,40)).
}).
#pos(p15, {f(w(31,50))}, {}, {
start_state(w(31,18)).
}).
#pos(p16, {f(w(6,50))}, {}, {
start_state(w(6,11)).
}).
#pos(p17, {f(w(49,50))}, {}, {
start_state(w(49,14)).
}).
#pos(p18, {f(w(7,50))}, {}, {
start_state(w(7,49)).
}).
#pos(p19, {f(w(42,50))}, {}, {
start_state(w(42,5)).
}).
#pos(n0, {}, {f(w(49,28))}, {
start_state(w(42,37)).
}).
#pos(n1, {}, {f(w(46,34))}, {
start_state(w(17,21)).
}).
#pos(n2, {}, {f(w(30,50))}, {
start_state(w(22,31)).
}).
#pos(n3, {}, {f(w(28,50))}, {
start_state(w(16,25)).
}).
#pos(n4, {}, {f(w(19,49))}, {
start_state(w(27,24)).
}).
#pos(n5, {}, {f(w(27,25))}, {
start_state(w(42,49)).
}).
#pos(n6, {}, {f(w(1,8))}, {
start_state(w(9,20)).
}).
#pos(n7, {}, {f(w(33,28))}, {
start_state(w(36,29)).
}).
#pos(n8, {}, {f(w(13,50))}, {
start_state(w(31,46)).
}).
#pos(n9, {}, {f(w(33,4))}, {
start_state(w(22,7)).
}).
#pos(n10, {}, {f(w(15,36))}, {
start_state(w(37,14)).
}).
#pos(n11, {}, {f(w(23,39))}, {
start_state(w(20,13)).
}).
#pos(n12, {}, {f(w(9,46))}, {
start_state(w(34,14)).
}).
#pos(n13, {}, {f(w(21,1))}, {
start_state(w(14,25)).
}).
#pos(n14, {}, {f(w(28,26))}, {
start_state(w(39,22)).
}).
#pos(n15, {}, {f(w(6,19))}, {
start_state(w(14,29)).
}).
#pos(n16, {}, {f(w(40,31))}, {
start_state(w(28,4)).
}).
#pos(n17, {}, {f(w(36,50))}, {
start_state(w(50,13)).
}).
#pos(n18, {}, {f(w(11,50))}, {
start_state(w(28,45)).
}).
#pos(n19, {}, {f(w(8,32))}, {
start_state(w(4,20)).
}).
