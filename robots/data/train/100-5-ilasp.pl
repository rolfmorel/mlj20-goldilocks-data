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

#pos(p0, {f(w(19,100))}, {}, {
start_state(w(19,13)).
}).
#pos(p1, {f(w(39,100))}, {}, {
start_state(w(39,22)).
}).
#pos(p2, {f(w(90,100))}, {}, {
start_state(w(90,4)).
}).
#pos(p3, {f(w(85,100))}, {}, {
start_state(w(85,68)).
}).
#pos(p4, {f(w(48,100))}, {}, {
start_state(w(48,73)).
}).
#pos(p5, {f(w(69,100))}, {}, {
start_state(w(69,75)).
}).
#pos(p6, {f(w(53,100))}, {}, {
start_state(w(53,71)).
}).
#pos(p7, {f(w(81,100))}, {}, {
start_state(w(81,84)).
}).
#pos(p8, {f(w(11,100))}, {}, {
start_state(w(11,36)).
}).
#pos(p9, {f(w(96,100))}, {}, {
start_state(w(96,46)).
}).
#pos(p10, {f(w(71,100))}, {}, {
start_state(w(71,16)).
}).
#pos(p11, {f(w(75,100))}, {}, {
start_state(w(75,68)).
}).
#pos(p12, {f(w(14,100))}, {}, {
start_state(w(14,1)).
}).
#pos(p13, {f(w(48,100))}, {}, {
start_state(w(48,39)).
}).
#pos(p14, {f(w(53,100))}, {}, {
start_state(w(53,65)).
}).
#pos(p15, {f(w(7,100))}, {}, {
start_state(w(7,40)).
}).
#pos(p16, {f(w(62,100))}, {}, {
start_state(w(62,64)).
}).
#pos(p17, {f(w(35,100))}, {}, {
start_state(w(35,43)).
}).
#pos(p18, {f(w(79,100))}, {}, {
start_state(w(79,95)).
}).
#pos(p19, {f(w(44,100))}, {}, {
start_state(w(44,68)).
}).
#pos(n0, {}, {f(w(95,41))}, {
start_state(w(89,40)).
}).
#pos(n1, {}, {f(w(95,100))}, {
start_state(w(85,49)).
}).
#pos(n2, {}, {f(w(97,100))}, {
start_state(w(60,7)).
}).
#pos(n3, {}, {f(w(25,98))}, {
start_state(w(33,63)).
}).
#pos(n4, {}, {f(w(74,100))}, {
start_state(w(81,16)).
}).
#pos(n5, {}, {f(w(17,94))}, {
start_state(w(13,39)).
}).
#pos(n6, {}, {f(w(16,21))}, {
start_state(w(83,81)).
}).
#pos(n7, {}, {f(w(37,79))}, {
start_state(w(16,27)).
}).
#pos(n8, {}, {f(w(21,16))}, {
start_state(w(93,82)).
}).
#pos(n9, {}, {f(w(17,89))}, {
start_state(w(68,56)).
}).
#pos(n10, {}, {f(w(55,60))}, {
start_state(w(83,78)).
}).
#pos(n11, {}, {f(w(45,100))}, {
start_state(w(43,44)).
}).
#pos(n12, {}, {f(w(4,15))}, {
start_state(w(31,12)).
}).
#pos(n13, {}, {f(w(85,71))}, {
start_state(w(34,48)).
}).
#pos(n14, {}, {f(w(5,19))}, {
start_state(w(5,27)).
}).
#pos(n15, {}, {f(w(81,15))}, {
start_state(w(96,29)).
}).
#pos(n16, {}, {f(w(28,40))}, {
start_state(w(3,87)).
}).
#pos(n17, {}, {f(w(50,32))}, {
start_state(w(61,31)).
}).
#pos(n18, {}, {f(w(2,100))}, {
start_state(w(91,49)).
}).
#pos(n19, {}, {f(w(10,54))}, {
start_state(w(94,96)).
}).
