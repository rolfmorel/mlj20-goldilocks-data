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

#pos(p0, {f(w(35,60))}, {}, {
start_state(w(35,42)).
}).
#pos(p1, {f(w(54,60))}, {}, {
start_state(w(54,38)).
}).
#pos(p2, {f(w(59,60))}, {}, {
start_state(w(59,24)).
}).
#pos(p3, {f(w(54,60))}, {}, {
start_state(w(54,56)).
}).
#pos(p4, {f(w(47,60))}, {}, {
start_state(w(47,14)).
}).
#pos(p5, {f(w(54,60))}, {}, {
start_state(w(54,19)).
}).
#pos(p6, {f(w(41,60))}, {}, {
start_state(w(41,56)).
}).
#pos(p7, {f(w(56,60))}, {}, {
start_state(w(56,57)).
}).
#pos(p8, {f(w(54,60))}, {}, {
start_state(w(54,49)).
}).
#pos(p9, {f(w(31,60))}, {}, {
start_state(w(31,1)).
}).
#pos(p10, {f(w(32,60))}, {}, {
start_state(w(32,34)).
}).
#pos(p11, {f(w(20,60))}, {}, {
start_state(w(20,32)).
}).
#pos(p12, {f(w(28,60))}, {}, {
start_state(w(28,36)).
}).
#pos(p13, {f(w(55,60))}, {}, {
start_state(w(55,4)).
}).
#pos(p14, {f(w(10,60))}, {}, {
start_state(w(10,59)).
}).
#pos(p15, {f(w(60,60))}, {}, {
start_state(w(60,5)).
}).
#pos(p16, {f(w(16,60))}, {}, {
start_state(w(16,20)).
}).
#pos(p17, {f(w(9,60))}, {}, {
start_state(w(9,29)).
}).
#pos(p18, {f(w(46,60))}, {}, {
start_state(w(46,10)).
}).
#pos(p19, {f(w(3,60))}, {}, {
start_state(w(3,37)).
}).
#pos(n0, {}, {f(w(34,52))}, {
start_state(w(17,7)).
}).
#pos(n1, {}, {f(w(13,44))}, {
start_state(w(20,52)).
}).
#pos(n2, {}, {f(w(27,60))}, {
start_state(w(17,16)).
}).
#pos(n3, {}, {f(w(40,9))}, {
start_state(w(12,47)).
}).
#pos(n4, {}, {f(w(57,2))}, {
start_state(w(49,27)).
}).
#pos(n5, {}, {f(w(55,19))}, {
start_state(w(19,30)).
}).
#pos(n6, {}, {f(w(18,26))}, {
start_state(w(21,2)).
}).
#pos(n7, {}, {f(w(3,56))}, {
start_state(w(39,9)).
}).
#pos(n8, {}, {f(w(56,18))}, {
start_state(w(53,18)).
}).
#pos(n9, {}, {f(w(48,1))}, {
start_state(w(48,43)).
}).
#pos(n10, {}, {f(w(56,4))}, {
start_state(w(28,29)).
}).
#pos(n11, {}, {f(w(44,19))}, {
start_state(w(47,41)).
}).
#pos(n12, {}, {f(w(37,60))}, {
start_state(w(15,19)).
}).
#pos(n13, {}, {f(w(56,58))}, {
start_state(w(25,13)).
}).
#pos(n14, {}, {f(w(4,26))}, {
start_state(w(50,28)).
}).
#pos(n15, {}, {f(w(8,2))}, {
start_state(w(44,52)).
}).
#pos(n16, {}, {f(w(57,25))}, {
start_state(w(43,21)).
}).
#pos(n17, {}, {f(w(35,60))}, {
start_state(w(60,54)).
}).
#pos(n18, {}, {f(w(40,57))}, {
start_state(w(11,47)).
}).
#pos(n19, {}, {f(w(6,46))}, {
start_state(w(42,32)).
}).
