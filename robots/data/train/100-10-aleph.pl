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
size(100).
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
f(w(5,42),w(5,100)).
f(w(3,15),w(3,100)).
f(w(65,76),w(65,100)).
f(w(4,44),w(4,100)).
f(w(51,1),w(51,100)).
f(w(29,22),w(29,100)).
f(w(99,40),w(99,100)).
f(w(33,4),w(33,100)).
f(w(4,66),w(4,100)).
f(w(8,31),w(8,100)).
f(w(73,39),w(73,100)).
f(w(33,54),w(33,100)).
f(w(32,68),w(32,100)).
f(w(24,6),w(24,100)).
f(w(72,36),w(72,100)).
f(w(99,86),w(99,100)).
f(w(81,59),w(81,100)).
f(w(53,25),w(53,100)).
f(w(22,37),w(22,100)).
f(w(69,17),w(69,100)).
:-end_in_pos.
:-begin_in_neg.
f(w(2,89),w(87,89)).
f(w(21,63),w(89,45)).
f(w(89,89),w(46,100)).
f(w(80,64),w(45,37)).
f(w(38,99),w(12,100)).
f(w(61,61),w(19,50)).
f(w(77,34),w(44,37)).
f(w(83,32),w(50,77)).
f(w(36,24),w(64,100)).
f(w(37,66),w(59,64)).
f(w(74,62),w(4,89)).
f(w(12,28),w(84,100)).
f(w(50,17),w(13,100)).
f(w(86,29),w(44,20)).
f(w(70,14),w(34,37)).
f(w(96,19),w(33,95)).
f(w(73,95),w(64,65)).
f(w(93,87),w(18,43)).
f(w(65,58),w(53,100)).
f(w(81,75),w(58,100)).
:-end_in_neg.
