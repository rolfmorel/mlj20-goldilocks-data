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

#pos(p0, {f(w(46,60))}, {}, {
start_state(w(46,31)).
}).
#pos(p1, {f(w(35,60))}, {}, {
start_state(w(35,29)).
}).
#pos(p2, {f(w(6,60))}, {}, {
start_state(w(6,29)).
}).
#pos(p3, {f(w(33,60))}, {}, {
start_state(w(33,50)).
}).
#pos(p4, {f(w(27,60))}, {}, {
start_state(w(27,15)).
}).
#pos(p5, {f(w(34,60))}, {}, {
start_state(w(34,36)).
}).
#pos(p6, {f(w(60,60))}, {}, {
start_state(w(60,18)).
}).
#pos(p7, {f(w(30,60))}, {}, {
start_state(w(30,59)).
}).
#pos(p8, {f(w(57,60))}, {}, {
start_state(w(57,43)).
}).
#pos(p9, {f(w(50,60))}, {}, {
start_state(w(50,53)).
}).
#pos(p10, {f(w(40,60))}, {}, {
start_state(w(40,24)).
}).
#pos(p11, {f(w(2,60))}, {}, {
start_state(w(2,2)).
}).
#pos(p12, {f(w(57,60))}, {}, {
start_state(w(57,6)).
}).
#pos(p13, {f(w(15,60))}, {}, {
start_state(w(15,48)).
}).
#pos(p14, {f(w(37,60))}, {}, {
start_state(w(37,53)).
}).
#pos(p15, {f(w(31,60))}, {}, {
start_state(w(31,42)).
}).
#pos(p16, {f(w(9,60))}, {}, {
start_state(w(9,11)).
}).
#pos(p17, {f(w(37,60))}, {}, {
start_state(w(37,26)).
}).
#pos(p18, {f(w(20,60))}, {}, {
start_state(w(20,44)).
}).
#pos(p19, {f(w(4,60))}, {}, {
start_state(w(4,36)).
}).
#pos(n0, {}, {f(w(23,10))}, {
start_state(w(27,17)).
}).
#pos(n1, {}, {f(w(54,58))}, {
start_state(w(37,56)).
}).
#pos(n2, {}, {f(w(2,21))}, {
start_state(w(9,4)).
}).
#pos(n3, {}, {f(w(4,5))}, {
start_state(w(56,16)).
}).
#pos(n4, {}, {f(w(45,60))}, {
start_state(w(28,12)).
}).
#pos(n5, {}, {f(w(13,36))}, {
start_state(w(55,15)).
}).
#pos(n6, {}, {f(w(26,57))}, {
start_state(w(58,5)).
}).
#pos(n7, {}, {f(w(31,60))}, {
start_state(w(4,45)).
}).
#pos(n8, {}, {f(w(9,20))}, {
start_state(w(1,56)).
}).
#pos(n9, {}, {f(w(8,36))}, {
start_state(w(36,23)).
}).
#pos(n10, {}, {f(w(29,3))}, {
start_state(w(34,58)).
}).
#pos(n11, {}, {f(w(18,3))}, {
start_state(w(52,57)).
}).
#pos(n12, {}, {f(w(6,31))}, {
start_state(w(59,29)).
}).
#pos(n13, {}, {f(w(43,55))}, {
start_state(w(42,16)).
}).
#pos(n14, {}, {f(w(51,60))}, {
start_state(w(37,29)).
}).
#pos(n15, {}, {f(w(50,38))}, {
start_state(w(39,30)).
}).
#pos(n16, {}, {f(w(4,60))}, {
start_state(w(40,4)).
}).
#pos(n17, {}, {f(w(60,50))}, {
start_state(w(42,52)).
}).
#pos(n18, {}, {f(w(23,29))}, {
start_state(w(5,7)).
}).
#pos(n19, {}, {f(w(60,16))}, {
start_state(w(14,26)).
}).
