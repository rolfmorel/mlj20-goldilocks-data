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

#pos(p0, {f(w(41,50))}, {}, {
start_state(w(41,6)).
}).
#pos(p1, {f(w(26,50))}, {}, {
start_state(w(26,31)).
}).
#pos(p2, {f(w(35,50))}, {}, {
start_state(w(35,2)).
}).
#pos(p3, {f(w(39,50))}, {}, {
start_state(w(39,21)).
}).
#pos(p4, {f(w(17,50))}, {}, {
start_state(w(17,33)).
}).
#pos(p5, {f(w(36,50))}, {}, {
start_state(w(36,23)).
}).
#pos(p6, {f(w(3,50))}, {}, {
start_state(w(3,39)).
}).
#pos(p7, {f(w(14,50))}, {}, {
start_state(w(14,49)).
}).
#pos(p8, {f(w(1,50))}, {}, {
start_state(w(1,37)).
}).
#pos(p9, {f(w(47,50))}, {}, {
start_state(w(47,36)).
}).
#pos(p10, {f(w(33,50))}, {}, {
start_state(w(33,49)).
}).
#pos(p11, {f(w(14,50))}, {}, {
start_state(w(14,9)).
}).
#pos(p12, {f(w(47,50))}, {}, {
start_state(w(47,49)).
}).
#pos(p13, {f(w(27,50))}, {}, {
start_state(w(27,22)).
}).
#pos(p14, {f(w(20,50))}, {}, {
start_state(w(20,21)).
}).
#pos(p15, {f(w(33,50))}, {}, {
start_state(w(33,49)).
}).
#pos(p16, {f(w(22,50))}, {}, {
start_state(w(22,6)).
}).
#pos(p17, {f(w(1,50))}, {}, {
start_state(w(1,2)).
}).
#pos(p18, {f(w(26,50))}, {}, {
start_state(w(26,3)).
}).
#pos(p19, {f(w(42,50))}, {}, {
start_state(w(42,1)).
}).
#pos(n0, {}, {f(w(29,29))}, {
start_state(w(14,23)).
}).
#pos(n1, {}, {f(w(38,32))}, {
start_state(w(20,12)).
}).
#pos(n2, {}, {f(w(17,12))}, {
start_state(w(28,14)).
}).
#pos(n3, {}, {f(w(18,50))}, {
start_state(w(43,48)).
}).
#pos(n4, {}, {f(w(11,7))}, {
start_state(w(19,29)).
}).
#pos(n5, {}, {f(w(7,50))}, {
start_state(w(21,38)).
}).
#pos(n6, {}, {f(w(1,50))}, {
start_state(w(30,33)).
}).
#pos(n7, {}, {f(w(34,50))}, {
start_state(w(3,43)).
}).
#pos(n8, {}, {f(w(39,13))}, {
start_state(w(16,25)).
}).
#pos(n9, {}, {f(w(4,50))}, {
start_state(w(5,21)).
}).
#pos(n10, {}, {f(w(4,21))}, {
start_state(w(3,4)).
}).
#pos(n11, {}, {f(w(20,27))}, {
start_state(w(25,41)).
}).
#pos(n12, {}, {f(w(13,46))}, {
start_state(w(13,2)).
}).
#pos(n13, {}, {f(w(50,1))}, {
start_state(w(8,47)).
}).
#pos(n14, {}, {f(w(7,22))}, {
start_state(w(47,33)).
}).
#pos(n15, {}, {f(w(46,2))}, {
start_state(w(5,17)).
}).
#pos(n16, {}, {f(w(7,49))}, {
start_state(w(20,41)).
}).
#pos(n17, {}, {f(w(49,3))}, {
start_state(w(37,40)).
}).
#pos(n18, {}, {f(w(30,24))}, {
start_state(w(21,1)).
}).
#pos(n19, {}, {f(w(30,9))}, {
start_state(w(17,39)).
}).
