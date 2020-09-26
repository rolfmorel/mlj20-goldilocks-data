size(70).
position(1..70).
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

#pos(p0, {f(w(65,70))}, {}, {
start_state(w(65,33)).
}).
#pos(p1, {f(w(11,70))}, {}, {
start_state(w(11,40)).
}).
#pos(p2, {f(w(48,70))}, {}, {
start_state(w(48,61)).
}).
#pos(p3, {f(w(2,70))}, {}, {
start_state(w(2,14)).
}).
#pos(p4, {f(w(1,70))}, {}, {
start_state(w(1,68)).
}).
#pos(p5, {f(w(48,70))}, {}, {
start_state(w(48,51)).
}).
#pos(p6, {f(w(42,70))}, {}, {
start_state(w(42,17)).
}).
#pos(p7, {f(w(9,70))}, {}, {
start_state(w(9,52)).
}).
#pos(p8, {f(w(34,70))}, {}, {
start_state(w(34,11)).
}).
#pos(p9, {f(w(38,70))}, {}, {
start_state(w(38,57)).
}).
#pos(p10, {f(w(32,70))}, {}, {
start_state(w(32,10)).
}).
#pos(p11, {f(w(57,70))}, {}, {
start_state(w(57,43)).
}).
#pos(p12, {f(w(56,70))}, {}, {
start_state(w(56,2)).
}).
#pos(p13, {f(w(15,70))}, {}, {
start_state(w(15,63)).
}).
#pos(p14, {f(w(24,70))}, {}, {
start_state(w(24,59)).
}).
#pos(p15, {f(w(4,70))}, {}, {
start_state(w(4,11)).
}).
#pos(p16, {f(w(59,70))}, {}, {
start_state(w(59,63)).
}).
#pos(p17, {f(w(56,70))}, {}, {
start_state(w(56,51)).
}).
#pos(p18, {f(w(30,70))}, {}, {
start_state(w(30,49)).
}).
#pos(p19, {f(w(30,70))}, {}, {
start_state(w(30,58)).
}).
#pos(n0, {}, {f(w(4,13))}, {
start_state(w(39,26)).
}).
#pos(n1, {}, {f(w(39,60))}, {
start_state(w(6,22)).
}).
#pos(n2, {}, {f(w(7,29))}, {
start_state(w(53,58)).
}).
#pos(n3, {}, {f(w(69,70))}, {
start_state(w(67,41)).
}).
#pos(n4, {}, {f(w(29,70))}, {
start_state(w(40,16)).
}).
#pos(n5, {}, {f(w(40,33))}, {
start_state(w(23,30)).
}).
#pos(n6, {}, {f(w(23,19))}, {
start_state(w(27,19)).
}).
#pos(n7, {}, {f(w(65,40))}, {
start_state(w(19,23)).
}).
#pos(n8, {}, {f(w(31,70))}, {
start_state(w(28,15)).
}).
#pos(n9, {}, {f(w(7,70))}, {
start_state(w(53,53)).
}).
#pos(n10, {}, {f(w(65,70))}, {
start_state(w(54,54)).
}).
#pos(n11, {}, {f(w(69,22))}, {
start_state(w(44,19)).
}).
#pos(n12, {}, {f(w(52,46))}, {
start_state(w(2,38)).
}).
#pos(n13, {}, {f(w(41,25))}, {
start_state(w(40,30)).
}).
#pos(n14, {}, {f(w(65,70))}, {
start_state(w(55,53)).
}).
#pos(n15, {}, {f(w(52,23))}, {
start_state(w(10,22)).
}).
#pos(n16, {}, {f(w(61,15))}, {
start_state(w(17,32)).
}).
#pos(n17, {}, {f(w(38,39))}, {
start_state(w(26,55)).
}).
#pos(n18, {}, {f(w(10,38))}, {
start_state(w(42,35)).
}).
#pos(n19, {}, {f(w(44,7))}, {
start_state(w(48,13)).
}).
