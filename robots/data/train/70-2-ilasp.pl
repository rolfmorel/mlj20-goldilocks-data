size(70).
position(1..70).
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

#pos(p0, {f(w(63,70))}, {}, {
start_state(w(63,57)).
}).
#pos(p1, {f(w(58,70))}, {}, {
start_state(w(58,28)).
}).
#pos(p2, {f(w(34,70))}, {}, {
start_state(w(34,1)).
}).
#pos(p3, {f(w(21,70))}, {}, {
start_state(w(21,62)).
}).
#pos(p4, {f(w(1,70))}, {}, {
start_state(w(1,55)).
}).
#pos(p5, {f(w(6,70))}, {}, {
start_state(w(6,1)).
}).
#pos(p6, {f(w(7,70))}, {}, {
start_state(w(7,61)).
}).
#pos(p7, {f(w(64,70))}, {}, {
start_state(w(64,23)).
}).
#pos(p8, {f(w(20,70))}, {}, {
start_state(w(20,49)).
}).
#pos(p9, {f(w(54,70))}, {}, {
start_state(w(54,14)).
}).
#pos(p10, {f(w(2,70))}, {}, {
start_state(w(2,58)).
}).
#pos(p11, {f(w(32,70))}, {}, {
start_state(w(32,60)).
}).
#pos(p12, {f(w(69,70))}, {}, {
start_state(w(69,51)).
}).
#pos(p13, {f(w(31,70))}, {}, {
start_state(w(31,44)).
}).
#pos(p14, {f(w(55,70))}, {}, {
start_state(w(55,56)).
}).
#pos(p15, {f(w(6,70))}, {}, {
start_state(w(6,51)).
}).
#pos(p16, {f(w(44,70))}, {}, {
start_state(w(44,39)).
}).
#pos(p17, {f(w(61,70))}, {}, {
start_state(w(61,18)).
}).
#pos(p18, {f(w(56,70))}, {}, {
start_state(w(56,12)).
}).
#pos(p19, {f(w(43,70))}, {}, {
start_state(w(43,42)).
}).
#pos(n0, {}, {f(w(43,38))}, {
start_state(w(2,26)).
}).
#pos(n1, {}, {f(w(29,70))}, {
start_state(w(28,56)).
}).
#pos(n2, {}, {f(w(43,18))}, {
start_state(w(58,47)).
}).
#pos(n3, {}, {f(w(47,66))}, {
start_state(w(58,8)).
}).
#pos(n4, {}, {f(w(68,31))}, {
start_state(w(60,69)).
}).
#pos(n5, {}, {f(w(20,42))}, {
start_state(w(9,9)).
}).
#pos(n6, {}, {f(w(2,50))}, {
start_state(w(40,1)).
}).
#pos(n7, {}, {f(w(57,9))}, {
start_state(w(30,57)).
}).
#pos(n8, {}, {f(w(60,70))}, {
start_state(w(11,24)).
}).
#pos(n9, {}, {f(w(51,70))}, {
start_state(w(12,42)).
}).
#pos(n10, {}, {f(w(25,19))}, {
start_state(w(31,9)).
}).
#pos(n11, {}, {f(w(62,5))}, {
start_state(w(61,41)).
}).
#pos(n12, {}, {f(w(61,50))}, {
start_state(w(62,17)).
}).
#pos(n13, {}, {f(w(8,14))}, {
start_state(w(6,60)).
}).
#pos(n14, {}, {f(w(61,56))}, {
start_state(w(7,61)).
}).
#pos(n15, {}, {f(w(26,58))}, {
start_state(w(68,27)).
}).
#pos(n16, {}, {f(w(20,45))}, {
start_state(w(25,26)).
}).
#pos(n17, {}, {f(w(51,29))}, {
start_state(w(66,13)).
}).
#pos(n18, {}, {f(w(12,24))}, {
start_state(w(14,57)).
}).
#pos(n19, {}, {f(w(69,24))}, {
start_state(w(3,19)).
}).
