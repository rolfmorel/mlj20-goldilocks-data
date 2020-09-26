size(30).
position(1..30).
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

#pos(p0, {f(w(7,30))}, {}, {
start_state(w(7,19)).
}).
#pos(p1, {f(w(3,30))}, {}, {
start_state(w(3,8)).
}).
#pos(p2, {f(w(17,30))}, {}, {
start_state(w(17,7)).
}).
#pos(p3, {f(w(10,30))}, {}, {
start_state(w(10,9)).
}).
#pos(p4, {f(w(26,30))}, {}, {
start_state(w(26,24)).
}).
#pos(p5, {f(w(12,30))}, {}, {
start_state(w(12,22)).
}).
#pos(p6, {f(w(14,30))}, {}, {
start_state(w(14,8)).
}).
#pos(p7, {f(w(27,30))}, {}, {
start_state(w(27,10)).
}).
#pos(p8, {f(w(17,30))}, {}, {
start_state(w(17,29)).
}).
#pos(p9, {f(w(6,30))}, {}, {
start_state(w(6,4)).
}).
#pos(p10, {f(w(22,30))}, {}, {
start_state(w(22,16)).
}).
#pos(p11, {f(w(4,30))}, {}, {
start_state(w(4,8)).
}).
#pos(p12, {f(w(21,30))}, {}, {
start_state(w(21,7)).
}).
#pos(p13, {f(w(6,30))}, {}, {
start_state(w(6,27)).
}).
#pos(p14, {f(w(10,30))}, {}, {
start_state(w(10,26)).
}).
#pos(p15, {f(w(26,30))}, {}, {
start_state(w(26,9)).
}).
#pos(p16, {f(w(7,30))}, {}, {
start_state(w(7,10)).
}).
#pos(p17, {f(w(22,30))}, {}, {
start_state(w(22,16)).
}).
#pos(p18, {f(w(3,30))}, {}, {
start_state(w(3,13)).
}).
#pos(p19, {f(w(24,30))}, {}, {
start_state(w(24,28)).
}).
#pos(n0, {}, {f(w(7,2))}, {
start_state(w(6,30)).
}).
#pos(n1, {}, {f(w(15,5))}, {
start_state(w(10,16)).
}).
#pos(n2, {}, {f(w(4,27))}, {
start_state(w(14,13)).
}).
#pos(n3, {}, {f(w(17,12))}, {
start_state(w(28,29)).
}).
#pos(n4, {}, {f(w(1,30))}, {
start_state(w(3,9)).
}).
#pos(n5, {}, {f(w(5,4))}, {
start_state(w(25,26)).
}).
#pos(n6, {}, {f(w(26,4))}, {
start_state(w(25,3)).
}).
#pos(n7, {}, {f(w(11,15))}, {
start_state(w(30,10)).
}).
#pos(n8, {}, {f(w(30,14))}, {
start_state(w(16,2)).
}).
#pos(n9, {}, {f(w(24,6))}, {
start_state(w(21,9)).
}).
#pos(n10, {}, {f(w(22,30))}, {
start_state(w(25,17)).
}).
#pos(n11, {}, {f(w(10,27))}, {
start_state(w(21,24)).
}).
#pos(n12, {}, {f(w(28,20))}, {
start_state(w(30,22)).
}).
#pos(n13, {}, {f(w(18,27))}, {
start_state(w(20,2)).
}).
#pos(n14, {}, {f(w(10,23))}, {
start_state(w(6,4)).
}).
#pos(n15, {}, {f(w(17,2))}, {
start_state(w(12,23)).
}).
#pos(n16, {}, {f(w(15,11))}, {
start_state(w(20,22)).
}).
#pos(n17, {}, {f(w(4,15))}, {
start_state(w(28,22)).
}).
#pos(n18, {}, {f(w(21,26))}, {
start_state(w(11,19)).
}).
#pos(n19, {}, {f(w(29,18))}, {
start_state(w(27,6)).
}).
