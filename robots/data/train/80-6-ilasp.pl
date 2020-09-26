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

#pos(p0, {f(w(47,80))}, {}, {
start_state(w(47,57)).
}).
#pos(p1, {f(w(15,80))}, {}, {
start_state(w(15,27)).
}).
#pos(p2, {f(w(40,80))}, {}, {
start_state(w(40,19)).
}).
#pos(p3, {f(w(29,80))}, {}, {
start_state(w(29,24)).
}).
#pos(p4, {f(w(65,80))}, {}, {
start_state(w(65,72)).
}).
#pos(p5, {f(w(8,80))}, {}, {
start_state(w(8,38)).
}).
#pos(p6, {f(w(79,80))}, {}, {
start_state(w(79,63)).
}).
#pos(p7, {f(w(18,80))}, {}, {
start_state(w(18,35)).
}).
#pos(p8, {f(w(54,80))}, {}, {
start_state(w(54,52)).
}).
#pos(p9, {f(w(47,80))}, {}, {
start_state(w(47,39)).
}).
#pos(p10, {f(w(26,80))}, {}, {
start_state(w(26,10)).
}).
#pos(p11, {f(w(24,80))}, {}, {
start_state(w(24,79)).
}).
#pos(p12, {f(w(27,80))}, {}, {
start_state(w(27,16)).
}).
#pos(p13, {f(w(9,80))}, {}, {
start_state(w(9,13)).
}).
#pos(p14, {f(w(39,80))}, {}, {
start_state(w(39,54)).
}).
#pos(p15, {f(w(33,80))}, {}, {
start_state(w(33,18)).
}).
#pos(p16, {f(w(53,80))}, {}, {
start_state(w(53,77)).
}).
#pos(p17, {f(w(41,80))}, {}, {
start_state(w(41,61)).
}).
#pos(p18, {f(w(40,80))}, {}, {
start_state(w(40,27)).
}).
#pos(p19, {f(w(57,80))}, {}, {
start_state(w(57,68)).
}).
#pos(n0, {}, {f(w(47,6))}, {
start_state(w(23,47)).
}).
#pos(n1, {}, {f(w(66,80))}, {
start_state(w(25,29)).
}).
#pos(n2, {}, {f(w(40,80))}, {
start_state(w(5,59)).
}).
#pos(n3, {}, {f(w(67,21))}, {
start_state(w(43,64)).
}).
#pos(n4, {}, {f(w(10,80))}, {
start_state(w(3,29)).
}).
#pos(n5, {}, {f(w(32,80))}, {
start_state(w(2,66)).
}).
#pos(n6, {}, {f(w(21,23))}, {
start_state(w(37,33)).
}).
#pos(n7, {}, {f(w(38,53))}, {
start_state(w(1,49)).
}).
#pos(n8, {}, {f(w(73,80))}, {
start_state(w(79,1)).
}).
#pos(n9, {}, {f(w(61,74))}, {
start_state(w(68,42)).
}).
#pos(n10, {}, {f(w(41,56))}, {
start_state(w(47,29)).
}).
#pos(n11, {}, {f(w(48,70))}, {
start_state(w(74,5)).
}).
#pos(n12, {}, {f(w(77,1))}, {
start_state(w(10,64)).
}).
#pos(n13, {}, {f(w(62,53))}, {
start_state(w(26,22)).
}).
#pos(n14, {}, {f(w(73,80))}, {
start_state(w(1,60)).
}).
#pos(n15, {}, {f(w(53,13))}, {
start_state(w(11,15)).
}).
#pos(n16, {}, {f(w(61,80))}, {
start_state(w(19,41)).
}).
#pos(n17, {}, {f(w(58,29))}, {
start_state(w(5,7)).
}).
#pos(n18, {}, {f(w(57,55))}, {
start_state(w(32,9)).
}).
#pos(n19, {}, {f(w(61,80))}, {
start_state(w(37,18)).
}).
