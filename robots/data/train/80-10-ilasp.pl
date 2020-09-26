size(80).
position(1..80).
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

#pos(p0, {f(w(23,80))}, {}, {
start_state(w(23,48)).
}).
#pos(p1, {f(w(3,80))}, {}, {
start_state(w(3,17)).
}).
#pos(p2, {f(w(41,80))}, {}, {
start_state(w(41,41)).
}).
#pos(p3, {f(w(26,80))}, {}, {
start_state(w(26,21)).
}).
#pos(p4, {f(w(23,80))}, {}, {
start_state(w(23,30)).
}).
#pos(p5, {f(w(7,80))}, {}, {
start_state(w(7,44)).
}).
#pos(p6, {f(w(73,80))}, {}, {
start_state(w(73,49)).
}).
#pos(p7, {f(w(18,80))}, {}, {
start_state(w(18,29)).
}).
#pos(p8, {f(w(22,80))}, {}, {
start_state(w(22,59)).
}).
#pos(p9, {f(w(38,80))}, {}, {
start_state(w(38,46)).
}).
#pos(p10, {f(w(19,80))}, {}, {
start_state(w(19,23)).
}).
#pos(p11, {f(w(55,80))}, {}, {
start_state(w(55,79)).
}).
#pos(p12, {f(w(72,80))}, {}, {
start_state(w(72,4)).
}).
#pos(p13, {f(w(34,80))}, {}, {
start_state(w(34,20)).
}).
#pos(p14, {f(w(4,80))}, {}, {
start_state(w(4,4)).
}).
#pos(p15, {f(w(15,80))}, {}, {
start_state(w(15,2)).
}).
#pos(p16, {f(w(63,80))}, {}, {
start_state(w(63,31)).
}).
#pos(p17, {f(w(13,80))}, {}, {
start_state(w(13,16)).
}).
#pos(p18, {f(w(37,80))}, {}, {
start_state(w(37,51)).
}).
#pos(p19, {f(w(32,80))}, {}, {
start_state(w(32,42)).
}).
#pos(n0, {}, {f(w(36,6))}, {
start_state(w(65,42)).
}).
#pos(n1, {}, {f(w(37,26))}, {
start_state(w(19,20)).
}).
#pos(n2, {}, {f(w(42,74))}, {
start_state(w(18,30)).
}).
#pos(n3, {}, {f(w(50,80))}, {
start_state(w(26,35)).
}).
#pos(n4, {}, {f(w(29,79))}, {
start_state(w(70,12)).
}).
#pos(n5, {}, {f(w(70,80))}, {
start_state(w(43,6)).
}).
#pos(n6, {}, {f(w(32,76))}, {
start_state(w(44,28)).
}).
#pos(n7, {}, {f(w(71,80))}, {
start_state(w(29,35)).
}).
#pos(n8, {}, {f(w(27,80))}, {
start_state(w(17,66)).
}).
#pos(n9, {}, {f(w(49,10))}, {
start_state(w(37,21)).
}).
#pos(n10, {}, {f(w(40,17))}, {
start_state(w(62,13)).
}).
#pos(n11, {}, {f(w(62,77))}, {
start_state(w(35,37)).
}).
#pos(n12, {}, {f(w(29,80))}, {
start_state(w(52,47)).
}).
#pos(n13, {}, {f(w(47,80))}, {
start_state(w(21,21)).
}).
#pos(n14, {}, {f(w(39,72))}, {
start_state(w(35,73)).
}).
#pos(n15, {}, {f(w(77,60))}, {
start_state(w(25,68)).
}).
#pos(n16, {}, {f(w(4,80))}, {
start_state(w(62,11)).
}).
#pos(n17, {}, {f(w(54,40))}, {
start_state(w(51,5)).
}).
#pos(n18, {}, {f(w(37,80))}, {
start_state(w(16,24)).
}).
#pos(n19, {}, {f(w(73,74))}, {
start_state(w(78,79)).
}).
