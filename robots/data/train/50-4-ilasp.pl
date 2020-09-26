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

#pos(p0, {f(w(12,50))}, {}, {
start_state(w(12,39)).
}).
#pos(p1, {f(w(35,50))}, {}, {
start_state(w(35,40)).
}).
#pos(p2, {f(w(8,50))}, {}, {
start_state(w(8,3)).
}).
#pos(p3, {f(w(26,50))}, {}, {
start_state(w(26,37)).
}).
#pos(p4, {f(w(1,50))}, {}, {
start_state(w(1,32)).
}).
#pos(p5, {f(w(33,50))}, {}, {
start_state(w(33,3)).
}).
#pos(p6, {f(w(21,50))}, {}, {
start_state(w(21,49)).
}).
#pos(p7, {f(w(1,50))}, {}, {
start_state(w(1,30)).
}).
#pos(p8, {f(w(43,50))}, {}, {
start_state(w(43,6)).
}).
#pos(p9, {f(w(16,50))}, {}, {
start_state(w(16,10)).
}).
#pos(p10, {f(w(36,50))}, {}, {
start_state(w(36,35)).
}).
#pos(p11, {f(w(30,50))}, {}, {
start_state(w(30,10)).
}).
#pos(p12, {f(w(36,50))}, {}, {
start_state(w(36,17)).
}).
#pos(p13, {f(w(20,50))}, {}, {
start_state(w(20,7)).
}).
#pos(p14, {f(w(21,50))}, {}, {
start_state(w(21,20)).
}).
#pos(p15, {f(w(31,50))}, {}, {
start_state(w(31,25)).
}).
#pos(p16, {f(w(44,50))}, {}, {
start_state(w(44,48)).
}).
#pos(p17, {f(w(33,50))}, {}, {
start_state(w(33,49)).
}).
#pos(p18, {f(w(40,50))}, {}, {
start_state(w(40,38)).
}).
#pos(p19, {f(w(41,50))}, {}, {
start_state(w(41,41)).
}).
#pos(n0, {}, {f(w(28,38))}, {
start_state(w(29,18)).
}).
#pos(n1, {}, {f(w(50,50))}, {
start_state(w(15,40)).
}).
#pos(n2, {}, {f(w(21,20))}, {
start_state(w(22,12)).
}).
#pos(n3, {}, {f(w(13,41))}, {
start_state(w(29,33)).
}).
#pos(n4, {}, {f(w(21,15))}, {
start_state(w(46,15)).
}).
#pos(n5, {}, {f(w(37,4))}, {
start_state(w(17,17)).
}).
#pos(n6, {}, {f(w(17,13))}, {
start_state(w(10,37)).
}).
#pos(n7, {}, {f(w(20,30))}, {
start_state(w(38,32)).
}).
#pos(n8, {}, {f(w(49,50))}, {
start_state(w(28,32)).
}).
#pos(n9, {}, {f(w(41,24))}, {
start_state(w(2,36)).
}).
#pos(n10, {}, {f(w(26,32))}, {
start_state(w(41,41)).
}).
#pos(n11, {}, {f(w(40,50))}, {
start_state(w(15,35)).
}).
#pos(n12, {}, {f(w(14,50))}, {
start_state(w(2,47)).
}).
#pos(n13, {}, {f(w(17,1))}, {
start_state(w(16,2)).
}).
#pos(n14, {}, {f(w(13,45))}, {
start_state(w(25,5)).
}).
#pos(n15, {}, {f(w(21,37))}, {
start_state(w(15,49)).
}).
#pos(n16, {}, {f(w(37,24))}, {
start_state(w(38,12)).
}).
#pos(n17, {}, {f(w(13,32))}, {
start_state(w(40,13)).
}).
#pos(n18, {}, {f(w(40,27))}, {
start_state(w(11,42)).
}).
#pos(n19, {}, {f(w(40,45))}, {
start_state(w(33,35)).
}).
