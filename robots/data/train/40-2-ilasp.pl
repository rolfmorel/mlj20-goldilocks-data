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

#pos(p0, {f(w(17,40))}, {}, {
start_state(w(17,39)).
}).
#pos(p1, {f(w(36,40))}, {}, {
start_state(w(36,30)).
}).
#pos(p2, {f(w(40,40))}, {}, {
start_state(w(40,2)).
}).
#pos(p3, {f(w(21,40))}, {}, {
start_state(w(21,27)).
}).
#pos(p4, {f(w(34,40))}, {}, {
start_state(w(34,28)).
}).
#pos(p5, {f(w(39,40))}, {}, {
start_state(w(39,10)).
}).
#pos(p6, {f(w(23,40))}, {}, {
start_state(w(23,33)).
}).
#pos(p7, {f(w(25,40))}, {}, {
start_state(w(25,28)).
}).
#pos(p8, {f(w(7,40))}, {}, {
start_state(w(7,10)).
}).
#pos(p9, {f(w(23,40))}, {}, {
start_state(w(23,28)).
}).
#pos(p10, {f(w(30,40))}, {}, {
start_state(w(30,31)).
}).
#pos(p11, {f(w(1,40))}, {}, {
start_state(w(1,5)).
}).
#pos(p12, {f(w(31,40))}, {}, {
start_state(w(31,25)).
}).
#pos(p13, {f(w(8,40))}, {}, {
start_state(w(8,7)).
}).
#pos(p14, {f(w(34,40))}, {}, {
start_state(w(34,13)).
}).
#pos(p15, {f(w(33,40))}, {}, {
start_state(w(33,28)).
}).
#pos(p16, {f(w(5,40))}, {}, {
start_state(w(5,38)).
}).
#pos(p17, {f(w(26,40))}, {}, {
start_state(w(26,36)).
}).
#pos(p18, {f(w(12,40))}, {}, {
start_state(w(12,1)).
}).
#pos(p19, {f(w(22,40))}, {}, {
start_state(w(22,10)).
}).
#pos(n0, {}, {f(w(19,40))}, {
start_state(w(30,30)).
}).
#pos(n1, {}, {f(w(30,34))}, {
start_state(w(27,38)).
}).
#pos(n2, {}, {f(w(10,40))}, {
start_state(w(23,40)).
}).
#pos(n3, {}, {f(w(7,33))}, {
start_state(w(11,38)).
}).
#pos(n4, {}, {f(w(23,40))}, {
start_state(w(11,23)).
}).
#pos(n5, {}, {f(w(6,4))}, {
start_state(w(19,32)).
}).
#pos(n6, {}, {f(w(16,20))}, {
start_state(w(6,5)).
}).
#pos(n7, {}, {f(w(26,20))}, {
start_state(w(29,15)).
}).
#pos(n8, {}, {f(w(7,40))}, {
start_state(w(10,1)).
}).
#pos(n9, {}, {f(w(38,38))}, {
start_state(w(39,16)).
}).
#pos(n10, {}, {f(w(30,40))}, {
start_state(w(2,16)).
}).
#pos(n11, {}, {f(w(31,40))}, {
start_state(w(33,2)).
}).
#pos(n12, {}, {f(w(25,31))}, {
start_state(w(28,9)).
}).
#pos(n13, {}, {f(w(38,40))}, {
start_state(w(36,10)).
}).
#pos(n14, {}, {f(w(21,19))}, {
start_state(w(38,35)).
}).
#pos(n15, {}, {f(w(34,25))}, {
start_state(w(21,22)).
}).
#pos(n16, {}, {f(w(14,3))}, {
start_state(w(36,35)).
}).
#pos(n17, {}, {f(w(25,40))}, {
start_state(w(33,32)).
}).
#pos(n18, {}, {f(w(15,40))}, {
start_state(w(11,2)).
}).
#pos(n19, {}, {f(w(17,15))}, {
start_state(w(11,34)).
}).
