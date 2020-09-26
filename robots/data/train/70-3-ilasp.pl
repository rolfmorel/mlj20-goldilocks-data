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

#pos(p0, {f(w(32,70))}, {}, {
start_state(w(32,27)).
}).
#pos(p1, {f(w(47,70))}, {}, {
start_state(w(47,67)).
}).
#pos(p2, {f(w(44,70))}, {}, {
start_state(w(44,5)).
}).
#pos(p3, {f(w(34,70))}, {}, {
start_state(w(34,3)).
}).
#pos(p4, {f(w(29,70))}, {}, {
start_state(w(29,57)).
}).
#pos(p5, {f(w(22,70))}, {}, {
start_state(w(22,48)).
}).
#pos(p6, {f(w(32,70))}, {}, {
start_state(w(32,20)).
}).
#pos(p7, {f(w(44,70))}, {}, {
start_state(w(44,46)).
}).
#pos(p8, {f(w(33,70))}, {}, {
start_state(w(33,21)).
}).
#pos(p9, {f(w(43,70))}, {}, {
start_state(w(43,9)).
}).
#pos(p10, {f(w(52,70))}, {}, {
start_state(w(52,56)).
}).
#pos(p11, {f(w(61,70))}, {}, {
start_state(w(61,29)).
}).
#pos(p12, {f(w(68,70))}, {}, {
start_state(w(68,21)).
}).
#pos(p13, {f(w(43,70))}, {}, {
start_state(w(43,39)).
}).
#pos(p14, {f(w(27,70))}, {}, {
start_state(w(27,10)).
}).
#pos(p15, {f(w(6,70))}, {}, {
start_state(w(6,16)).
}).
#pos(p16, {f(w(56,70))}, {}, {
start_state(w(56,35)).
}).
#pos(p17, {f(w(46,70))}, {}, {
start_state(w(46,31)).
}).
#pos(p18, {f(w(43,70))}, {}, {
start_state(w(43,46)).
}).
#pos(p19, {f(w(7,70))}, {}, {
start_state(w(7,53)).
}).
#pos(n0, {}, {f(w(9,70))}, {
start_state(w(4,64)).
}).
#pos(n1, {}, {f(w(35,70))}, {
start_state(w(2,62)).
}).
#pos(n2, {}, {f(w(44,51))}, {
start_state(w(4,70)).
}).
#pos(n3, {}, {f(w(32,58))}, {
start_state(w(63,60)).
}).
#pos(n4, {}, {f(w(68,35))}, {
start_state(w(18,23)).
}).
#pos(n5, {}, {f(w(29,27))}, {
start_state(w(8,58)).
}).
#pos(n6, {}, {f(w(11,70))}, {
start_state(w(39,16)).
}).
#pos(n7, {}, {f(w(48,25))}, {
start_state(w(53,59)).
}).
#pos(n8, {}, {f(w(38,49))}, {
start_state(w(56,58)).
}).
#pos(n9, {}, {f(w(55,70))}, {
start_state(w(64,23)).
}).
#pos(n10, {}, {f(w(66,52))}, {
start_state(w(7,68)).
}).
#pos(n11, {}, {f(w(56,70))}, {
start_state(w(17,64)).
}).
#pos(n12, {}, {f(w(67,28))}, {
start_state(w(43,59)).
}).
#pos(n13, {}, {f(w(22,70))}, {
start_state(w(65,24)).
}).
#pos(n14, {}, {f(w(69,51))}, {
start_state(w(9,29)).
}).
#pos(n15, {}, {f(w(24,47))}, {
start_state(w(36,59)).
}).
#pos(n16, {}, {f(w(34,43))}, {
start_state(w(70,56)).
}).
#pos(n17, {}, {f(w(17,1))}, {
start_state(w(55,45)).
}).
#pos(n18, {}, {f(w(4,70))}, {
start_state(w(70,31)).
}).
#pos(n19, {}, {f(w(35,70))}, {
start_state(w(53,68)).
}).
