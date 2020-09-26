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

#pos(p1, {f(w(5,12),w(5,50)),f(w(34,41),w(34,50)),f(w(18,22),w(18,50)),f(w(4,28),w(4,50)),f(w(29,16),w(29,50)),f(w(45,5),w(45,50)),f(w(50,20),w(50,50)),f(w(9,34),w(9,50)),f(w(29,9),w(29,50)),f(w(19,23),w(19,50)),f(w(46,24),w(46,50)),f(w(11,39),w(11,50)),f(w(20,14),w(20,50)),f(w(39,13),w(39,50)),f(w(24,15),w(24,50)),f(w(13,17),w(13,50)),f(w(47,17),w(47,50)),f(w(8,10),w(8,50)),f(w(46,2),w(46,50)),f(w(25,26),w(25,50))}, {f(w(25,5),w(13,40)),f(w(49,27),w(36,50)),f(w(27,9),w(13,17)),f(w(8,9),w(46,5)),f(w(50,33),w(47,25)),f(w(35,21),w(41,50)),f(w(8,22),w(23,22)),f(w(8,38),w(47,50)),f(w(44,12),w(8,7)),f(w(16,49),w(4,47)),f(w(11,42),w(3,23)),f(w(49,22),w(38,32)),f(w(23,4),w(43,23)),f(w(19,19),w(39,45)),f(w(45,38),w(24,13)),f(w(10,48),w(46,50)),f(w(17,20),w(23,3)),f(w(8,50),w(2,9)),f(w(24,41),w(34,50)),f(w(28,22),w(40,14))}).
