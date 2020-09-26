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

#pos(p0, {f(w(29,50))}, {}, {
start_state(w(29,47)).
}).
#pos(p1, {f(w(32,50))}, {}, {
start_state(w(32,14)).
}).
#pos(p2, {f(w(28,50))}, {}, {
start_state(w(28,42)).
}).
#pos(p3, {f(w(23,50))}, {}, {
start_state(w(23,22)).
}).
#pos(p4, {f(w(2,50))}, {}, {
start_state(w(2,13)).
}).
#pos(p5, {f(w(48,50))}, {}, {
start_state(w(48,16)).
}).
#pos(p6, {f(w(6,50))}, {}, {
start_state(w(6,29)).
}).
#pos(p7, {f(w(6,50))}, {}, {
start_state(w(6,29)).
}).
#pos(p8, {f(w(27,50))}, {}, {
start_state(w(27,48)).
}).
#pos(p9, {f(w(4,50))}, {}, {
start_state(w(4,48)).
}).
#pos(p10, {f(w(49,50))}, {}, {
start_state(w(49,29)).
}).
#pos(p11, {f(w(21,50))}, {}, {
start_state(w(21,34)).
}).
#pos(p12, {f(w(34,50))}, {}, {
start_state(w(34,3)).
}).
#pos(p13, {f(w(41,50))}, {}, {
start_state(w(41,4)).
}).
#pos(p14, {f(w(4,50))}, {}, {
start_state(w(4,25)).
}).
#pos(p15, {f(w(45,50))}, {}, {
start_state(w(45,26)).
}).
#pos(p16, {f(w(38,50))}, {}, {
start_state(w(38,49)).
}).
#pos(p17, {f(w(3,50))}, {}, {
start_state(w(3,6)).
}).
#pos(p18, {f(w(24,50))}, {}, {
start_state(w(24,49)).
}).
#pos(p19, {f(w(41,50))}, {}, {
start_state(w(41,23)).
}).
#pos(n0, {}, {f(w(13,50))}, {
start_state(w(20,4)).
}).
#pos(n1, {}, {f(w(19,17))}, {
start_state(w(10,33)).
}).
#pos(n2, {}, {f(w(28,9))}, {
start_state(w(16,11)).
}).
#pos(n3, {}, {f(w(50,30))}, {
start_state(w(50,7)).
}).
#pos(n4, {}, {f(w(21,50))}, {
start_state(w(39,10)).
}).
#pos(n5, {}, {f(w(21,6))}, {
start_state(w(44,42)).
}).
#pos(n6, {}, {f(w(16,1))}, {
start_state(w(48,29)).
}).
#pos(n7, {}, {f(w(44,47))}, {
start_state(w(23,9)).
}).
#pos(n8, {}, {f(w(2,2))}, {
start_state(w(30,17)).
}).
#pos(n9, {}, {f(w(31,21))}, {
start_state(w(20,40)).
}).
#pos(n10, {}, {f(w(35,30))}, {
start_state(w(33,43)).
}).
#pos(n11, {}, {f(w(44,21))}, {
start_state(w(1,3)).
}).
#pos(n12, {}, {f(w(2,32))}, {
start_state(w(7,5)).
}).
#pos(n13, {}, {f(w(44,33))}, {
start_state(w(8,15)).
}).
#pos(n14, {}, {f(w(33,40))}, {
start_state(w(2,50)).
}).
#pos(n15, {}, {f(w(44,48))}, {
start_state(w(50,23)).
}).
#pos(n16, {}, {f(w(8,50))}, {
start_state(w(13,47)).
}).
#pos(n17, {}, {f(w(21,1))}, {
start_state(w(48,34)).
}).
#pos(n18, {}, {f(w(26,26))}, {
start_state(w(31,9)).
}).
#pos(n19, {}, {f(w(35,24))}, {
start_state(w(28,4)).
}).
