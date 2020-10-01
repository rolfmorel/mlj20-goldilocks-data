:- use_module(library(aleph)).
:- if(current_predicate(use_rendering/1)).
:- use_rendering(prolog).
:- endif.
:- aleph.
:- style_check(-discontiguous).

:- aleph_set(i,6).
:- aleph_set(clauselength,6).
:- aleph_set(nodes,50000).

:- modeh(*,f(+state,-state)).
:- modeb(*,f(+state,-state)).

:- modeb(*,move_up(+state,-state)).
:- modeb(*,move_down(+state,-state)).
:- modeb(*,move_left(+state,-state)).
:- modeb(*,move_right(+state,-state)).
:- modeb(*,at_top(+state)).
:- modeb(*,at_bottom(+state)).
:- modeb(*,at_left(+state)).
:- modeb(*,at_right(+state)).

:- determination(f/2,move_up/2).
:- determination(f/2,move_down/2).
:- determination(f/2,move_left/2).
:- determination(f/2,move_right/2).
:- determination(f/2,at_top/1).
:- determination(f/2,at_bottom/1).
:- determination(f/2,at_left/1).
:- determination(f/2,at_right/1).
:- determination(f/2,f/2).


:-begin_bg.
size(80).
:- use_module(library(clpfd)).

at_left(w(1,_)).

at_bottom(w(_,1)).

at_top(w(_,Y)):-
    size(Y).
at_right(w(X,_)):-
    size(X).

move_right(w(X1,Y),w(X2,Y)):-
nonvar(X1),

    size(Size),
    X1 < Size,
    X2  is  X1 + 1.

move_left(w(X1,Y),w(X2,Y)):-
	nonvar(X1),
    X1 > 1,
    X2  is  X1 - 1.

move_up(w(X,Y1),w(X,Y2)):-
	nonvar(Y1),
    size(Size),
    Y1 < Size,
    Y2  is  Y1 + 1.

move_down(w(X,Y1),w(X,Y2)):-
	nonvar(Y1),
    Y1 > 1,
    Y2  is  Y1 - 1.
:-end_bg.
:-begin_in_pos.
f(w(15,17),w(15,80)).
f(w(33,43),w(33,80)).
f(w(50,17),w(50,80)).
f(w(35,56),w(35,80)).
f(w(43,54),w(43,80)).
f(w(71,49),w(71,80)).
f(w(76,76),w(76,80)).
f(w(73,79),w(73,80)).
f(w(8,59),w(8,80)).
f(w(20,28),w(20,80)).
f(w(32,59),w(32,80)).
f(w(25,23),w(25,80)).
f(w(74,18),w(74,80)).
f(w(24,17),w(24,80)).
f(w(62,76),w(62,80)).
f(w(31,77),w(31,80)).
f(w(41,33),w(41,80)).
f(w(23,79),w(23,80)).
f(w(50,43),w(50,80)).
f(w(20,32),w(20,80)).
:-end_in_pos.
:-begin_in_neg.
f(w(30,22),w(73,64)).
f(w(80,46),w(25,62)).
f(w(56,48),w(72,76)).
f(w(4,67),w(80,80)).
f(w(33,43),w(61,59)).
f(w(48,1),w(27,78)).
f(w(21,54),w(66,66)).
f(w(77,2),w(38,73)).
f(w(55,2),w(8,34)).
f(w(38,30),w(78,34)).
f(w(33,71),w(77,7)).
f(w(18,42),w(9,80)).
f(w(36,43),w(21,73)).
f(w(68,64),w(73,7)).
f(w(8,13),w(18,80)).
f(w(7,35),w(33,80)).
f(w(10,13),w(40,80)).
f(w(54,75),w(73,58)).
f(w(2,61),w(20,42)).
f(w(60,45),w(4,77)).
:-end_in_neg.
