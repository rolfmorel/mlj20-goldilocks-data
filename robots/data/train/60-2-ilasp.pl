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

#pos(p0, {f(w(42,60))}, {}, {
start_state(w(42,47)).
}).
#pos(p1, {f(w(15,60))}, {}, {
start_state(w(15,23)).
}).
#pos(p2, {f(w(41,60))}, {}, {
start_state(w(41,12)).
}).
#pos(p3, {f(w(11,60))}, {}, {
start_state(w(11,35)).
}).
#pos(p4, {f(w(38,60))}, {}, {
start_state(w(38,22)).
}).
#pos(p5, {f(w(33,60))}, {}, {
start_state(w(33,12)).
}).
#pos(p6, {f(w(45,60))}, {}, {
start_state(w(45,48)).
}).
#pos(p7, {f(w(50,60))}, {}, {
start_state(w(50,15)).
}).
#pos(p8, {f(w(22,60))}, {}, {
start_state(w(22,28)).
}).
#pos(p9, {f(w(50,60))}, {}, {
start_state(w(50,28)).
}).
#pos(p10, {f(w(41,60))}, {}, {
start_state(w(41,43)).
}).
#pos(p11, {f(w(45,60))}, {}, {
start_state(w(45,17)).
}).
#pos(p12, {f(w(2,60))}, {}, {
start_state(w(2,42)).
}).
#pos(p13, {f(w(4,60))}, {}, {
start_state(w(4,11)).
}).
#pos(p14, {f(w(38,60))}, {}, {
start_state(w(38,7)).
}).
#pos(p15, {f(w(57,60))}, {}, {
start_state(w(57,29)).
}).
#pos(p16, {f(w(12,60))}, {}, {
start_state(w(12,53)).
}).
#pos(p17, {f(w(24,60))}, {}, {
start_state(w(24,58)).
}).
#pos(p18, {f(w(4,60))}, {}, {
start_state(w(4,5)).
}).
#pos(p19, {f(w(21,60))}, {}, {
start_state(w(21,3)).
}).
#pos(n0, {}, {f(w(29,16))}, {
start_state(w(56,54)).
}).
#pos(n1, {}, {f(w(26,50))}, {
start_state(w(47,26)).
}).
#pos(n2, {}, {f(w(46,54))}, {
start_state(w(60,58)).
}).
#pos(n3, {}, {f(w(24,34))}, {
start_state(w(50,22)).
}).
#pos(n4, {}, {f(w(60,13))}, {
start_state(w(35,19)).
}).
#pos(n5, {}, {f(w(51,27))}, {
start_state(w(38,20)).
}).
#pos(n6, {}, {f(w(46,60))}, {
start_state(w(58,37)).
}).
#pos(n7, {}, {f(w(49,27))}, {
start_state(w(24,20)).
}).
#pos(n8, {}, {f(w(51,60))}, {
start_state(w(40,19)).
}).
#pos(n9, {}, {f(w(20,46))}, {
start_state(w(47,1)).
}).
#pos(n10, {}, {f(w(1,36))}, {
start_state(w(7,58)).
}).
#pos(n11, {}, {f(w(46,60))}, {
start_state(w(30,34)).
}).
#pos(n12, {}, {f(w(20,16))}, {
start_state(w(10,18)).
}).
#pos(n13, {}, {f(w(34,60))}, {
start_state(w(31,50)).
}).
#pos(n14, {}, {f(w(50,18))}, {
start_state(w(23,42)).
}).
#pos(n15, {}, {f(w(31,46))}, {
start_state(w(42,9)).
}).
#pos(n16, {}, {f(w(52,4))}, {
start_state(w(30,51)).
}).
#pos(n17, {}, {f(w(45,35))}, {
start_state(w(4,48)).
}).
#pos(n18, {}, {f(w(45,60))}, {
start_state(w(33,59)).
}).
#pos(n19, {}, {f(w(35,56))}, {
start_state(w(10,5)).
}).
