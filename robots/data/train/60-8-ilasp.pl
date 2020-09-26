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
start_state(w(41,3)).
}).
#pos(p1, {f(w(29,60))}, {}, {
start_state(w(29,59)).
}).
#pos(p2, {f(w(8,60))}, {}, {
start_state(w(8,44)).
}).
#pos(p3, {f(w(48,60))}, {}, {
start_state(w(48,12)).
}).
#pos(p4, {f(w(19,60))}, {}, {
start_state(w(19,57)).
}).
#pos(p5, {f(w(7,60))}, {}, {
start_state(w(7,43)).
}).
#pos(p6, {f(w(29,60))}, {}, {
start_state(w(29,35)).
}).
#pos(p7, {f(w(41,60))}, {}, {
start_state(w(41,42)).
}).
#pos(p8, {f(w(26,60))}, {}, {
start_state(w(26,53)).
}).
#pos(p9, {f(w(54,60))}, {}, {
start_state(w(54,23)).
}).
#pos(p10, {f(w(5,60))}, {}, {
start_state(w(5,20)).
}).
#pos(p11, {f(w(15,60))}, {}, {
start_state(w(15,23)).
}).
#pos(p12, {f(w(39,60))}, {}, {
start_state(w(39,25)).
}).
#pos(p13, {f(w(22,60))}, {}, {
start_state(w(22,18)).
}).
#pos(p14, {f(w(13,60))}, {}, {
start_state(w(13,28)).
}).
#pos(p15, {f(w(14,60))}, {}, {
start_state(w(14,2)).
}).
#pos(p16, {f(w(32,60))}, {}, {
start_state(w(32,54)).
}).
#pos(p17, {f(w(2,60))}, {}, {
start_state(w(2,51)).
}).
#pos(p18, {f(w(34,60))}, {}, {
start_state(w(34,10)).
}).
#pos(p19, {f(w(45,60))}, {}, {
start_state(w(45,51)).
}).
#pos(n0, {}, {f(w(58,11))}, {
start_state(w(12,22)).
}).
#pos(n1, {}, {f(w(50,34))}, {
start_state(w(35,17)).
}).
#pos(n2, {}, {f(w(33,60))}, {
start_state(w(32,34)).
}).
#pos(n3, {}, {f(w(29,53))}, {
start_state(w(38,50)).
}).
#pos(n4, {}, {f(w(32,60))}, {
start_state(w(28,37)).
}).
#pos(n5, {}, {f(w(34,33))}, {
start_state(w(57,14)).
}).
#pos(n6, {}, {f(w(13,46))}, {
start_state(w(8,10)).
}).
#pos(n7, {}, {f(w(28,48))}, {
start_state(w(15,36)).
}).
#pos(n8, {}, {f(w(1,16))}, {
start_state(w(47,32)).
}).
#pos(n9, {}, {f(w(31,9))}, {
start_state(w(16,60)).
}).
#pos(n10, {}, {f(w(30,26))}, {
start_state(w(45,30)).
}).
#pos(n11, {}, {f(w(7,3))}, {
start_state(w(49,59)).
}).
#pos(n12, {}, {f(w(46,60))}, {
start_state(w(45,38)).
}).
#pos(n13, {}, {f(w(20,15))}, {
start_state(w(55,45)).
}).
#pos(n14, {}, {f(w(26,20))}, {
start_state(w(23,22)).
}).
#pos(n15, {}, {f(w(14,9))}, {
start_state(w(43,4)).
}).
#pos(n16, {}, {f(w(27,54))}, {
start_state(w(51,59)).
}).
#pos(n17, {}, {f(w(58,36))}, {
start_state(w(39,37)).
}).
#pos(n18, {}, {f(w(8,10))}, {
start_state(w(6,49)).
}).
#pos(n19, {}, {f(w(18,29))}, {
start_state(w(49,19)).
}).
