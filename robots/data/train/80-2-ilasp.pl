size(80).
position(1..80).
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

#pos(p0, {f(w(45,80))}, {}, {
start_state(w(45,65)).
}).
#pos(p1, {f(w(34,80))}, {}, {
start_state(w(34,63)).
}).
#pos(p2, {f(w(65,80))}, {}, {
start_state(w(65,33)).
}).
#pos(p3, {f(w(14,80))}, {}, {
start_state(w(14,4)).
}).
#pos(p4, {f(w(59,80))}, {}, {
start_state(w(59,36)).
}).
#pos(p5, {f(w(52,80))}, {}, {
start_state(w(52,74)).
}).
#pos(p6, {f(w(79,80))}, {}, {
start_state(w(79,16)).
}).
#pos(p7, {f(w(46,80))}, {}, {
start_state(w(46,33)).
}).
#pos(p8, {f(w(67,80))}, {}, {
start_state(w(67,62)).
}).
#pos(p9, {f(w(6,80))}, {}, {
start_state(w(6,47)).
}).
#pos(p10, {f(w(38,80))}, {}, {
start_state(w(38,38)).
}).
#pos(p11, {f(w(30,80))}, {}, {
start_state(w(30,25)).
}).
#pos(p12, {f(w(49,80))}, {}, {
start_state(w(49,61)).
}).
#pos(p13, {f(w(14,80))}, {}, {
start_state(w(14,33)).
}).
#pos(p14, {f(w(5,80))}, {}, {
start_state(w(5,66)).
}).
#pos(p15, {f(w(54,80))}, {}, {
start_state(w(54,32)).
}).
#pos(p16, {f(w(40,80))}, {}, {
start_state(w(40,29)).
}).
#pos(p17, {f(w(30,80))}, {}, {
start_state(w(30,73)).
}).
#pos(p18, {f(w(62,80))}, {}, {
start_state(w(62,41)).
}).
#pos(p19, {f(w(55,80))}, {}, {
start_state(w(55,15)).
}).
#pos(n0, {}, {f(w(66,31))}, {
start_state(w(54,67)).
}).
#pos(n1, {}, {f(w(28,31))}, {
start_state(w(46,24)).
}).
#pos(n2, {}, {f(w(77,69))}, {
start_state(w(18,22)).
}).
#pos(n3, {}, {f(w(35,36))}, {
start_state(w(69,17)).
}).
#pos(n4, {}, {f(w(51,65))}, {
start_state(w(7,78)).
}).
#pos(n5, {}, {f(w(58,80))}, {
start_state(w(64,65)).
}).
#pos(n6, {}, {f(w(20,51))}, {
start_state(w(29,40)).
}).
#pos(n7, {}, {f(w(44,35))}, {
start_state(w(24,8)).
}).
#pos(n8, {}, {f(w(57,80))}, {
start_state(w(38,8)).
}).
#pos(n9, {}, {f(w(41,80))}, {
start_state(w(35,55)).
}).
#pos(n10, {}, {f(w(25,8))}, {
start_state(w(11,18)).
}).
#pos(n11, {}, {f(w(67,30))}, {
start_state(w(71,72)).
}).
#pos(n12, {}, {f(w(76,45))}, {
start_state(w(75,13)).
}).
#pos(n13, {}, {f(w(64,44))}, {
start_state(w(54,57)).
}).
#pos(n14, {}, {f(w(59,7))}, {
start_state(w(26,59)).
}).
#pos(n15, {}, {f(w(44,26))}, {
start_state(w(79,62)).
}).
#pos(n16, {}, {f(w(28,5))}, {
start_state(w(59,32)).
}).
#pos(n17, {}, {f(w(41,80))}, {
start_state(w(18,44)).
}).
#pos(n18, {}, {f(w(38,72))}, {
start_state(w(53,16)).
}).
#pos(n19, {}, {f(w(45,1))}, {
start_state(w(62,78)).
}).
