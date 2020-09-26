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

#pos(p0, {f(w(18,50))}, {}, {
start_state(w(18,25)).
}).
#pos(p1, {f(w(23,50))}, {}, {
start_state(w(23,28)).
}).
#pos(p2, {f(w(1,50))}, {}, {
start_state(w(1,38)).
}).
#pos(p3, {f(w(36,50))}, {}, {
start_state(w(36,46)).
}).
#pos(p4, {f(w(50,50))}, {}, {
start_state(w(50,38)).
}).
#pos(p5, {f(w(11,50))}, {}, {
start_state(w(11,43)).
}).
#pos(p6, {f(w(5,50))}, {}, {
start_state(w(5,20)).
}).
#pos(p7, {f(w(27,50))}, {}, {
start_state(w(27,36)).
}).
#pos(p8, {f(w(44,50))}, {}, {
start_state(w(44,49)).
}).
#pos(p9, {f(w(50,50))}, {}, {
start_state(w(50,6)).
}).
#pos(p10, {f(w(47,50))}, {}, {
start_state(w(47,11)).
}).
#pos(p11, {f(w(37,50))}, {}, {
start_state(w(37,36)).
}).
#pos(p12, {f(w(24,50))}, {}, {
start_state(w(24,31)).
}).
#pos(p13, {f(w(48,50))}, {}, {
start_state(w(48,1)).
}).
#pos(p14, {f(w(1,50))}, {}, {
start_state(w(1,6)).
}).
#pos(p15, {f(w(39,50))}, {}, {
start_state(w(39,6)).
}).
#pos(p16, {f(w(50,50))}, {}, {
start_state(w(50,47)).
}).
#pos(p17, {f(w(16,50))}, {}, {
start_state(w(16,9)).
}).
#pos(p18, {f(w(25,50))}, {}, {
start_state(w(25,15)).
}).
#pos(p19, {f(w(48,50))}, {}, {
start_state(w(48,43)).
}).
#pos(n0, {}, {f(w(37,20))}, {
start_state(w(44,25)).
}).
#pos(n1, {}, {f(w(5,9))}, {
start_state(w(3,49)).
}).
#pos(n2, {}, {f(w(23,25))}, {
start_state(w(43,13)).
}).
#pos(n3, {}, {f(w(43,12))}, {
start_state(w(1,3)).
}).
#pos(n4, {}, {f(w(41,22))}, {
start_state(w(13,44)).
}).
#pos(n5, {}, {f(w(26,6))}, {
start_state(w(39,15)).
}).
#pos(n6, {}, {f(w(45,44))}, {
start_state(w(18,48)).
}).
#pos(n7, {}, {f(w(39,31))}, {
start_state(w(35,35)).
}).
#pos(n8, {}, {f(w(36,8))}, {
start_state(w(4,19)).
}).
#pos(n9, {}, {f(w(36,29))}, {
start_state(w(25,30)).
}).
#pos(n10, {}, {f(w(33,50))}, {
start_state(w(30,13)).
}).
#pos(n11, {}, {f(w(24,50))}, {
start_state(w(41,4)).
}).
#pos(n12, {}, {f(w(9,38))}, {
start_state(w(27,39)).
}).
#pos(n13, {}, {f(w(3,50))}, {
start_state(w(19,35)).
}).
#pos(n14, {}, {f(w(14,48))}, {
start_state(w(38,21)).
}).
#pos(n15, {}, {f(w(23,33))}, {
start_state(w(14,14)).
}).
#pos(n16, {}, {f(w(33,50))}, {
start_state(w(45,34)).
}).
#pos(n17, {}, {f(w(16,45))}, {
start_state(w(38,20)).
}).
#pos(n18, {}, {f(w(19,48))}, {
start_state(w(14,32)).
}).
#pos(n19, {}, {f(w(30,34))}, {
start_state(w(33,27)).
}).
