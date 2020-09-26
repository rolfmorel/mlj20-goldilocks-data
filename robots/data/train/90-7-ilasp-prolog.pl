size(90).
position(1..90).
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

#pos(p1, {f(w(69,52),w(69,90)),f(w(80,22),w(80,90)),f(w(88,21),w(88,90)),f(w(39,3),w(39,90)),f(w(90,70),w(90,90)),f(w(5,7),w(5,90)),f(w(52,41),w(52,90)),f(w(75,88),w(75,90)),f(w(17,23),w(17,90)),f(w(88,7),w(88,90)),f(w(41,5),w(41,90)),f(w(32,53),w(32,90)),f(w(70,73),w(70,90)),f(w(54,22),w(54,90)),f(w(47,45),w(47,90)),f(w(89,55),w(89,90)),f(w(48,2),w(48,90)),f(w(84,56),w(84,90)),f(w(36,6),w(36,90)),f(w(22,78),w(22,90))}, {f(w(89,53),w(8,90)),f(w(85,82),w(79,1)),f(w(10,42),w(78,63)),f(w(21,35),w(82,1)),f(w(82,45),w(6,90)),f(w(76,34),w(6,8)),f(w(12,33),w(72,46)),f(w(58,2),w(55,16)),f(w(74,34),w(40,34)),f(w(86,89),w(30,12)),f(w(30,42),w(80,12)),f(w(11,59),w(81,14)),f(w(65,6),w(62,90)),f(w(41,15),w(85,12)),f(w(77,49),w(52,83)),f(w(42,42),w(80,34)),f(w(49,20),w(75,90)),f(w(57,59),w(52,45)),f(w(1,34),w(34,90)),f(w(63,51),w(88,41))}).
