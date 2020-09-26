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

#pos(p0, {f(w(4,20))}, {}, {
start_state(w(4,5)).
}).
#pos(p1, {f(w(15,20))}, {}, {
start_state(w(15,11)).
}).
#pos(p2, {f(w(5,20))}, {}, {
start_state(w(5,4)).
}).
#pos(p3, {f(w(20,20))}, {}, {
start_state(w(20,18)).
}).
#pos(p4, {f(w(13,20))}, {}, {
start_state(w(13,3)).
}).
#pos(p5, {f(w(1,20))}, {}, {
start_state(w(1,6)).
}).
#pos(p6, {f(w(16,20))}, {}, {
start_state(w(16,12)).
}).
#pos(p7, {f(w(9,20))}, {}, {
start_state(w(9,3)).
}).
#pos(p8, {f(w(11,20))}, {}, {
start_state(w(11,17)).
}).
#pos(p9, {f(w(12,20))}, {}, {
start_state(w(12,19)).
}).
#pos(p10, {f(w(13,20))}, {}, {
start_state(w(13,12)).
}).
#pos(p11, {f(w(5,20))}, {}, {
start_state(w(5,6)).
}).
#pos(p12, {f(w(17,20))}, {}, {
start_state(w(17,4)).
}).
#pos(p13, {f(w(6,20))}, {}, {
start_state(w(6,3)).
}).
#pos(p14, {f(w(5,20))}, {}, {
start_state(w(5,11)).
}).
#pos(p15, {f(w(16,20))}, {}, {
start_state(w(16,19)).
}).
#pos(p16, {f(w(9,20))}, {}, {
start_state(w(9,7)).
}).
#pos(p17, {f(w(17,20))}, {}, {
start_state(w(17,2)).
}).
#pos(p18, {f(w(3,20))}, {}, {
start_state(w(3,18)).
}).
#pos(p19, {f(w(16,20))}, {}, {
start_state(w(16,10)).
}).
#pos(n0, {}, {f(w(12,20))}, {
start_state(w(19,1)).
}).
#pos(n1, {}, {f(w(14,13))}, {
start_state(w(11,17)).
}).
#pos(n2, {}, {f(w(18,10))}, {
start_state(w(2,3)).
}).
#pos(n3, {}, {f(w(9,20))}, {
start_state(w(11,11)).
}).
#pos(n4, {}, {f(w(20,13))}, {
start_state(w(15,13)).
}).
#pos(n5, {}, {f(w(19,3))}, {
start_state(w(4,20)).
}).
#pos(n6, {}, {f(w(16,20))}, {
start_state(w(13,16)).
}).
#pos(n7, {}, {f(w(6,18))}, {
start_state(w(1,4)).
}).
#pos(n8, {}, {f(w(18,19))}, {
start_state(w(4,17)).
}).
#pos(n9, {}, {f(w(4,20))}, {
start_state(w(2,4)).
}).
#pos(n10, {}, {f(w(3,18))}, {
start_state(w(7,19)).
}).
#pos(n11, {}, {f(w(18,20))}, {
start_state(w(15,9)).
}).
#pos(n12, {}, {f(w(19,6))}, {
start_state(w(14,9)).
}).
#pos(n13, {}, {f(w(10,13))}, {
start_state(w(5,5)).
}).
#pos(n14, {}, {f(w(14,15))}, {
start_state(w(15,16)).
}).
#pos(n15, {}, {f(w(18,5))}, {
start_state(w(2,14)).
}).
#pos(n16, {}, {f(w(15,6))}, {
start_state(w(6,4)).
}).
#pos(n17, {}, {f(w(13,20))}, {
start_state(w(20,20)).
}).
#pos(n18, {}, {f(w(12,20))}, {
start_state(w(13,6)).
}).
#pos(n19, {}, {f(w(11,3))}, {
start_state(w(12,18)).
}).
