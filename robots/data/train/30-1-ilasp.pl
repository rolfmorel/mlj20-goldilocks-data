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

#pos(p0, {f(w(24,30))}, {}, {
start_state(w(24,6)).
}).
#pos(p1, {f(w(11,30))}, {}, {
start_state(w(11,29)).
}).
#pos(p2, {f(w(9,30))}, {}, {
start_state(w(9,14)).
}).
#pos(p3, {f(w(29,30))}, {}, {
start_state(w(29,18)).
}).
#pos(p4, {f(w(16,30))}, {}, {
start_state(w(16,21)).
}).
#pos(p5, {f(w(1,30))}, {}, {
start_state(w(1,16)).
}).
#pos(p6, {f(w(14,30))}, {}, {
start_state(w(14,10)).
}).
#pos(p7, {f(w(14,30))}, {}, {
start_state(w(14,24)).
}).
#pos(p8, {f(w(29,30))}, {}, {
start_state(w(29,16)).
}).
#pos(p9, {f(w(7,30))}, {}, {
start_state(w(7,22)).
}).
#pos(p10, {f(w(16,30))}, {}, {
start_state(w(16,10)).
}).
#pos(p11, {f(w(14,30))}, {}, {
start_state(w(14,12)).
}).
#pos(p12, {f(w(25,30))}, {}, {
start_state(w(25,29)).
}).
#pos(p13, {f(w(15,30))}, {}, {
start_state(w(15,19)).
}).
#pos(p14, {f(w(13,30))}, {}, {
start_state(w(13,12)).
}).
#pos(p15, {f(w(23,30))}, {}, {
start_state(w(23,26)).
}).
#pos(p16, {f(w(12,30))}, {}, {
start_state(w(12,12)).
}).
#pos(p17, {f(w(22,30))}, {}, {
start_state(w(22,25)).
}).
#pos(p18, {f(w(9,30))}, {}, {
start_state(w(9,17)).
}).
#pos(p19, {f(w(19,30))}, {}, {
start_state(w(19,25)).
}).
#pos(n0, {}, {f(w(13,30))}, {
start_state(w(2,18)).
}).
#pos(n1, {}, {f(w(12,30))}, {
start_state(w(5,20)).
}).
#pos(n2, {}, {f(w(7,30))}, {
start_state(w(9,30)).
}).
#pos(n3, {}, {f(w(12,11))}, {
start_state(w(20,11)).
}).
#pos(n4, {}, {f(w(16,30))}, {
start_state(w(11,26)).
}).
#pos(n5, {}, {f(w(12,30))}, {
start_state(w(3,1)).
}).
#pos(n6, {}, {f(w(19,30))}, {
start_state(w(5,29)).
}).
#pos(n7, {}, {f(w(15,1))}, {
start_state(w(27,17)).
}).
#pos(n8, {}, {f(w(12,16))}, {
start_state(w(11,24)).
}).
#pos(n9, {}, {f(w(4,11))}, {
start_state(w(14,27)).
}).
#pos(n10, {}, {f(w(26,24))}, {
start_state(w(14,1)).
}).
#pos(n11, {}, {f(w(14,4))}, {
start_state(w(1,27)).
}).
#pos(n12, {}, {f(w(29,26))}, {
start_state(w(16,27)).
}).
#pos(n13, {}, {f(w(9,30))}, {
start_state(w(25,27)).
}).
#pos(n14, {}, {f(w(28,9))}, {
start_state(w(29,24)).
}).
#pos(n15, {}, {f(w(11,30))}, {
start_state(w(5,29)).
}).
#pos(n16, {}, {f(w(20,18))}, {
start_state(w(7,10)).
}).
#pos(n17, {}, {f(w(19,30))}, {
start_state(w(23,17)).
}).
#pos(n18, {}, {f(w(22,15))}, {
start_state(w(3,16)).
}).
#pos(n19, {}, {f(w(29,10))}, {
start_state(w(22,19)).
}).