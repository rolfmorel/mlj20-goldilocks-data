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

#pos(p0, {f(w(38,40))}, {}, {
start_state(w(38,27)).
}).
#pos(p1, {f(w(23,40))}, {}, {
start_state(w(23,5)).
}).
#pos(p2, {f(w(21,40))}, {}, {
start_state(w(21,24)).
}).
#pos(p3, {f(w(22,40))}, {}, {
start_state(w(22,20)).
}).
#pos(p4, {f(w(20,40))}, {}, {
start_state(w(20,8)).
}).
#pos(p5, {f(w(8,40))}, {}, {
start_state(w(8,39)).
}).
#pos(p6, {f(w(22,40))}, {}, {
start_state(w(22,10)).
}).
#pos(p7, {f(w(10,40))}, {}, {
start_state(w(10,13)).
}).
#pos(p8, {f(w(6,40))}, {}, {
start_state(w(6,6)).
}).
#pos(p9, {f(w(7,40))}, {}, {
start_state(w(7,31)).
}).
#pos(p10, {f(w(38,40))}, {}, {
start_state(w(38,32)).
}).
#pos(p11, {f(w(35,40))}, {}, {
start_state(w(35,1)).
}).
#pos(p12, {f(w(33,40))}, {}, {
start_state(w(33,28)).
}).
#pos(p13, {f(w(2,40))}, {}, {
start_state(w(2,16)).
}).
#pos(p14, {f(w(40,40))}, {}, {
start_state(w(40,10)).
}).
#pos(p15, {f(w(16,40))}, {}, {
start_state(w(16,29)).
}).
#pos(p16, {f(w(22,40))}, {}, {
start_state(w(22,22)).
}).
#pos(p17, {f(w(40,40))}, {}, {
start_state(w(40,28)).
}).
#pos(p18, {f(w(36,40))}, {}, {
start_state(w(36,13)).
}).
#pos(p19, {f(w(31,40))}, {}, {
start_state(w(31,7)).
}).
#pos(n0, {}, {f(w(23,40))}, {
start_state(w(10,25)).
}).
#pos(n1, {}, {f(w(23,40))}, {
start_state(w(33,13)).
}).
#pos(n2, {}, {f(w(36,35))}, {
start_state(w(11,25)).
}).
#pos(n3, {}, {f(w(29,40))}, {
start_state(w(25,23)).
}).
#pos(n4, {}, {f(w(19,40))}, {
start_state(w(9,15)).
}).
#pos(n5, {}, {f(w(12,40))}, {
start_state(w(34,8)).
}).
#pos(n6, {}, {f(w(17,40))}, {
start_state(w(25,6)).
}).
#pos(n7, {}, {f(w(36,30))}, {
start_state(w(36,37)).
}).
#pos(n8, {}, {f(w(30,17))}, {
start_state(w(19,32)).
}).
#pos(n9, {}, {f(w(12,38))}, {
start_state(w(35,38)).
}).
#pos(n10, {}, {f(w(8,40))}, {
start_state(w(18,1)).
}).
#pos(n11, {}, {f(w(9,24))}, {
start_state(w(38,5)).
}).
#pos(n12, {}, {f(w(40,40))}, {
start_state(w(13,12)).
}).
#pos(n13, {}, {f(w(38,9))}, {
start_state(w(12,39)).
}).
#pos(n14, {}, {f(w(1,11))}, {
start_state(w(32,1)).
}).
#pos(n15, {}, {f(w(35,27))}, {
start_state(w(29,28)).
}).
#pos(n16, {}, {f(w(22,1))}, {
start_state(w(1,33)).
}).
#pos(n17, {}, {f(w(8,7))}, {
start_state(w(2,24)).
}).
#pos(n18, {}, {f(w(22,31))}, {
start_state(w(33,27)).
}).
#pos(n19, {}, {f(w(29,30))}, {
start_state(w(31,2)).
}).
