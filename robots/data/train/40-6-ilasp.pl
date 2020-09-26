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

#pos(p0, {f(w(24,40))}, {}, {
start_state(w(24,27)).
}).
#pos(p1, {f(w(10,40))}, {}, {
start_state(w(10,12)).
}).
#pos(p2, {f(w(5,40))}, {}, {
start_state(w(5,23)).
}).
#pos(p3, {f(w(40,40))}, {}, {
start_state(w(40,16)).
}).
#pos(p4, {f(w(33,40))}, {}, {
start_state(w(33,14)).
}).
#pos(p5, {f(w(17,40))}, {}, {
start_state(w(17,39)).
}).
#pos(p6, {f(w(18,40))}, {}, {
start_state(w(18,1)).
}).
#pos(p7, {f(w(12,40))}, {}, {
start_state(w(12,8)).
}).
#pos(p8, {f(w(15,40))}, {}, {
start_state(w(15,27)).
}).
#pos(p9, {f(w(6,40))}, {}, {
start_state(w(6,27)).
}).
#pos(p10, {f(w(30,40))}, {}, {
start_state(w(30,16)).
}).
#pos(p11, {f(w(3,40))}, {}, {
start_state(w(3,28)).
}).
#pos(p12, {f(w(26,40))}, {}, {
start_state(w(26,39)).
}).
#pos(p13, {f(w(31,40))}, {}, {
start_state(w(31,35)).
}).
#pos(p14, {f(w(40,40))}, {}, {
start_state(w(40,2)).
}).
#pos(p15, {f(w(37,40))}, {}, {
start_state(w(37,10)).
}).
#pos(p16, {f(w(3,40))}, {}, {
start_state(w(3,30)).
}).
#pos(p17, {f(w(5,40))}, {}, {
start_state(w(5,3)).
}).
#pos(p18, {f(w(34,40))}, {}, {
start_state(w(34,26)).
}).
#pos(p19, {f(w(5,40))}, {}, {
start_state(w(5,10)).
}).
#pos(n0, {}, {f(w(21,7))}, {
start_state(w(40,31)).
}).
#pos(n1, {}, {f(w(3,34))}, {
start_state(w(16,31)).
}).
#pos(n2, {}, {f(w(16,20))}, {
start_state(w(8,9)).
}).
#pos(n3, {}, {f(w(2,40))}, {
start_state(w(11,37)).
}).
#pos(n4, {}, {f(w(13,14))}, {
start_state(w(31,25)).
}).
#pos(n5, {}, {f(w(19,20))}, {
start_state(w(14,38)).
}).
#pos(n6, {}, {f(w(23,12))}, {
start_state(w(39,39)).
}).
#pos(n7, {}, {f(w(39,15))}, {
start_state(w(25,35)).
}).
#pos(n8, {}, {f(w(19,14))}, {
start_state(w(37,10)).
}).
#pos(n9, {}, {f(w(12,38))}, {
start_state(w(39,39)).
}).
#pos(n10, {}, {f(w(39,40))}, {
start_state(w(19,40)).
}).
#pos(n11, {}, {f(w(11,18))}, {
start_state(w(31,25)).
}).
#pos(n12, {}, {f(w(34,13))}, {
start_state(w(20,39)).
}).
#pos(n13, {}, {f(w(9,40))}, {
start_state(w(32,32)).
}).
#pos(n14, {}, {f(w(2,9))}, {
start_state(w(5,17)).
}).
#pos(n15, {}, {f(w(24,40))}, {
start_state(w(22,16)).
}).
#pos(n16, {}, {f(w(7,12))}, {
start_state(w(25,7)).
}).
#pos(n17, {}, {f(w(18,40))}, {
start_state(w(33,9)).
}).
#pos(n18, {}, {f(w(24,3))}, {
start_state(w(35,16)).
}).
#pos(n19, {}, {f(w(14,15))}, {
start_state(w(31,25)).
}).
