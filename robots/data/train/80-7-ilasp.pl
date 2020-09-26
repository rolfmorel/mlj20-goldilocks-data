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

#pos(p0, {f(w(19,80))}, {}, {
start_state(w(19,42)).
}).
#pos(p1, {f(w(14,80))}, {}, {
start_state(w(14,60)).
}).
#pos(p2, {f(w(50,80))}, {}, {
start_state(w(50,20)).
}).
#pos(p3, {f(w(23,80))}, {}, {
start_state(w(23,36)).
}).
#pos(p4, {f(w(79,80))}, {}, {
start_state(w(79,28)).
}).
#pos(p5, {f(w(24,80))}, {}, {
start_state(w(24,19)).
}).
#pos(p6, {f(w(35,80))}, {}, {
start_state(w(35,45)).
}).
#pos(p7, {f(w(66,80))}, {}, {
start_state(w(66,65)).
}).
#pos(p8, {f(w(30,80))}, {}, {
start_state(w(30,38)).
}).
#pos(p9, {f(w(70,80))}, {}, {
start_state(w(70,10)).
}).
#pos(p10, {f(w(58,80))}, {}, {
start_state(w(58,22)).
}).
#pos(p11, {f(w(40,80))}, {}, {
start_state(w(40,56)).
}).
#pos(p12, {f(w(55,80))}, {}, {
start_state(w(55,5)).
}).
#pos(p13, {f(w(69,80))}, {}, {
start_state(w(69,58)).
}).
#pos(p14, {f(w(64,80))}, {}, {
start_state(w(64,52)).
}).
#pos(p15, {f(w(5,80))}, {}, {
start_state(w(5,48)).
}).
#pos(p16, {f(w(69,80))}, {}, {
start_state(w(69,58)).
}).
#pos(p17, {f(w(63,80))}, {}, {
start_state(w(63,48)).
}).
#pos(p18, {f(w(42,80))}, {}, {
start_state(w(42,22)).
}).
#pos(p19, {f(w(43,80))}, {}, {
start_state(w(43,39)).
}).
#pos(n0, {}, {f(w(63,6))}, {
start_state(w(32,70)).
}).
#pos(n1, {}, {f(w(25,80))}, {
start_state(w(65,44)).
}).
#pos(n2, {}, {f(w(8,66))}, {
start_state(w(76,33)).
}).
#pos(n3, {}, {f(w(49,17))}, {
start_state(w(33,15)).
}).
#pos(n4, {}, {f(w(43,80))}, {
start_state(w(17,29)).
}).
#pos(n5, {}, {f(w(3,17))}, {
start_state(w(12,65)).
}).
#pos(n6, {}, {f(w(28,80))}, {
start_state(w(58,66)).
}).
#pos(n7, {}, {f(w(31,80))}, {
start_state(w(14,59)).
}).
#pos(n8, {}, {f(w(70,7))}, {
start_state(w(49,12)).
}).
#pos(n9, {}, {f(w(28,63))}, {
start_state(w(30,32)).
}).
#pos(n10, {}, {f(w(4,58))}, {
start_state(w(36,80)).
}).
#pos(n11, {}, {f(w(30,16))}, {
start_state(w(44,37)).
}).
#pos(n12, {}, {f(w(15,15))}, {
start_state(w(61,63)).
}).
#pos(n13, {}, {f(w(13,72))}, {
start_state(w(8,70)).
}).
#pos(n14, {}, {f(w(26,26))}, {
start_state(w(63,79)).
}).
#pos(n15, {}, {f(w(1,36))}, {
start_state(w(75,11)).
}).
#pos(n16, {}, {f(w(36,40))}, {
start_state(w(48,41)).
}).
#pos(n17, {}, {f(w(13,7))}, {
start_state(w(71,69)).
}).
#pos(n18, {}, {f(w(50,2))}, {
start_state(w(47,80)).
}).
#pos(n19, {}, {f(w(24,79))}, {
start_state(w(65,19)).
}).
