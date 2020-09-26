size(20).
position(1..20).
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

#pos(p0, {f(w(6,20))}, {}, {
start_state(w(6,6)).
}).
#pos(p1, {f(w(12,20))}, {}, {
start_state(w(12,5)).
}).
#pos(p2, {f(w(18,20))}, {}, {
start_state(w(18,9)).
}).
#pos(p3, {f(w(7,20))}, {}, {
start_state(w(7,2)).
}).
#pos(p4, {f(w(7,20))}, {}, {
start_state(w(7,6)).
}).
#pos(p5, {f(w(6,20))}, {}, {
start_state(w(6,17)).
}).
#pos(p6, {f(w(4,20))}, {}, {
start_state(w(4,3)).
}).
#pos(p7, {f(w(12,20))}, {}, {
start_state(w(12,19)).
}).
#pos(p8, {f(w(20,20))}, {}, {
start_state(w(20,15)).
}).
#pos(p9, {f(w(6,20))}, {}, {
start_state(w(6,10)).
}).
#pos(p10, {f(w(17,20))}, {}, {
start_state(w(17,9)).
}).
#pos(p11, {f(w(1,20))}, {}, {
start_state(w(1,13)).
}).
#pos(p12, {f(w(13,20))}, {}, {
start_state(w(13,4)).
}).
#pos(p13, {f(w(20,20))}, {}, {
start_state(w(20,18)).
}).
#pos(p14, {f(w(3,20))}, {}, {
start_state(w(3,4)).
}).
#pos(p15, {f(w(13,20))}, {}, {
start_state(w(13,12)).
}).
#pos(p16, {f(w(10,20))}, {}, {
start_state(w(10,19)).
}).
#pos(p17, {f(w(20,20))}, {}, {
start_state(w(20,4)).
}).
#pos(p18, {f(w(2,20))}, {}, {
start_state(w(2,6)).
}).
#pos(p19, {f(w(17,20))}, {}, {
start_state(w(17,8)).
}).
#pos(n0, {}, {f(w(8,8))}, {
start_state(w(3,14)).
}).
#pos(n1, {}, {f(w(13,20))}, {
start_state(w(7,14)).
}).
#pos(n2, {}, {f(w(5,19))}, {
start_state(w(14,4)).
}).
#pos(n3, {}, {f(w(6,4))}, {
start_state(w(10,9)).
}).
#pos(n4, {}, {f(w(1,3))}, {
start_state(w(2,13)).
}).
#pos(n5, {}, {f(w(3,10))}, {
start_state(w(16,13)).
}).
#pos(n6, {}, {f(w(16,20))}, {
start_state(w(6,14)).
}).
#pos(n7, {}, {f(w(8,12))}, {
start_state(w(14,9)).
}).
#pos(n8, {}, {f(w(17,14))}, {
start_state(w(19,8)).
}).
#pos(n9, {}, {f(w(14,20))}, {
start_state(w(9,9)).
}).
#pos(n10, {}, {f(w(20,14))}, {
start_state(w(7,13)).
}).
#pos(n11, {}, {f(w(16,2))}, {
start_state(w(15,16)).
}).
#pos(n12, {}, {f(w(3,20))}, {
start_state(w(10,3)).
}).
#pos(n13, {}, {f(w(14,7))}, {
start_state(w(8,5)).
}).
#pos(n14, {}, {f(w(7,17))}, {
start_state(w(15,8)).
}).
#pos(n15, {}, {f(w(9,13))}, {
start_state(w(3,3)).
}).
#pos(n16, {}, {f(w(13,20))}, {
start_state(w(14,10)).
}).
#pos(n17, {}, {f(w(18,11))}, {
start_state(w(10,8)).
}).
#pos(n18, {}, {f(w(19,19))}, {
start_state(w(11,12)).
}).
#pos(n19, {}, {f(w(11,20))}, {
start_state(w(13,18)).
}).