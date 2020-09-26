size(40).
position(1..40).
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

#pos(p0, {f(w(31,40))}, {}, {
start_state(w(31,24)).
}).
#pos(p1, {f(w(20,40))}, {}, {
start_state(w(20,35)).
}).
#pos(p2, {f(w(36,40))}, {}, {
start_state(w(36,8)).
}).
#pos(p3, {f(w(31,40))}, {}, {
start_state(w(31,26)).
}).
#pos(p4, {f(w(37,40))}, {}, {
start_state(w(37,34)).
}).
#pos(p5, {f(w(28,40))}, {}, {
start_state(w(28,28)).
}).
#pos(p6, {f(w(15,40))}, {}, {
start_state(w(15,24)).
}).
#pos(p7, {f(w(26,40))}, {}, {
start_state(w(26,29)).
}).
#pos(p8, {f(w(25,40))}, {}, {
start_state(w(25,31)).
}).
#pos(p9, {f(w(7,40))}, {}, {
start_state(w(7,24)).
}).
#pos(p10, {f(w(8,40))}, {}, {
start_state(w(8,21)).
}).
#pos(p11, {f(w(38,40))}, {}, {
start_state(w(38,24)).
}).
#pos(p12, {f(w(36,40))}, {}, {
start_state(w(36,16)).
}).
#pos(p13, {f(w(33,40))}, {}, {
start_state(w(33,4)).
}).
#pos(p14, {f(w(24,40))}, {}, {
start_state(w(24,37)).
}).
#pos(p15, {f(w(16,40))}, {}, {
start_state(w(16,18)).
}).
#pos(p16, {f(w(5,40))}, {}, {
start_state(w(5,4)).
}).
#pos(p17, {f(w(1,40))}, {}, {
start_state(w(1,7)).
}).
#pos(p18, {f(w(28,40))}, {}, {
start_state(w(28,7)).
}).
#pos(p19, {f(w(38,40))}, {}, {
start_state(w(38,38)).
}).
#pos(n0, {}, {f(w(10,31))}, {
start_state(w(39,11)).
}).
#pos(n1, {}, {f(w(16,1))}, {
start_state(w(19,25)).
}).
#pos(n2, {}, {f(w(33,36))}, {
start_state(w(37,7)).
}).
#pos(n3, {}, {f(w(40,24))}, {
start_state(w(18,32)).
}).
#pos(n4, {}, {f(w(25,3))}, {
start_state(w(6,25)).
}).
#pos(n5, {}, {f(w(13,11))}, {
start_state(w(32,31)).
}).
#pos(n6, {}, {f(w(17,32))}, {
start_state(w(23,36)).
}).
#pos(n7, {}, {f(w(17,33))}, {
start_state(w(3,14)).
}).
#pos(n8, {}, {f(w(4,14))}, {
start_state(w(26,11)).
}).
#pos(n9, {}, {f(w(19,3))}, {
start_state(w(18,37)).
}).
#pos(n10, {}, {f(w(18,40))}, {
start_state(w(31,2)).
}).
#pos(n11, {}, {f(w(7,40))}, {
start_state(w(23,7)).
}).
#pos(n12, {}, {f(w(20,11))}, {
start_state(w(7,15)).
}).
#pos(n13, {}, {f(w(15,37))}, {
start_state(w(17,26)).
}).
#pos(n14, {}, {f(w(7,37))}, {
start_state(w(16,20)).
}).
#pos(n15, {}, {f(w(37,40))}, {
start_state(w(6,12)).
}).
#pos(n16, {}, {f(w(11,16))}, {
start_state(w(12,2)).
}).
#pos(n17, {}, {f(w(28,23))}, {
start_state(w(22,13)).
}).
#pos(n18, {}, {f(w(13,18))}, {
start_state(w(20,13)).
}).
#pos(n19, {}, {f(w(38,9))}, {
start_state(w(39,38)).
}).
