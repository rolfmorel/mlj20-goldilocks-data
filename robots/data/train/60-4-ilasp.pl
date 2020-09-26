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

#pos(p0, {f(w(41,60))}, {}, {
start_state(w(41,32)).
}).
#pos(p1, {f(w(7,60))}, {}, {
start_state(w(7,27)).
}).
#pos(p2, {f(w(28,60))}, {}, {
start_state(w(28,18)).
}).
#pos(p3, {f(w(53,60))}, {}, {
start_state(w(53,6)).
}).
#pos(p4, {f(w(34,60))}, {}, {
start_state(w(34,53)).
}).
#pos(p5, {f(w(50,60))}, {}, {
start_state(w(50,2)).
}).
#pos(p6, {f(w(19,60))}, {}, {
start_state(w(19,59)).
}).
#pos(p7, {f(w(48,60))}, {}, {
start_state(w(48,4)).
}).
#pos(p8, {f(w(17,60))}, {}, {
start_state(w(17,6)).
}).
#pos(p9, {f(w(31,60))}, {}, {
start_state(w(31,37)).
}).
#pos(p10, {f(w(38,60))}, {}, {
start_state(w(38,50)).
}).
#pos(p11, {f(w(25,60))}, {}, {
start_state(w(25,17)).
}).
#pos(p12, {f(w(34,60))}, {}, {
start_state(w(34,11)).
}).
#pos(p13, {f(w(3,60))}, {}, {
start_state(w(3,48)).
}).
#pos(p14, {f(w(30,60))}, {}, {
start_state(w(30,12)).
}).
#pos(p15, {f(w(7,60))}, {}, {
start_state(w(7,51)).
}).
#pos(p16, {f(w(33,60))}, {}, {
start_state(w(33,28)).
}).
#pos(p17, {f(w(59,60))}, {}, {
start_state(w(59,21)).
}).
#pos(p18, {f(w(9,60))}, {}, {
start_state(w(9,25)).
}).
#pos(p19, {f(w(6,60))}, {}, {
start_state(w(6,20)).
}).
#pos(n0, {}, {f(w(43,40))}, {
start_state(w(8,40)).
}).
#pos(n1, {}, {f(w(12,60))}, {
start_state(w(58,14)).
}).
#pos(n2, {}, {f(w(21,8))}, {
start_state(w(16,56)).
}).
#pos(n3, {}, {f(w(4,4))}, {
start_state(w(27,3)).
}).
#pos(n4, {}, {f(w(36,53))}, {
start_state(w(24,1)).
}).
#pos(n5, {}, {f(w(46,60))}, {
start_state(w(7,3)).
}).
#pos(n6, {}, {f(w(35,60))}, {
start_state(w(58,30)).
}).
#pos(n7, {}, {f(w(2,43))}, {
start_state(w(5,23)).
}).
#pos(n8, {}, {f(w(54,56))}, {
start_state(w(5,55)).
}).
#pos(n9, {}, {f(w(33,38))}, {
start_state(w(2,40)).
}).
#pos(n10, {}, {f(w(7,47))}, {
start_state(w(6,32)).
}).
#pos(n11, {}, {f(w(9,17))}, {
start_state(w(47,58)).
}).
#pos(n12, {}, {f(w(35,60))}, {
start_state(w(29,5)).
}).
#pos(n13, {}, {f(w(35,25))}, {
start_state(w(33,54)).
}).
#pos(n14, {}, {f(w(38,60))}, {
start_state(w(6,4)).
}).
#pos(n15, {}, {f(w(2,10))}, {
start_state(w(57,51)).
}).
#pos(n16, {}, {f(w(3,60))}, {
start_state(w(45,56)).
}).
#pos(n17, {}, {f(w(8,60))}, {
start_state(w(5,14)).
}).
#pos(n18, {}, {f(w(36,32))}, {
start_state(w(43,59)).
}).
#pos(n19, {}, {f(w(52,60))}, {
start_state(w(17,18)).
}).
