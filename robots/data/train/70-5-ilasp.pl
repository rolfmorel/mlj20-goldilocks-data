size(70).
position(1..70).
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

#pos(p0, {f(w(46,70))}, {}, {
start_state(w(46,69)).
}).
#pos(p1, {f(w(6,70))}, {}, {
start_state(w(6,36)).
}).
#pos(p2, {f(w(13,70))}, {}, {
start_state(w(13,23)).
}).
#pos(p3, {f(w(31,70))}, {}, {
start_state(w(31,57)).
}).
#pos(p4, {f(w(38,70))}, {}, {
start_state(w(38,61)).
}).
#pos(p5, {f(w(13,70))}, {}, {
start_state(w(13,49)).
}).
#pos(p6, {f(w(26,70))}, {}, {
start_state(w(26,9)).
}).
#pos(p7, {f(w(68,70))}, {}, {
start_state(w(68,1)).
}).
#pos(p8, {f(w(4,70))}, {}, {
start_state(w(4,27)).
}).
#pos(p9, {f(w(19,70))}, {}, {
start_state(w(19,64)).
}).
#pos(p10, {f(w(70,70))}, {}, {
start_state(w(70,7)).
}).
#pos(p11, {f(w(33,70))}, {}, {
start_state(w(33,18)).
}).
#pos(p12, {f(w(20,70))}, {}, {
start_state(w(20,62)).
}).
#pos(p13, {f(w(6,70))}, {}, {
start_state(w(6,33)).
}).
#pos(p14, {f(w(13,70))}, {}, {
start_state(w(13,20)).
}).
#pos(p15, {f(w(13,70))}, {}, {
start_state(w(13,48)).
}).
#pos(p16, {f(w(4,70))}, {}, {
start_state(w(4,14)).
}).
#pos(p17, {f(w(20,70))}, {}, {
start_state(w(20,29)).
}).
#pos(p18, {f(w(2,70))}, {}, {
start_state(w(2,20)).
}).
#pos(p19, {f(w(51,70))}, {}, {
start_state(w(51,49)).
}).
#pos(n0, {}, {f(w(27,33))}, {
start_state(w(4,70)).
}).
#pos(n1, {}, {f(w(31,48))}, {
start_state(w(26,39)).
}).
#pos(n2, {}, {f(w(46,70))}, {
start_state(w(68,43)).
}).
#pos(n3, {}, {f(w(63,36))}, {
start_state(w(64,55)).
}).
#pos(n4, {}, {f(w(70,28))}, {
start_state(w(20,15)).
}).
#pos(n5, {}, {f(w(9,16))}, {
start_state(w(24,9)).
}).
#pos(n6, {}, {f(w(2,22))}, {
start_state(w(49,64)).
}).
#pos(n7, {}, {f(w(70,58))}, {
start_state(w(45,19)).
}).
#pos(n8, {}, {f(w(27,8))}, {
start_state(w(46,12)).
}).
#pos(n9, {}, {f(w(36,35))}, {
start_state(w(59,34)).
}).
#pos(n10, {}, {f(w(44,40))}, {
start_state(w(34,58)).
}).
#pos(n11, {}, {f(w(2,46))}, {
start_state(w(52,16)).
}).
#pos(n12, {}, {f(w(9,30))}, {
start_state(w(61,10)).
}).
#pos(n13, {}, {f(w(33,61))}, {
start_state(w(24,58)).
}).
#pos(n14, {}, {f(w(43,55))}, {
start_state(w(31,7)).
}).
#pos(n15, {}, {f(w(9,68))}, {
start_state(w(35,5)).
}).
#pos(n16, {}, {f(w(39,70))}, {
start_state(w(16,46)).
}).
#pos(n17, {}, {f(w(7,41))}, {
start_state(w(9,48)).
}).
#pos(n18, {}, {f(w(50,70))}, {
start_state(w(5,16)).
}).
#pos(n19, {}, {f(w(17,7))}, {
start_state(w(27,49)).
}).
