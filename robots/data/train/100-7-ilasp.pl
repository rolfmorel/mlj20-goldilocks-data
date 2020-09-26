size(100).
position(1..100).
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

#pos(p0, {f(w(62,100))}, {}, {
start_state(w(62,40)).
}).
#pos(p1, {f(w(71,100))}, {}, {
start_state(w(71,70)).
}).
#pos(p2, {f(w(5,100))}, {}, {
start_state(w(5,27)).
}).
#pos(p3, {f(w(50,100))}, {}, {
start_state(w(50,9)).
}).
#pos(p4, {f(w(59,100))}, {}, {
start_state(w(59,34)).
}).
#pos(p5, {f(w(89,100))}, {}, {
start_state(w(89,50)).
}).
#pos(p6, {f(w(46,100))}, {}, {
start_state(w(46,1)).
}).
#pos(p7, {f(w(82,100))}, {}, {
start_state(w(82,84)).
}).
#pos(p8, {f(w(11,100))}, {}, {
start_state(w(11,95)).
}).
#pos(p9, {f(w(32,100))}, {}, {
start_state(w(32,79)).
}).
#pos(p10, {f(w(60,100))}, {}, {
start_state(w(60,10)).
}).
#pos(p11, {f(w(35,100))}, {}, {
start_state(w(35,49)).
}).
#pos(p12, {f(w(84,100))}, {}, {
start_state(w(84,89)).
}).
#pos(p13, {f(w(41,100))}, {}, {
start_state(w(41,69)).
}).
#pos(p14, {f(w(22,100))}, {}, {
start_state(w(22,43)).
}).
#pos(p15, {f(w(66,100))}, {}, {
start_state(w(66,59)).
}).
#pos(p16, {f(w(75,100))}, {}, {
start_state(w(75,18)).
}).
#pos(p17, {f(w(21,100))}, {}, {
start_state(w(21,57)).
}).
#pos(p18, {f(w(87,100))}, {}, {
start_state(w(87,7)).
}).
#pos(p19, {f(w(24,100))}, {}, {
start_state(w(24,83)).
}).
#pos(n0, {}, {f(w(48,100))}, {
start_state(w(23,35)).
}).
#pos(n1, {}, {f(w(69,100))}, {
start_state(w(17,57)).
}).
#pos(n2, {}, {f(w(19,60))}, {
start_state(w(56,58)).
}).
#pos(n3, {}, {f(w(48,100))}, {
start_state(w(60,98)).
}).
#pos(n4, {}, {f(w(36,100))}, {
start_state(w(13,71)).
}).
#pos(n5, {}, {f(w(35,100))}, {
start_state(w(46,30)).
}).
#pos(n6, {}, {f(w(54,62))}, {
start_state(w(22,99)).
}).
#pos(n7, {}, {f(w(8,100))}, {
start_state(w(88,47)).
}).
#pos(n8, {}, {f(w(16,48))}, {
start_state(w(67,54)).
}).
#pos(n9, {}, {f(w(86,76))}, {
start_state(w(14,4)).
}).
#pos(n10, {}, {f(w(59,64))}, {
start_state(w(8,99)).
}).
#pos(n11, {}, {f(w(35,91))}, {
start_state(w(28,22)).
}).
#pos(n12, {}, {f(w(23,100))}, {
start_state(w(15,94)).
}).
#pos(n13, {}, {f(w(81,100))}, {
start_state(w(60,12)).
}).
#pos(n14, {}, {f(w(60,18))}, {
start_state(w(21,63)).
}).
#pos(n15, {}, {f(w(15,14))}, {
start_state(w(19,33)).
}).
#pos(n16, {}, {f(w(42,79))}, {
start_state(w(85,10)).
}).
#pos(n17, {}, {f(w(31,55))}, {
start_state(w(40,20)).
}).
#pos(n18, {}, {f(w(60,95))}, {
start_state(w(28,80)).
}).
#pos(n19, {}, {f(w(67,100))}, {
start_state(w(78,73)).
}).
