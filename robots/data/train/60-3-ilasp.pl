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

#pos(p0, {f(w(43,60))}, {}, {
start_state(w(43,7)).
}).
#pos(p1, {f(w(9,60))}, {}, {
start_state(w(9,18)).
}).
#pos(p2, {f(w(34,60))}, {}, {
start_state(w(34,30)).
}).
#pos(p3, {f(w(11,60))}, {}, {
start_state(w(11,50)).
}).
#pos(p4, {f(w(43,60))}, {}, {
start_state(w(43,10)).
}).
#pos(p5, {f(w(50,60))}, {}, {
start_state(w(50,53)).
}).
#pos(p6, {f(w(15,60))}, {}, {
start_state(w(15,41)).
}).
#pos(p7, {f(w(5,60))}, {}, {
start_state(w(5,55)).
}).
#pos(p8, {f(w(9,60))}, {}, {
start_state(w(9,43)).
}).
#pos(p9, {f(w(39,60))}, {}, {
start_state(w(39,14)).
}).
#pos(p10, {f(w(54,60))}, {}, {
start_state(w(54,57)).
}).
#pos(p11, {f(w(1,60))}, {}, {
start_state(w(1,25)).
}).
#pos(p12, {f(w(4,60))}, {}, {
start_state(w(4,15)).
}).
#pos(p13, {f(w(41,60))}, {}, {
start_state(w(41,52)).
}).
#pos(p14, {f(w(19,60))}, {}, {
start_state(w(19,21)).
}).
#pos(p15, {f(w(49,60))}, {}, {
start_state(w(49,52)).
}).
#pos(p16, {f(w(44,60))}, {}, {
start_state(w(44,19)).
}).
#pos(p17, {f(w(24,60))}, {}, {
start_state(w(24,59)).
}).
#pos(p18, {f(w(20,60))}, {}, {
start_state(w(20,22)).
}).
#pos(p19, {f(w(60,60))}, {}, {
start_state(w(60,6)).
}).
#pos(n0, {}, {f(w(41,45))}, {
start_state(w(36,55)).
}).
#pos(n1, {}, {f(w(28,19))}, {
start_state(w(22,18)).
}).
#pos(n2, {}, {f(w(31,15))}, {
start_state(w(6,27)).
}).
#pos(n3, {}, {f(w(4,7))}, {
start_state(w(6,43)).
}).
#pos(n4, {}, {f(w(18,60))}, {
start_state(w(23,14)).
}).
#pos(n5, {}, {f(w(35,25))}, {
start_state(w(48,30)).
}).
#pos(n6, {}, {f(w(24,1))}, {
start_state(w(24,4)).
}).
#pos(n7, {}, {f(w(11,40))}, {
start_state(w(49,52)).
}).
#pos(n8, {}, {f(w(41,53))}, {
start_state(w(47,10)).
}).
#pos(n9, {}, {f(w(33,46))}, {
start_state(w(60,11)).
}).
#pos(n10, {}, {f(w(47,60))}, {
start_state(w(17,43)).
}).
#pos(n11, {}, {f(w(28,60))}, {
start_state(w(47,51)).
}).
#pos(n12, {}, {f(w(7,23))}, {
start_state(w(20,31)).
}).
#pos(n13, {}, {f(w(33,60))}, {
start_state(w(52,38)).
}).
#pos(n14, {}, {f(w(12,25))}, {
start_state(w(5,36)).
}).
#pos(n15, {}, {f(w(12,18))}, {
start_state(w(51,40)).
}).
#pos(n16, {}, {f(w(5,21))}, {
start_state(w(47,19)).
}).
#pos(n17, {}, {f(w(51,1))}, {
start_state(w(16,6)).
}).
#pos(n18, {}, {f(w(5,6))}, {
start_state(w(41,32)).
}).
#pos(n19, {}, {f(w(31,28))}, {
start_state(w(44,54)).
}).
