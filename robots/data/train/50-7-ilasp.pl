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

#pos(p0, {f(w(31,50))}, {}, {
start_state(w(31,25)).
}).
#pos(p1, {f(w(40,50))}, {}, {
start_state(w(40,11)).
}).
#pos(p2, {f(w(45,50))}, {}, {
start_state(w(45,27)).
}).
#pos(p3, {f(w(34,50))}, {}, {
start_state(w(34,4)).
}).
#pos(p4, {f(w(38,50))}, {}, {
start_state(w(38,4)).
}).
#pos(p5, {f(w(33,50))}, {}, {
start_state(w(33,39)).
}).
#pos(p6, {f(w(7,50))}, {}, {
start_state(w(7,6)).
}).
#pos(p7, {f(w(17,50))}, {}, {
start_state(w(17,49)).
}).
#pos(p8, {f(w(40,50))}, {}, {
start_state(w(40,20)).
}).
#pos(p9, {f(w(38,50))}, {}, {
start_state(w(38,1)).
}).
#pos(p10, {f(w(33,50))}, {}, {
start_state(w(33,25)).
}).
#pos(p11, {f(w(4,50))}, {}, {
start_state(w(4,49)).
}).
#pos(p12, {f(w(23,50))}, {}, {
start_state(w(23,8)).
}).
#pos(p13, {f(w(45,50))}, {}, {
start_state(w(45,23)).
}).
#pos(p14, {f(w(4,50))}, {}, {
start_state(w(4,27)).
}).
#pos(p15, {f(w(16,50))}, {}, {
start_state(w(16,33)).
}).
#pos(p16, {f(w(2,50))}, {}, {
start_state(w(2,47)).
}).
#pos(p17, {f(w(40,50))}, {}, {
start_state(w(40,40)).
}).
#pos(p18, {f(w(16,50))}, {}, {
start_state(w(16,47)).
}).
#pos(p19, {f(w(12,50))}, {}, {
start_state(w(12,5)).
}).
#pos(n0, {}, {f(w(18,47))}, {
start_state(w(37,25)).
}).
#pos(n1, {}, {f(w(21,5))}, {
start_state(w(7,4)).
}).
#pos(n2, {}, {f(w(31,50))}, {
start_state(w(33,2)).
}).
#pos(n3, {}, {f(w(26,50))}, {
start_state(w(13,19)).
}).
#pos(n4, {}, {f(w(15,39))}, {
start_state(w(40,27)).
}).
#pos(n5, {}, {f(w(18,18))}, {
start_state(w(43,15)).
}).
#pos(n6, {}, {f(w(34,28))}, {
start_state(w(41,17)).
}).
#pos(n7, {}, {f(w(29,10))}, {
start_state(w(36,2)).
}).
#pos(n8, {}, {f(w(40,50))}, {
start_state(w(31,13)).
}).
#pos(n9, {}, {f(w(44,50))}, {
start_state(w(38,50)).
}).
#pos(n10, {}, {f(w(40,22))}, {
start_state(w(32,13)).
}).
#pos(n11, {}, {f(w(18,28))}, {
start_state(w(12,40)).
}).
#pos(n12, {}, {f(w(26,3))}, {
start_state(w(26,4)).
}).
#pos(n13, {}, {f(w(44,44))}, {
start_state(w(20,21)).
}).
#pos(n14, {}, {f(w(32,11))}, {
start_state(w(50,4)).
}).
#pos(n15, {}, {f(w(1,2))}, {
start_state(w(22,41)).
}).
#pos(n16, {}, {f(w(41,47))}, {
start_state(w(50,2)).
}).
#pos(n17, {}, {f(w(24,49))}, {
start_state(w(24,23)).
}).
#pos(n18, {}, {f(w(44,50))}, {
start_state(w(42,2)).
}).
#pos(n19, {}, {f(w(37,5))}, {
start_state(w(31,46)).
}).
