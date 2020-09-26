size(60).
position(1..60).
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

#pos(p0, {f(w(8,60))}, {}, {
start_state(w(8,57)).
}).
#pos(p1, {f(w(60,60))}, {}, {
start_state(w(60,4)).
}).
#pos(p2, {f(w(53,60))}, {}, {
start_state(w(53,32)).
}).
#pos(p3, {f(w(14,60))}, {}, {
start_state(w(14,9)).
}).
#pos(p4, {f(w(3,60))}, {}, {
start_state(w(3,6)).
}).
#pos(p5, {f(w(52,60))}, {}, {
start_state(w(52,19)).
}).
#pos(p6, {f(w(53,60))}, {}, {
start_state(w(53,52)).
}).
#pos(p7, {f(w(52,60))}, {}, {
start_state(w(52,21)).
}).
#pos(p8, {f(w(34,60))}, {}, {
start_state(w(34,12)).
}).
#pos(p9, {f(w(41,60))}, {}, {
start_state(w(41,6)).
}).
#pos(p10, {f(w(54,60))}, {}, {
start_state(w(54,10)).
}).
#pos(p11, {f(w(17,60))}, {}, {
start_state(w(17,8)).
}).
#pos(p12, {f(w(29,60))}, {}, {
start_state(w(29,48)).
}).
#pos(p13, {f(w(4,60))}, {}, {
start_state(w(4,59)).
}).
#pos(p14, {f(w(57,60))}, {}, {
start_state(w(57,29)).
}).
#pos(p15, {f(w(37,60))}, {}, {
start_state(w(37,49)).
}).
#pos(p16, {f(w(19,60))}, {}, {
start_state(w(19,28)).
}).
#pos(p17, {f(w(2,60))}, {}, {
start_state(w(2,58)).
}).
#pos(p18, {f(w(24,60))}, {}, {
start_state(w(24,52)).
}).
#pos(p19, {f(w(23,60))}, {}, {
start_state(w(23,37)).
}).
#pos(n0, {}, {f(w(15,60))}, {
start_state(w(43,52)).
}).
#pos(n1, {}, {f(w(10,21))}, {
start_state(w(10,14)).
}).
#pos(n2, {}, {f(w(12,18))}, {
start_state(w(34,15)).
}).
#pos(n3, {}, {f(w(52,25))}, {
start_state(w(7,54)).
}).
#pos(n4, {}, {f(w(27,60))}, {
start_state(w(31,19)).
}).
#pos(n5, {}, {f(w(11,41))}, {
start_state(w(2,57)).
}).
#pos(n6, {}, {f(w(38,38))}, {
start_state(w(29,56)).
}).
#pos(n7, {}, {f(w(26,37))}, {
start_state(w(51,42)).
}).
#pos(n8, {}, {f(w(6,7))}, {
start_state(w(34,8)).
}).
#pos(n9, {}, {f(w(33,34))}, {
start_state(w(24,54)).
}).
#pos(n10, {}, {f(w(52,25))}, {
start_state(w(38,30)).
}).
#pos(n11, {}, {f(w(19,60))}, {
start_state(w(47,13)).
}).
#pos(n12, {}, {f(w(50,60))}, {
start_state(w(22,10)).
}).
#pos(n13, {}, {f(w(3,60))}, {
start_state(w(15,44)).
}).
#pos(n14, {}, {f(w(4,49))}, {
start_state(w(33,36)).
}).
#pos(n15, {}, {f(w(16,45))}, {
start_state(w(5,8)).
}).
#pos(n16, {}, {f(w(34,60))}, {
start_state(w(44,49)).
}).
#pos(n17, {}, {f(w(56,60))}, {
start_state(w(41,39)).
}).
#pos(n18, {}, {f(w(27,16))}, {
start_state(w(52,22)).
}).
#pos(n19, {}, {f(w(55,24))}, {
start_state(w(40,17)).
}).
