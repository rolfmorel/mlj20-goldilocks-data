size(50).
position(1..50).
#maxv(3).
#modeh(f(var(state),var(state)), (positive)).
#modeb(3,move_up(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_down(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_left(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_right(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,f(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,at_top(var(state)), (positive)).
#modeb(3,at_bottom(var(state)), (positive)).
#modeb(3,at_left(var(state)), (positive)).
#modeb(3,at_right(var(state)), (positive)).


#bias(":- occurs(V, X), #false : occurs(V, Y), Y != X.").
#bias("occurs(X, f(X, Y)) :- head(f(X, Y)).").
#bias("occurs(X, f(Y, X)) :- head(f(Y, X)).").
#bias("occurs(X, f(X, Y)) :- body(f(X, Y)).").
#bias("occurs(X, f(Y, X)) :- body(f(Y, X)).").
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

#pos(p1, {f(w(12,39),w(12,50)),f(w(35,40),w(35,50)),f(w(8,3),w(8,50)),f(w(26,37),w(26,50)),f(w(1,32),w(1,50)),f(w(33,3),w(33,50)),f(w(21,49),w(21,50)),f(w(1,30),w(1,50)),f(w(43,6),w(43,50)),f(w(16,10),w(16,50)),f(w(36,35),w(36,50)),f(w(30,10),w(30,50)),f(w(36,17),w(36,50)),f(w(20,7),w(20,50)),f(w(21,20),w(21,50)),f(w(31,25),w(31,50)),f(w(44,48),w(44,50)),f(w(33,49),w(33,50)),f(w(40,38),w(40,50)),f(w(41,41),w(41,50))}, {f(w(29,18),w(28,38)),f(w(15,40),w(50,50)),f(w(22,12),w(21,20)),f(w(29,33),w(13,41)),f(w(46,15),w(21,15)),f(w(17,17),w(37,4)),f(w(10,37),w(17,13)),f(w(38,32),w(20,30)),f(w(28,32),w(49,50)),f(w(2,36),w(41,24)),f(w(41,41),w(26,32)),f(w(15,35),w(40,50)),f(w(2,47),w(14,50)),f(w(16,2),w(17,1)),f(w(25,5),w(13,45)),f(w(15,49),w(21,37)),f(w(38,12),w(37,24)),f(w(40,13),w(13,32)),f(w(11,42),w(40,27)),f(w(33,35),w(40,45))}).
