size(70).
position(1..70).
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

#pos(p1, {f(w(35,58),w(35,70)),f(w(38,68),w(38,70)),f(w(38,57),w(38,70)),f(w(16,69),w(16,70)),f(w(57,32),w(57,70)),f(w(37,58),w(37,70)),f(w(53,33),w(53,70)),f(w(25,46),w(25,70)),f(w(63,1),w(63,70)),f(w(48,62),w(48,70)),f(w(39,61),w(39,70)),f(w(60,47),w(60,70)),f(w(69,63),w(69,70)),f(w(18,48),w(18,70)),f(w(19,12),w(19,70)),f(w(51,22),w(51,70)),f(w(69,20),w(69,70)),f(w(36,61),w(36,70)),f(w(11,32),w(11,70)),f(w(36,41),w(36,70))}, {f(w(18,14),w(25,36)),f(w(46,24),w(30,63)),f(w(49,29),w(11,8)),f(w(67,53),w(39,8)),f(w(31,67),w(7,29)),f(w(47,52),w(43,57)),f(w(3,45),w(13,42)),f(w(32,64),w(18,70)),f(w(5,19),w(24,65)),f(w(38,5),w(70,70)),f(w(20,65),w(2,70)),f(w(12,50),w(1,38)),f(w(27,28),w(25,4)),f(w(6,42),w(36,70)),f(w(29,39),w(5,5)),f(w(16,25),w(61,7)),f(w(22,42),w(4,43)),f(w(8,44),w(42,70)),f(w(19,22),w(44,5)),f(w(65,7),w(28,36))}).
