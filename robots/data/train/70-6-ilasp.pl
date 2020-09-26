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

#pos(p0, {f(w(51,70))}, {}, {
start_state(w(51,43)).
}).
#pos(p1, {f(w(31,70))}, {}, {
start_state(w(31,54)).
}).
#pos(p2, {f(w(4,70))}, {}, {
start_state(w(4,59)).
}).
#pos(p3, {f(w(66,70))}, {}, {
start_state(w(66,37)).
}).
#pos(p4, {f(w(47,70))}, {}, {
start_state(w(47,27)).
}).
#pos(p5, {f(w(69,70))}, {}, {
start_state(w(69,22)).
}).
#pos(p6, {f(w(4,70))}, {}, {
start_state(w(4,23)).
}).
#pos(p7, {f(w(26,70))}, {}, {
start_state(w(26,14)).
}).
#pos(p8, {f(w(51,70))}, {}, {
start_state(w(51,48)).
}).
#pos(p9, {f(w(13,70))}, {}, {
start_state(w(13,46)).
}).
#pos(p10, {f(w(70,70))}, {}, {
start_state(w(70,27)).
}).
#pos(p11, {f(w(18,70))}, {}, {
start_state(w(18,47)).
}).
#pos(p12, {f(w(57,70))}, {}, {
start_state(w(57,50)).
}).
#pos(p13, {f(w(47,70))}, {}, {
start_state(w(47,9)).
}).
#pos(p14, {f(w(52,70))}, {}, {
start_state(w(52,58)).
}).
#pos(p15, {f(w(10,70))}, {}, {
start_state(w(10,21)).
}).
#pos(p16, {f(w(67,70))}, {}, {
start_state(w(67,11)).
}).
#pos(p17, {f(w(3,70))}, {}, {
start_state(w(3,27)).
}).
#pos(p18, {f(w(42,70))}, {}, {
start_state(w(42,62)).
}).
#pos(p19, {f(w(68,70))}, {}, {
start_state(w(68,69)).
}).
#pos(n0, {}, {f(w(44,70))}, {
start_state(w(61,50)).
}).
#pos(n1, {}, {f(w(48,70))}, {
start_state(w(52,31)).
}).
#pos(n2, {}, {f(w(48,4))}, {
start_state(w(55,33)).
}).
#pos(n3, {}, {f(w(24,10))}, {
start_state(w(21,6)).
}).
#pos(n4, {}, {f(w(51,70))}, {
start_state(w(41,5)).
}).
#pos(n5, {}, {f(w(41,30))}, {
start_state(w(64,18)).
}).
#pos(n6, {}, {f(w(52,54))}, {
start_state(w(62,6)).
}).
#pos(n7, {}, {f(w(37,12))}, {
start_state(w(38,15)).
}).
#pos(n8, {}, {f(w(50,63))}, {
start_state(w(30,35)).
}).
#pos(n9, {}, {f(w(11,43))}, {
start_state(w(67,24)).
}).
#pos(n10, {}, {f(w(70,70))}, {
start_state(w(3,57)).
}).
#pos(n11, {}, {f(w(15,70))}, {
start_state(w(38,31)).
}).
#pos(n12, {}, {f(w(65,70))}, {
start_state(w(64,70)).
}).
#pos(n13, {}, {f(w(2,53))}, {
start_state(w(55,30)).
}).
#pos(n14, {}, {f(w(15,52))}, {
start_state(w(28,10)).
}).
#pos(n15, {}, {f(w(57,70))}, {
start_state(w(58,9)).
}).
#pos(n16, {}, {f(w(21,70))}, {
start_state(w(4,16)).
}).
#pos(n17, {}, {f(w(18,29))}, {
start_state(w(46,24)).
}).
#pos(n18, {}, {f(w(10,63))}, {
start_state(w(35,28)).
}).
#pos(n19, {}, {f(w(28,10))}, {
start_state(w(12,66)).
}).
