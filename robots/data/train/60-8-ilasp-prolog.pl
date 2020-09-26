size(60).
position(1..60).
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

#pos(p1, {f(w(41,3),w(41,60)),f(w(29,59),w(29,60)),f(w(8,44),w(8,60)),f(w(48,12),w(48,60)),f(w(19,57),w(19,60)),f(w(7,43),w(7,60)),f(w(29,35),w(29,60)),f(w(41,42),w(41,60)),f(w(26,53),w(26,60)),f(w(54,23),w(54,60)),f(w(5,20),w(5,60)),f(w(15,23),w(15,60)),f(w(39,25),w(39,60)),f(w(22,18),w(22,60)),f(w(13,28),w(13,60)),f(w(14,2),w(14,60)),f(w(32,54),w(32,60)),f(w(2,51),w(2,60)),f(w(34,10),w(34,60)),f(w(45,51),w(45,60))}, {f(w(12,22),w(58,11)),f(w(35,17),w(50,34)),f(w(32,34),w(33,60)),f(w(38,50),w(29,53)),f(w(28,37),w(32,60)),f(w(57,14),w(34,33)),f(w(8,10),w(13,46)),f(w(15,36),w(28,48)),f(w(47,32),w(1,16)),f(w(16,60),w(31,9)),f(w(45,30),w(30,26)),f(w(49,59),w(7,3)),f(w(45,38),w(46,60)),f(w(55,45),w(20,15)),f(w(23,22),w(26,20)),f(w(43,4),w(14,9)),f(w(51,59),w(27,54)),f(w(39,37),w(58,36)),f(w(6,49),w(8,10)),f(w(49,19),w(18,29))}).
