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

#pos(p0, {f(w(19,40))}, {}, {
start_state(w(19,25)).
}).
#pos(p1, {f(w(25,40))}, {}, {
start_state(w(25,26)).
}).
#pos(p2, {f(w(3,40))}, {}, {
start_state(w(3,31)).
}).
#pos(p3, {f(w(25,40))}, {}, {
start_state(w(25,39)).
}).
#pos(p4, {f(w(38,40))}, {}, {
start_state(w(38,13)).
}).
#pos(p5, {f(w(23,40))}, {}, {
start_state(w(23,1)).
}).
#pos(p6, {f(w(2,40))}, {}, {
start_state(w(2,19)).
}).
#pos(p7, {f(w(23,40))}, {}, {
start_state(w(23,11)).
}).
#pos(p8, {f(w(39,40))}, {}, {
start_state(w(39,27)).
}).
#pos(p9, {f(w(16,40))}, {}, {
start_state(w(16,28)).
}).
#pos(p10, {f(w(29,40))}, {}, {
start_state(w(29,29)).
}).
#pos(p11, {f(w(24,40))}, {}, {
start_state(w(24,11)).
}).
#pos(p12, {f(w(26,40))}, {}, {
start_state(w(26,11)).
}).
#pos(p13, {f(w(36,40))}, {}, {
start_state(w(36,5)).
}).
#pos(p14, {f(w(2,40))}, {}, {
start_state(w(2,10)).
}).
#pos(p15, {f(w(32,40))}, {}, {
start_state(w(32,14)).
}).
#pos(p16, {f(w(37,40))}, {}, {
start_state(w(37,30)).
}).
#pos(p17, {f(w(24,40))}, {}, {
start_state(w(24,27)).
}).
#pos(p18, {f(w(16,40))}, {}, {
start_state(w(16,33)).
}).
#pos(p19, {f(w(17,40))}, {}, {
start_state(w(17,39)).
}).
#pos(n0, {}, {f(w(25,40))}, {
start_state(w(30,22)).
}).
#pos(n1, {}, {f(w(28,28))}, {
start_state(w(32,5)).
}).
#pos(n2, {}, {f(w(33,27))}, {
start_state(w(37,10)).
}).
#pos(n3, {}, {f(w(22,40))}, {
start_state(w(39,39)).
}).
#pos(n4, {}, {f(w(13,34))}, {
start_state(w(13,28)).
}).
#pos(n5, {}, {f(w(9,40))}, {
start_state(w(30,16)).
}).
#pos(n6, {}, {f(w(31,16))}, {
start_state(w(11,8)).
}).
#pos(n7, {}, {f(w(26,8))}, {
start_state(w(40,36)).
}).
#pos(n8, {}, {f(w(19,40))}, {
start_state(w(18,25)).
}).
#pos(n9, {}, {f(w(1,40))}, {
start_state(w(31,6)).
}).
#pos(n10, {}, {f(w(32,25))}, {
start_state(w(17,32)).
}).
#pos(n11, {}, {f(w(36,40))}, {
start_state(w(13,14)).
}).
#pos(n12, {}, {f(w(26,15))}, {
start_state(w(27,4)).
}).
#pos(n13, {}, {f(w(2,35))}, {
start_state(w(9,10)).
}).
#pos(n14, {}, {f(w(19,40))}, {
start_state(w(9,11)).
}).
#pos(n15, {}, {f(w(15,40))}, {
start_state(w(33,31)).
}).
#pos(n16, {}, {f(w(24,40))}, {
start_state(w(31,15)).
}).
#pos(n17, {}, {f(w(39,4))}, {
start_state(w(22,30)).
}).
#pos(n18, {}, {f(w(26,40))}, {
start_state(w(12,12)).
}).
#pos(n19, {}, {f(w(34,40))}, {
start_state(w(12,29)).
}).
