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

#pos(p0, {f(w(9,60))}, {}, {
start_state(w(9,35)).
}).
#pos(p1, {f(w(27,60))}, {}, {
start_state(w(27,40)).
}).
#pos(p2, {f(w(46,60))}, {}, {
start_state(w(46,15)).
}).
#pos(p3, {f(w(33,60))}, {}, {
start_state(w(33,17)).
}).
#pos(p4, {f(w(4,60))}, {}, {
start_state(w(4,3)).
}).
#pos(p5, {f(w(2,60))}, {}, {
start_state(w(2,27)).
}).
#pos(p6, {f(w(16,60))}, {}, {
start_state(w(16,46)).
}).
#pos(p7, {f(w(47,60))}, {}, {
start_state(w(47,20)).
}).
#pos(p8, {f(w(9,60))}, {}, {
start_state(w(9,48)).
}).
#pos(p9, {f(w(32,60))}, {}, {
start_state(w(32,36)).
}).
#pos(p10, {f(w(40,60))}, {}, {
start_state(w(40,51)).
}).
#pos(p11, {f(w(54,60))}, {}, {
start_state(w(54,56)).
}).
#pos(p12, {f(w(59,60))}, {}, {
start_state(w(59,52)).
}).
#pos(p13, {f(w(60,60))}, {}, {
start_state(w(60,6)).
}).
#pos(p14, {f(w(46,60))}, {}, {
start_state(w(46,19)).
}).
#pos(p15, {f(w(26,60))}, {}, {
start_state(w(26,45)).
}).
#pos(p16, {f(w(8,60))}, {}, {
start_state(w(8,29)).
}).
#pos(p17, {f(w(2,60))}, {}, {
start_state(w(2,44)).
}).
#pos(p18, {f(w(43,60))}, {}, {
start_state(w(43,29)).
}).
#pos(p19, {f(w(4,60))}, {}, {
start_state(w(4,50)).
}).
#pos(n0, {}, {f(w(23,54))}, {
start_state(w(14,30)).
}).
#pos(n1, {}, {f(w(22,56))}, {
start_state(w(48,48)).
}).
#pos(n2, {}, {f(w(18,18))}, {
start_state(w(19,47)).
}).
#pos(n3, {}, {f(w(54,48))}, {
start_state(w(49,44)).
}).
#pos(n4, {}, {f(w(6,44))}, {
start_state(w(34,46)).
}).
#pos(n5, {}, {f(w(46,14))}, {
start_state(w(20,47)).
}).
#pos(n6, {}, {f(w(20,31))}, {
start_state(w(28,21)).
}).
#pos(n7, {}, {f(w(49,46))}, {
start_state(w(33,44)).
}).
#pos(n8, {}, {f(w(44,12))}, {
start_state(w(48,26)).
}).
#pos(n9, {}, {f(w(22,57))}, {
start_state(w(50,38)).
}).
#pos(n10, {}, {f(w(49,50))}, {
start_state(w(49,31)).
}).
#pos(n11, {}, {f(w(58,10))}, {
start_state(w(28,31)).
}).
#pos(n12, {}, {f(w(25,14))}, {
start_state(w(58,21)).
}).
#pos(n13, {}, {f(w(33,45))}, {
start_state(w(42,17)).
}).
#pos(n14, {}, {f(w(39,9))}, {
start_state(w(35,5)).
}).
#pos(n15, {}, {f(w(8,35))}, {
start_state(w(37,34)).
}).
#pos(n16, {}, {f(w(31,32))}, {
start_state(w(46,8)).
}).
#pos(n17, {}, {f(w(46,29))}, {
start_state(w(1,16)).
}).
#pos(n18, {}, {f(w(57,60))}, {
start_state(w(3,48)).
}).
#pos(n19, {}, {f(w(1,6))}, {
start_state(w(38,33)).
}).
