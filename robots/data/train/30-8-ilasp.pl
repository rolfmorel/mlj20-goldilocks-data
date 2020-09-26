size(30).
position(1..30).
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

#pos(p0, {f(w(21,30))}, {}, {
start_state(w(21,9)).
}).
#pos(p1, {f(w(20,30))}, {}, {
start_state(w(20,4)).
}).
#pos(p2, {f(w(2,30))}, {}, {
start_state(w(2,22)).
}).
#pos(p3, {f(w(18,30))}, {}, {
start_state(w(18,24)).
}).
#pos(p4, {f(w(11,30))}, {}, {
start_state(w(11,23)).
}).
#pos(p5, {f(w(12,30))}, {}, {
start_state(w(12,18)).
}).
#pos(p6, {f(w(26,30))}, {}, {
start_state(w(26,12)).
}).
#pos(p7, {f(w(17,30))}, {}, {
start_state(w(17,6)).
}).
#pos(p8, {f(w(20,30))}, {}, {
start_state(w(20,26)).
}).
#pos(p9, {f(w(27,30))}, {}, {
start_state(w(27,13)).
}).
#pos(p10, {f(w(20,30))}, {}, {
start_state(w(20,8)).
}).
#pos(p11, {f(w(23,30))}, {}, {
start_state(w(23,11)).
}).
#pos(p12, {f(w(7,30))}, {}, {
start_state(w(7,2)).
}).
#pos(p13, {f(w(9,30))}, {}, {
start_state(w(9,12)).
}).
#pos(p14, {f(w(28,30))}, {}, {
start_state(w(28,14)).
}).
#pos(p15, {f(w(2,30))}, {}, {
start_state(w(2,24)).
}).
#pos(p16, {f(w(30,30))}, {}, {
start_state(w(30,15)).
}).
#pos(p17, {f(w(3,30))}, {}, {
start_state(w(3,11)).
}).
#pos(p18, {f(w(23,30))}, {}, {
start_state(w(23,1)).
}).
#pos(p19, {f(w(19,30))}, {}, {
start_state(w(19,26)).
}).
#pos(n0, {}, {f(w(21,9))}, {
start_state(w(1,4)).
}).
#pos(n1, {}, {f(w(30,3))}, {
start_state(w(21,13)).
}).
#pos(n2, {}, {f(w(18,20))}, {
start_state(w(9,6)).
}).
#pos(n3, {}, {f(w(24,17))}, {
start_state(w(3,4)).
}).
#pos(n4, {}, {f(w(27,12))}, {
start_state(w(20,1)).
}).
#pos(n5, {}, {f(w(28,25))}, {
start_state(w(5,12)).
}).
#pos(n6, {}, {f(w(29,30))}, {
start_state(w(9,13)).
}).
#pos(n7, {}, {f(w(23,26))}, {
start_state(w(29,4)).
}).
#pos(n8, {}, {f(w(3,30))}, {
start_state(w(9,23)).
}).
#pos(n9, {}, {f(w(15,1))}, {
start_state(w(8,14)).
}).
#pos(n10, {}, {f(w(21,30))}, {
start_state(w(23,28)).
}).
#pos(n11, {}, {f(w(19,30))}, {
start_state(w(24,29)).
}).
#pos(n12, {}, {f(w(3,1))}, {
start_state(w(3,29)).
}).
#pos(n13, {}, {f(w(22,9))}, {
start_state(w(18,1)).
}).
#pos(n14, {}, {f(w(11,15))}, {
start_state(w(10,3)).
}).
#pos(n15, {}, {f(w(17,10))}, {
start_state(w(15,13)).
}).
#pos(n16, {}, {f(w(1,30))}, {
start_state(w(2,22)).
}).
#pos(n17, {}, {f(w(22,30))}, {
start_state(w(15,4)).
}).
#pos(n18, {}, {f(w(24,10))}, {
start_state(w(25,6)).
}).
#pos(n19, {}, {f(w(4,20))}, {
start_state(w(3,28)).
}).
