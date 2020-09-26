size(90).
position(1..90).
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

#pos(p0, {f(w(85,90))}, {}, {
start_state(w(85,88)).
}).
#pos(p1, {f(w(57,90))}, {}, {
start_state(w(57,1)).
}).
#pos(p2, {f(w(69,90))}, {}, {
start_state(w(69,57)).
}).
#pos(p3, {f(w(80,90))}, {}, {
start_state(w(80,54)).
}).
#pos(p4, {f(w(64,90))}, {}, {
start_state(w(64,24)).
}).
#pos(p5, {f(w(56,90))}, {}, {
start_state(w(56,76)).
}).
#pos(p6, {f(w(50,90))}, {}, {
start_state(w(50,56)).
}).
#pos(p7, {f(w(13,90))}, {}, {
start_state(w(13,21)).
}).
#pos(p8, {f(w(65,90))}, {}, {
start_state(w(65,21)).
}).
#pos(p9, {f(w(58,90))}, {}, {
start_state(w(58,54)).
}).
#pos(p10, {f(w(45,90))}, {}, {
start_state(w(45,29)).
}).
#pos(p11, {f(w(37,90))}, {}, {
start_state(w(37,43)).
}).
#pos(p12, {f(w(88,90))}, {}, {
start_state(w(88,13)).
}).
#pos(p13, {f(w(90,90))}, {}, {
start_state(w(90,26)).
}).
#pos(p14, {f(w(88,90))}, {}, {
start_state(w(88,66)).
}).
#pos(p15, {f(w(66,90))}, {}, {
start_state(w(66,17)).
}).
#pos(p16, {f(w(84,90))}, {}, {
start_state(w(84,65)).
}).
#pos(p17, {f(w(69,90))}, {}, {
start_state(w(69,8)).
}).
#pos(p18, {f(w(2,90))}, {}, {
start_state(w(2,64)).
}).
#pos(p19, {f(w(40,90))}, {}, {
start_state(w(40,11)).
}).
#pos(n0, {}, {f(w(21,90))}, {
start_state(w(16,68)).
}).
#pos(n1, {}, {f(w(15,14))}, {
start_state(w(61,63)).
}).
#pos(n2, {}, {f(w(8,23))}, {
start_state(w(37,2)).
}).
#pos(n3, {}, {f(w(88,11))}, {
start_state(w(81,17)).
}).
#pos(n4, {}, {f(w(87,32))}, {
start_state(w(73,26)).
}).
#pos(n5, {}, {f(w(49,6))}, {
start_state(w(31,13)).
}).
#pos(n6, {}, {f(w(52,30))}, {
start_state(w(70,25)).
}).
#pos(n7, {}, {f(w(3,48))}, {
start_state(w(51,5)).
}).
#pos(n8, {}, {f(w(52,50))}, {
start_state(w(89,78)).
}).
#pos(n9, {}, {f(w(49,60))}, {
start_state(w(85,17)).
}).
#pos(n10, {}, {f(w(37,14))}, {
start_state(w(46,88)).
}).
#pos(n11, {}, {f(w(22,43))}, {
start_state(w(64,31)).
}).
#pos(n12, {}, {f(w(87,50))}, {
start_state(w(87,65)).
}).
#pos(n13, {}, {f(w(10,90))}, {
start_state(w(31,13)).
}).
#pos(n14, {}, {f(w(30,41))}, {
start_state(w(19,23)).
}).
#pos(n15, {}, {f(w(80,29))}, {
start_state(w(45,67)).
}).
#pos(n16, {}, {f(w(38,81))}, {
start_state(w(66,29)).
}).
#pos(n17, {}, {f(w(89,63))}, {
start_state(w(47,76)).
}).
#pos(n18, {}, {f(w(43,90))}, {
start_state(w(5,46)).
}).
#pos(n19, {}, {f(w(26,90))}, {
start_state(w(51,51)).
}).
