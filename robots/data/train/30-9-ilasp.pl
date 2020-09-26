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
start_state(w(21,23)).
}).
#pos(p1, {f(w(6,30))}, {}, {
start_state(w(6,5)).
}).
#pos(p2, {f(w(21,30))}, {}, {
start_state(w(21,17)).
}).
#pos(p3, {f(w(16,30))}, {}, {
start_state(w(16,23)).
}).
#pos(p4, {f(w(28,30))}, {}, {
start_state(w(28,7)).
}).
#pos(p5, {f(w(16,30))}, {}, {
start_state(w(16,3)).
}).
#pos(p6, {f(w(22,30))}, {}, {
start_state(w(22,11)).
}).
#pos(p7, {f(w(30,30))}, {}, {
start_state(w(30,12)).
}).
#pos(p8, {f(w(3,30))}, {}, {
start_state(w(3,9)).
}).
#pos(p9, {f(w(21,30))}, {}, {
start_state(w(21,26)).
}).
#pos(p10, {f(w(8,30))}, {}, {
start_state(w(8,16)).
}).
#pos(p11, {f(w(14,30))}, {}, {
start_state(w(14,23)).
}).
#pos(p12, {f(w(30,30))}, {}, {
start_state(w(30,15)).
}).
#pos(p13, {f(w(23,30))}, {}, {
start_state(w(23,21)).
}).
#pos(p14, {f(w(5,30))}, {}, {
start_state(w(5,16)).
}).
#pos(p15, {f(w(6,30))}, {}, {
start_state(w(6,11)).
}).
#pos(p16, {f(w(3,30))}, {}, {
start_state(w(3,22)).
}).
#pos(p17, {f(w(25,30))}, {}, {
start_state(w(25,12)).
}).
#pos(p18, {f(w(26,30))}, {}, {
start_state(w(26,25)).
}).
#pos(p19, {f(w(17,30))}, {}, {
start_state(w(17,27)).
}).
#pos(n0, {}, {f(w(30,27))}, {
start_state(w(9,17)).
}).
#pos(n1, {}, {f(w(17,30))}, {
start_state(w(24,24)).
}).
#pos(n2, {}, {f(w(20,1))}, {
start_state(w(19,8)).
}).
#pos(n3, {}, {f(w(3,7))}, {
start_state(w(14,26)).
}).
#pos(n4, {}, {f(w(16,30))}, {
start_state(w(14,28)).
}).
#pos(n5, {}, {f(w(12,5))}, {
start_state(w(3,15)).
}).
#pos(n6, {}, {f(w(30,28))}, {
start_state(w(19,5)).
}).
#pos(n7, {}, {f(w(24,22))}, {
start_state(w(6,28)).
}).
#pos(n8, {}, {f(w(3,23))}, {
start_state(w(11,22)).
}).
#pos(n9, {}, {f(w(6,25))}, {
start_state(w(5,18)).
}).
#pos(n10, {}, {f(w(11,30))}, {
start_state(w(19,22)).
}).
#pos(n11, {}, {f(w(1,24))}, {
start_state(w(1,23)).
}).
#pos(n12, {}, {f(w(18,30))}, {
start_state(w(21,20)).
}).
#pos(n13, {}, {f(w(29,1))}, {
start_state(w(27,9)).
}).
#pos(n14, {}, {f(w(9,22))}, {
start_state(w(7,25)).
}).
#pos(n15, {}, {f(w(16,30))}, {
start_state(w(14,16)).
}).
#pos(n16, {}, {f(w(3,29))}, {
start_state(w(24,8)).
}).
#pos(n17, {}, {f(w(24,25))}, {
start_state(w(16,27)).
}).
#pos(n18, {}, {f(w(6,30))}, {
start_state(w(14,28)).
}).
#pos(n19, {}, {f(w(12,23))}, {
start_state(w(28,27)).
}).
