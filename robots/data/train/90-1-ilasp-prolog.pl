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

#pos(p1, {f(w(26,52),w(26,90)),f(w(85,26),w(85,90)),f(w(13,81),w(13,90)),f(w(70,74),w(70,90)),f(w(64,17),w(64,90)),f(w(52,6),w(52,90)),f(w(26,67),w(26,90)),f(w(80,34),w(80,90)),f(w(54,5),w(54,90)),f(w(40,41),w(40,90)),f(w(68,33),w(68,90)),f(w(19,75),w(19,90)),f(w(90,17),w(90,90)),f(w(31,84),w(31,90)),f(w(15,82),w(15,90)),f(w(44,8),w(44,90)),f(w(14,75),w(14,90)),f(w(35,44),w(35,90)),f(w(90,40),w(90,90)),f(w(7,16),w(7,90))}, {f(w(53,32),w(26,23)),f(w(65,49),w(13,74)),f(w(33,20),w(41,21)),f(w(10,2),w(87,90)),f(w(88,50),w(75,67)),f(w(80,67),w(63,90)),f(w(43,15),w(60,50)),f(w(15,15),w(43,81)),f(w(81,87),w(61,24)),f(w(38,78),w(19,39)),f(w(48,20),w(82,8)),f(w(1,84),w(58,77)),f(w(36,80),w(17,36)),f(w(57,73),w(2,90)),f(w(5,74),w(70,12)),f(w(79,76),w(27,44)),f(w(15,35),w(86,25)),f(w(19,58),w(24,48)),f(w(28,89),w(24,39)),f(w(56,23),w(21,69))}).
