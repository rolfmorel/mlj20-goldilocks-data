size(100).
position(1..100).
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

#pos(p0, {f(w(22,100))}, {}, {
start_state(w(22,55)).
}).
#pos(p1, {f(w(66,100))}, {}, {
start_state(w(66,4)).
}).
#pos(p2, {f(w(9,100))}, {}, {
start_state(w(9,76)).
}).
#pos(p3, {f(w(40,100))}, {}, {
start_state(w(40,44)).
}).
#pos(p4, {f(w(59,100))}, {}, {
start_state(w(59,3)).
}).
#pos(p5, {f(w(88,100))}, {}, {
start_state(w(88,62)).
}).
#pos(p6, {f(w(14,100))}, {}, {
start_state(w(14,98)).
}).
#pos(p7, {f(w(7,100))}, {}, {
start_state(w(7,35)).
}).
#pos(p8, {f(w(95,100))}, {}, {
start_state(w(95,96)).
}).
#pos(p9, {f(w(22,100))}, {}, {
start_state(w(22,54)).
}).
#pos(p10, {f(w(3,100))}, {}, {
start_state(w(3,34)).
}).
#pos(p11, {f(w(57,100))}, {}, {
start_state(w(57,46)).
}).
#pos(p12, {f(w(10,100))}, {}, {
start_state(w(10,99)).
}).
#pos(p13, {f(w(2,100))}, {}, {
start_state(w(2,27)).
}).
#pos(p14, {f(w(77,100))}, {}, {
start_state(w(77,91)).
}).
#pos(p15, {f(w(67,100))}, {}, {
start_state(w(67,87)).
}).
#pos(p16, {f(w(61,100))}, {}, {
start_state(w(61,77)).
}).
#pos(p17, {f(w(97,100))}, {}, {
start_state(w(97,62)).
}).
#pos(p18, {f(w(99,100))}, {}, {
start_state(w(99,51)).
}).
#pos(p19, {f(w(24,100))}, {}, {
start_state(w(24,14)).
}).
#pos(n0, {}, {f(w(88,100))}, {
start_state(w(66,65)).
}).
#pos(n1, {}, {f(w(77,100))}, {
start_state(w(17,4)).
}).
#pos(n2, {}, {f(w(36,100))}, {
start_state(w(5,94)).
}).
#pos(n3, {}, {f(w(64,56))}, {
start_state(w(68,65)).
}).
#pos(n4, {}, {f(w(36,31))}, {
start_state(w(27,34)).
}).
#pos(n5, {}, {f(w(78,65))}, {
start_state(w(6,60)).
}).
#pos(n6, {}, {f(w(63,100))}, {
start_state(w(37,70)).
}).
#pos(n7, {}, {f(w(75,43))}, {
start_state(w(94,61)).
}).
#pos(n8, {}, {f(w(20,79))}, {
start_state(w(87,32)).
}).
#pos(n9, {}, {f(w(90,37))}, {
start_state(w(70,14)).
}).
#pos(n10, {}, {f(w(83,65))}, {
start_state(w(68,82)).
}).
#pos(n11, {}, {f(w(95,82))}, {
start_state(w(68,51)).
}).
#pos(n12, {}, {f(w(36,45))}, {
start_state(w(77,79)).
}).
#pos(n13, {}, {f(w(78,55))}, {
start_state(w(11,71)).
}).
#pos(n14, {}, {f(w(68,20))}, {
start_state(w(61,72)).
}).
#pos(n15, {}, {f(w(51,77))}, {
start_state(w(47,33)).
}).
#pos(n16, {}, {f(w(29,41))}, {
start_state(w(24,75)).
}).
#pos(n17, {}, {f(w(27,100))}, {
start_state(w(82,27)).
}).
#pos(n18, {}, {f(w(33,100))}, {
start_state(w(70,12)).
}).
#pos(n19, {}, {f(w(84,72))}, {
start_state(w(34,57)).
}).
