size(50).
position(1..50).
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

#pos(p0, {f(w(21,50))}, {}, {
start_state(w(21,44)).
}).
#pos(p1, {f(w(45,50))}, {}, {
start_state(w(45,22)).
}).
#pos(p2, {f(w(11,50))}, {}, {
start_state(w(11,28)).
}).
#pos(p3, {f(w(2,50))}, {}, {
start_state(w(2,25)).
}).
#pos(p4, {f(w(38,50))}, {}, {
start_state(w(38,42)).
}).
#pos(p5, {f(w(38,50))}, {}, {
start_state(w(38,6)).
}).
#pos(p6, {f(w(44,50))}, {}, {
start_state(w(44,40)).
}).
#pos(p7, {f(w(17,50))}, {}, {
start_state(w(17,4)).
}).
#pos(p8, {f(w(33,50))}, {}, {
start_state(w(33,24)).
}).
#pos(p9, {f(w(31,50))}, {}, {
start_state(w(31,7)).
}).
#pos(p10, {f(w(4,50))}, {}, {
start_state(w(4,33)).
}).
#pos(p11, {f(w(44,50))}, {}, {
start_state(w(44,18)).
}).
#pos(p12, {f(w(19,50))}, {}, {
start_state(w(19,16)).
}).
#pos(p13, {f(w(41,50))}, {}, {
start_state(w(41,1)).
}).
#pos(p14, {f(w(14,50))}, {}, {
start_state(w(14,20)).
}).
#pos(p15, {f(w(46,50))}, {}, {
start_state(w(46,5)).
}).
#pos(p16, {f(w(19,50))}, {}, {
start_state(w(19,14)).
}).
#pos(p17, {f(w(10,50))}, {}, {
start_state(w(10,49)).
}).
#pos(p18, {f(w(35,50))}, {}, {
start_state(w(35,31)).
}).
#pos(p19, {f(w(20,50))}, {}, {
start_state(w(20,42)).
}).
#pos(n0, {}, {f(w(23,3))}, {
start_state(w(27,13)).
}).
#pos(n1, {}, {f(w(20,10))}, {
start_state(w(24,28)).
}).
#pos(n2, {}, {f(w(3,46))}, {
start_state(w(25,20)).
}).
#pos(n3, {}, {f(w(24,17))}, {
start_state(w(20,14)).
}).
#pos(n4, {}, {f(w(5,15))}, {
start_state(w(12,42)).
}).
#pos(n5, {}, {f(w(49,30))}, {
start_state(w(48,3)).
}).
#pos(n6, {}, {f(w(48,24))}, {
start_state(w(14,25)).
}).
#pos(n7, {}, {f(w(25,40))}, {
start_state(w(44,23)).
}).
#pos(n8, {}, {f(w(38,8))}, {
start_state(w(11,25)).
}).
#pos(n9, {}, {f(w(8,50))}, {
start_state(w(37,43)).
}).
#pos(n10, {}, {f(w(22,3))}, {
start_state(w(30,27)).
}).
#pos(n11, {}, {f(w(17,50))}, {
start_state(w(28,24)).
}).
#pos(n12, {}, {f(w(21,33))}, {
start_state(w(36,2)).
}).
#pos(n13, {}, {f(w(40,3))}, {
start_state(w(10,22)).
}).
#pos(n14, {}, {f(w(30,46))}, {
start_state(w(41,32)).
}).
#pos(n15, {}, {f(w(27,41))}, {
start_state(w(18,33)).
}).
#pos(n16, {}, {f(w(1,43))}, {
start_state(w(9,37)).
}).
#pos(n17, {}, {f(w(5,50))}, {
start_state(w(33,37)).
}).
#pos(n18, {}, {f(w(33,43))}, {
start_state(w(6,5)).
}).
#pos(n19, {}, {f(w(12,50))}, {
start_state(w(39,28)).
}).
