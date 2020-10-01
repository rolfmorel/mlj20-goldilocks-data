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
size(50).
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
f(w(18,23),w(18,50)).
f(w(38,40),w(38,50)).
f(w(44,23),w(44,50)).
f(w(18,9),w(18,50)).
f(w(31,46),w(31,50)).
f(w(19,12),w(19,50)).
f(w(19,34),w(19,50)).
f(w(49,8),w(49,50)).
f(w(34,13),w(34,50)).
f(w(46,7),w(46,50)).
f(w(45,47),w(45,50)).
f(w(36,1),w(36,50)).
f(w(47,35),w(47,50)).
f(w(25,1),w(25,50)).
f(w(16,9),w(16,50)).
f(w(48,38),w(48,50)).
f(w(30,3),w(30,50)).
f(w(38,47),w(38,50)).
f(w(26,49),w(26,50)).
f(w(37,12),w(37,50)).
:-end_in_pos.
:-begin_in_neg.
f(w(47,7),w(40,31)).
f(w(48,27),w(36,39)).
f(w(25,8),w(44,50)).
f(w(10,2),w(47,42)).
f(w(14,39),w(2,50)).
f(w(38,13),w(30,16)).
f(w(7,11),w(16,50)).
f(w(46,21),w(43,43)).
f(w(28,22),w(21,5)).
f(w(46,18),w(20,50)).
f(w(10,6),w(14,10)).
f(w(49,28),w(44,39)).
f(w(9,21),w(7,12)).
f(w(3,15),w(48,21)).
f(w(38,21),w(20,11)).
f(w(38,31),w(35,45)).
f(w(27,13),w(42,9)).
f(w(8,4),w(48,50)).
f(w(28,41),w(46,23)).
f(w(12,49),w(18,33)).
:-end_in_neg.
