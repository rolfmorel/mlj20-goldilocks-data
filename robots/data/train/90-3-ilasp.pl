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

#pos(p0, {f(w(67,90))}, {}, {
start_state(w(67,75)).
}).
#pos(p1, {f(w(17,90))}, {}, {
start_state(w(17,89)).
}).
#pos(p2, {f(w(89,90))}, {}, {
start_state(w(89,31)).
}).
#pos(p3, {f(w(76,90))}, {}, {
start_state(w(76,82)).
}).
#pos(p4, {f(w(17,90))}, {}, {
start_state(w(17,5)).
}).
#pos(p5, {f(w(26,90))}, {}, {
start_state(w(26,11)).
}).
#pos(p6, {f(w(87,90))}, {}, {
start_state(w(87,79)).
}).
#pos(p7, {f(w(55,90))}, {}, {
start_state(w(55,44)).
}).
#pos(p8, {f(w(60,90))}, {}, {
start_state(w(60,48)).
}).
#pos(p9, {f(w(85,90))}, {}, {
start_state(w(85,61)).
}).
#pos(p10, {f(w(37,90))}, {}, {
start_state(w(37,2)).
}).
#pos(p11, {f(w(88,90))}, {}, {
start_state(w(88,56)).
}).
#pos(p12, {f(w(88,90))}, {}, {
start_state(w(88,64)).
}).
#pos(p13, {f(w(88,90))}, {}, {
start_state(w(88,21)).
}).
#pos(p14, {f(w(52,90))}, {}, {
start_state(w(52,89)).
}).
#pos(p15, {f(w(54,90))}, {}, {
start_state(w(54,42)).
}).
#pos(p16, {f(w(89,90))}, {}, {
start_state(w(89,45)).
}).
#pos(p17, {f(w(86,90))}, {}, {
start_state(w(86,66)).
}).
#pos(p18, {f(w(79,90))}, {}, {
start_state(w(79,78)).
}).
#pos(p19, {f(w(12,90))}, {}, {
start_state(w(12,51)).
}).
#pos(n0, {}, {f(w(40,33))}, {
start_state(w(6,36)).
}).
#pos(n1, {}, {f(w(88,24))}, {
start_state(w(21,79)).
}).
#pos(n2, {}, {f(w(24,90))}, {
start_state(w(78,15)).
}).
#pos(n3, {}, {f(w(87,24))}, {
start_state(w(85,56)).
}).
#pos(n4, {}, {f(w(16,8))}, {
start_state(w(61,86)).
}).
#pos(n5, {}, {f(w(43,90))}, {
start_state(w(85,4)).
}).
#pos(n6, {}, {f(w(10,46))}, {
start_state(w(35,15)).
}).
#pos(n7, {}, {f(w(12,74))}, {
start_state(w(35,70)).
}).
#pos(n8, {}, {f(w(55,70))}, {
start_state(w(7,4)).
}).
#pos(n9, {}, {f(w(86,90))}, {
start_state(w(39,71)).
}).
#pos(n10, {}, {f(w(8,29))}, {
start_state(w(61,6)).
}).
#pos(n11, {}, {f(w(26,50))}, {
start_state(w(51,72)).
}).
#pos(n12, {}, {f(w(58,25))}, {
start_state(w(31,49)).
}).
#pos(n13, {}, {f(w(19,37))}, {
start_state(w(62,3)).
}).
#pos(n14, {}, {f(w(60,44))}, {
start_state(w(54,33)).
}).
#pos(n15, {}, {f(w(70,42))}, {
start_state(w(17,34)).
}).
#pos(n16, {}, {f(w(65,90))}, {
start_state(w(6,31)).
}).
#pos(n17, {}, {f(w(78,67))}, {
start_state(w(75,17)).
}).
#pos(n18, {}, {f(w(64,29))}, {
start_state(w(9,57)).
}).
#pos(n19, {}, {f(w(28,53))}, {
start_state(w(80,22)).
}).
