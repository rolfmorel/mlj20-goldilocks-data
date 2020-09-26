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

#pos(p0, {f(w(50,60))}, {}, {
start_state(w(50,51)).
}).
#pos(p1, {f(w(13,60))}, {}, {
start_state(w(13,16)).
}).
#pos(p2, {f(w(33,60))}, {}, {
start_state(w(33,49)).
}).
#pos(p3, {f(w(57,60))}, {}, {
start_state(w(57,30)).
}).
#pos(p4, {f(w(2,60))}, {}, {
start_state(w(2,12)).
}).
#pos(p5, {f(w(53,60))}, {}, {
start_state(w(53,36)).
}).
#pos(p6, {f(w(46,60))}, {}, {
start_state(w(46,14)).
}).
#pos(p7, {f(w(32,60))}, {}, {
start_state(w(32,17)).
}).
#pos(p8, {f(w(18,60))}, {}, {
start_state(w(18,24)).
}).
#pos(p9, {f(w(16,60))}, {}, {
start_state(w(16,32)).
}).
#pos(p10, {f(w(53,60))}, {}, {
start_state(w(53,44)).
}).
#pos(p11, {f(w(27,60))}, {}, {
start_state(w(27,50)).
}).
#pos(p12, {f(w(6,60))}, {}, {
start_state(w(6,43)).
}).
#pos(p13, {f(w(53,60))}, {}, {
start_state(w(53,26)).
}).
#pos(p14, {f(w(24,60))}, {}, {
start_state(w(24,25)).
}).
#pos(p15, {f(w(54,60))}, {}, {
start_state(w(54,30)).
}).
#pos(p16, {f(w(8,60))}, {}, {
start_state(w(8,14)).
}).
#pos(p17, {f(w(23,60))}, {}, {
start_state(w(23,33)).
}).
#pos(p18, {f(w(7,60))}, {}, {
start_state(w(7,4)).
}).
#pos(p19, {f(w(38,60))}, {}, {
start_state(w(38,50)).
}).
#pos(n0, {}, {f(w(25,60))}, {
start_state(w(12,26)).
}).
#pos(n1, {}, {f(w(32,60))}, {
start_state(w(55,57)).
}).
#pos(n2, {}, {f(w(52,39))}, {
start_state(w(35,38)).
}).
#pos(n3, {}, {f(w(57,60))}, {
start_state(w(23,21)).
}).
#pos(n4, {}, {f(w(41,44))}, {
start_state(w(30,15)).
}).
#pos(n5, {}, {f(w(54,60))}, {
start_state(w(9,6)).
}).
#pos(n6, {}, {f(w(55,47))}, {
start_state(w(4,6)).
}).
#pos(n7, {}, {f(w(53,60))}, {
start_state(w(11,55)).
}).
#pos(n8, {}, {f(w(17,60))}, {
start_state(w(57,31)).
}).
#pos(n9, {}, {f(w(3,1))}, {
start_state(w(59,21)).
}).
#pos(n10, {}, {f(w(54,42))}, {
start_state(w(49,28)).
}).
#pos(n11, {}, {f(w(43,58))}, {
start_state(w(15,43)).
}).
#pos(n12, {}, {f(w(54,57))}, {
start_state(w(49,15)).
}).
#pos(n13, {}, {f(w(55,37))}, {
start_state(w(10,12)).
}).
#pos(n14, {}, {f(w(34,23))}, {
start_state(w(21,18)).
}).
#pos(n15, {}, {f(w(10,32))}, {
start_state(w(25,20)).
}).
#pos(n16, {}, {f(w(26,60))}, {
start_state(w(27,23)).
}).
#pos(n17, {}, {f(w(49,22))}, {
start_state(w(17,48)).
}).
#pos(n18, {}, {f(w(5,15))}, {
start_state(w(37,21)).
}).
#pos(n19, {}, {f(w(49,60))}, {
start_state(w(9,55)).
}).
