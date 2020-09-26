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

#pos(p0, {f(w(37,70))}, {}, {
start_state(w(37,38)).
}).
#pos(p1, {f(w(15,70))}, {}, {
start_state(w(15,64)).
}).
#pos(p2, {f(w(12,70))}, {}, {
start_state(w(12,7)).
}).
#pos(p3, {f(w(52,70))}, {}, {
start_state(w(52,42)).
}).
#pos(p4, {f(w(59,70))}, {}, {
start_state(w(59,69)).
}).
#pos(p5, {f(w(21,70))}, {}, {
start_state(w(21,30)).
}).
#pos(p6, {f(w(64,70))}, {}, {
start_state(w(64,24)).
}).
#pos(p7, {f(w(33,70))}, {}, {
start_state(w(33,47)).
}).
#pos(p8, {f(w(48,70))}, {}, {
start_state(w(48,34)).
}).
#pos(p9, {f(w(55,70))}, {}, {
start_state(w(55,19)).
}).
#pos(p10, {f(w(7,70))}, {}, {
start_state(w(7,50)).
}).
#pos(p11, {f(w(25,70))}, {}, {
start_state(w(25,17)).
}).
#pos(p12, {f(w(36,70))}, {}, {
start_state(w(36,14)).
}).
#pos(p13, {f(w(67,70))}, {}, {
start_state(w(67,55)).
}).
#pos(p14, {f(w(34,70))}, {}, {
start_state(w(34,59)).
}).
#pos(p15, {f(w(24,70))}, {}, {
start_state(w(24,23)).
}).
#pos(p16, {f(w(61,70))}, {}, {
start_state(w(61,39)).
}).
#pos(p17, {f(w(68,70))}, {}, {
start_state(w(68,43)).
}).
#pos(p18, {f(w(17,70))}, {}, {
start_state(w(17,7)).
}).
#pos(p19, {f(w(11,70))}, {}, {
start_state(w(11,20)).
}).
#pos(n0, {}, {f(w(13,47))}, {
start_state(w(17,41)).
}).
#pos(n1, {}, {f(w(23,37))}, {
start_state(w(66,30)).
}).
#pos(n2, {}, {f(w(56,25))}, {
start_state(w(38,4)).
}).
#pos(n3, {}, {f(w(14,37))}, {
start_state(w(21,58)).
}).
#pos(n4, {}, {f(w(9,62))}, {
start_state(w(61,36)).
}).
#pos(n5, {}, {f(w(12,70))}, {
start_state(w(56,48)).
}).
#pos(n6, {}, {f(w(66,16))}, {
start_state(w(42,5)).
}).
#pos(n7, {}, {f(w(53,70))}, {
start_state(w(19,3)).
}).
#pos(n8, {}, {f(w(58,30))}, {
start_state(w(3,41)).
}).
#pos(n9, {}, {f(w(70,70))}, {
start_state(w(5,47)).
}).
#pos(n10, {}, {f(w(15,70))}, {
start_state(w(12,3)).
}).
#pos(n11, {}, {f(w(3,66))}, {
start_state(w(19,29)).
}).
#pos(n12, {}, {f(w(23,47))}, {
start_state(w(27,35)).
}).
#pos(n13, {}, {f(w(27,70))}, {
start_state(w(52,70)).
}).
#pos(n14, {}, {f(w(43,68))}, {
start_state(w(25,35)).
}).
#pos(n15, {}, {f(w(68,38))}, {
start_state(w(51,49)).
}).
#pos(n16, {}, {f(w(44,16))}, {
start_state(w(53,36)).
}).
#pos(n17, {}, {f(w(55,68))}, {
start_state(w(70,31)).
}).
#pos(n18, {}, {f(w(35,43))}, {
start_state(w(38,25)).
}).
#pos(n19, {}, {f(w(51,70))}, {
start_state(w(62,50)).
}).
