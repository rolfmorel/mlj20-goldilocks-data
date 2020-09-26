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

#pos(p0, {f(w(57,90))}, {}, {
start_state(w(57,59)).
}).
#pos(p1, {f(w(43,90))}, {}, {
start_state(w(43,89)).
}).
#pos(p2, {f(w(56,90))}, {}, {
start_state(w(56,20)).
}).
#pos(p3, {f(w(19,90))}, {}, {
start_state(w(19,34)).
}).
#pos(p4, {f(w(86,90))}, {}, {
start_state(w(86,88)).
}).
#pos(p5, {f(w(5,90))}, {}, {
start_state(w(5,77)).
}).
#pos(p6, {f(w(14,90))}, {}, {
start_state(w(14,47)).
}).
#pos(p7, {f(w(26,90))}, {}, {
start_state(w(26,57)).
}).
#pos(p8, {f(w(29,90))}, {}, {
start_state(w(29,47)).
}).
#pos(p9, {f(w(15,90))}, {}, {
start_state(w(15,13)).
}).
#pos(p10, {f(w(64,90))}, {}, {
start_state(w(64,12)).
}).
#pos(p11, {f(w(38,90))}, {}, {
start_state(w(38,55)).
}).
#pos(p12, {f(w(27,90))}, {}, {
start_state(w(27,14)).
}).
#pos(p13, {f(w(88,90))}, {}, {
start_state(w(88,15)).
}).
#pos(p14, {f(w(41,90))}, {}, {
start_state(w(41,75)).
}).
#pos(p15, {f(w(41,90))}, {}, {
start_state(w(41,74)).
}).
#pos(p16, {f(w(72,90))}, {}, {
start_state(w(72,89)).
}).
#pos(p17, {f(w(37,90))}, {}, {
start_state(w(37,65)).
}).
#pos(p18, {f(w(52,90))}, {}, {
start_state(w(52,5)).
}).
#pos(p19, {f(w(39,90))}, {}, {
start_state(w(39,62)).
}).
#pos(n0, {}, {f(w(72,5))}, {
start_state(w(60,11)).
}).
#pos(n1, {}, {f(w(36,2))}, {
start_state(w(36,37)).
}).
#pos(n2, {}, {f(w(76,15))}, {
start_state(w(7,35)).
}).
#pos(n3, {}, {f(w(84,42))}, {
start_state(w(28,53)).
}).
#pos(n4, {}, {f(w(71,56))}, {
start_state(w(13,53)).
}).
#pos(n5, {}, {f(w(29,90))}, {
start_state(w(27,52)).
}).
#pos(n6, {}, {f(w(21,3))}, {
start_state(w(90,40)).
}).
#pos(n7, {}, {f(w(31,3))}, {
start_state(w(18,73)).
}).
#pos(n8, {}, {f(w(28,68))}, {
start_state(w(45,88)).
}).
#pos(n9, {}, {f(w(60,68))}, {
start_state(w(89,18)).
}).
#pos(n10, {}, {f(w(39,90))}, {
start_state(w(48,28)).
}).
#pos(n11, {}, {f(w(73,7))}, {
start_state(w(15,70)).
}).
#pos(n12, {}, {f(w(68,90))}, {
start_state(w(30,90)).
}).
#pos(n13, {}, {f(w(48,90))}, {
start_state(w(5,65)).
}).
#pos(n14, {}, {f(w(4,9))}, {
start_state(w(49,26)).
}).
#pos(n15, {}, {f(w(69,28))}, {
start_state(w(16,34)).
}).
#pos(n16, {}, {f(w(5,90))}, {
start_state(w(26,7)).
}).
#pos(n17, {}, {f(w(36,1))}, {
start_state(w(72,51)).
}).
#pos(n18, {}, {f(w(39,61))}, {
start_state(w(29,1)).
}).
#pos(n19, {}, {f(w(16,90))}, {
start_state(w(17,21)).
}).
