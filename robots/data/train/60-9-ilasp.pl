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

#pos(p0, {f(w(6,60))}, {}, {
start_state(w(6,24)).
}).
#pos(p1, {f(w(53,60))}, {}, {
start_state(w(53,32)).
}).
#pos(p2, {f(w(8,60))}, {}, {
start_state(w(8,57)).
}).
#pos(p3, {f(w(53,60))}, {}, {
start_state(w(53,31)).
}).
#pos(p4, {f(w(18,60))}, {}, {
start_state(w(18,30)).
}).
#pos(p5, {f(w(48,60))}, {}, {
start_state(w(48,55)).
}).
#pos(p6, {f(w(38,60))}, {}, {
start_state(w(38,32)).
}).
#pos(p7, {f(w(14,60))}, {}, {
start_state(w(14,47)).
}).
#pos(p8, {f(w(26,60))}, {}, {
start_state(w(26,28)).
}).
#pos(p9, {f(w(39,60))}, {}, {
start_state(w(39,54)).
}).
#pos(p10, {f(w(20,60))}, {}, {
start_state(w(20,29)).
}).
#pos(p11, {f(w(12,60))}, {}, {
start_state(w(12,29)).
}).
#pos(p12, {f(w(40,60))}, {}, {
start_state(w(40,55)).
}).
#pos(p13, {f(w(22,60))}, {}, {
start_state(w(22,45)).
}).
#pos(p14, {f(w(60,60))}, {}, {
start_state(w(60,24)).
}).
#pos(p15, {f(w(6,60))}, {}, {
start_state(w(6,5)).
}).
#pos(p16, {f(w(50,60))}, {}, {
start_state(w(50,59)).
}).
#pos(p17, {f(w(10,60))}, {}, {
start_state(w(10,20)).
}).
#pos(p18, {f(w(2,60))}, {}, {
start_state(w(2,23)).
}).
#pos(p19, {f(w(5,60))}, {}, {
start_state(w(5,23)).
}).
#pos(n0, {}, {f(w(46,53))}, {
start_state(w(31,1)).
}).
#pos(n1, {}, {f(w(41,54))}, {
start_state(w(12,21)).
}).
#pos(n2, {}, {f(w(53,60))}, {
start_state(w(46,53)).
}).
#pos(n3, {}, {f(w(22,60))}, {
start_state(w(1,13)).
}).
#pos(n4, {}, {f(w(15,53))}, {
start_state(w(10,57)).
}).
#pos(n5, {}, {f(w(1,60))}, {
start_state(w(39,46)).
}).
#pos(n6, {}, {f(w(32,15))}, {
start_state(w(28,17)).
}).
#pos(n7, {}, {f(w(8,25))}, {
start_state(w(20,31)).
}).
#pos(n8, {}, {f(w(1,44))}, {
start_state(w(57,22)).
}).
#pos(n9, {}, {f(w(58,59))}, {
start_state(w(50,32)).
}).
#pos(n10, {}, {f(w(21,21))}, {
start_state(w(52,39)).
}).
#pos(n11, {}, {f(w(47,59))}, {
start_state(w(5,44)).
}).
#pos(n12, {}, {f(w(51,5))}, {
start_state(w(55,53)).
}).
#pos(n13, {}, {f(w(51,12))}, {
start_state(w(4,35)).
}).
#pos(n14, {}, {f(w(16,60))}, {
start_state(w(20,18)).
}).
#pos(n15, {}, {f(w(32,40))}, {
start_state(w(15,20)).
}).
#pos(n16, {}, {f(w(2,2))}, {
start_state(w(12,12)).
}).
#pos(n17, {}, {f(w(49,52))}, {
start_state(w(33,54)).
}).
#pos(n18, {}, {f(w(16,3))}, {
start_state(w(12,51)).
}).
#pos(n19, {}, {f(w(20,22))}, {
start_state(w(54,60)).
}).
