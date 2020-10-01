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
f(w(31,25),w(31,50)).
f(w(40,11),w(40,50)).
f(w(45,27),w(45,50)).
f(w(34,4),w(34,50)).
f(w(38,4),w(38,50)).
f(w(33,39),w(33,50)).
f(w(7,6),w(7,50)).
f(w(17,49),w(17,50)).
f(w(40,20),w(40,50)).
f(w(38,1),w(38,50)).
f(w(33,25),w(33,50)).
f(w(4,49),w(4,50)).
f(w(23,8),w(23,50)).
f(w(45,23),w(45,50)).
f(w(4,27),w(4,50)).
f(w(16,33),w(16,50)).
f(w(2,47),w(2,50)).
f(w(40,40),w(40,50)).
f(w(16,47),w(16,50)).
f(w(12,5),w(12,50)).
:-end_in_pos.
:-begin_in_neg.
f(w(37,25),w(18,47)).
f(w(7,4),w(21,5)).
f(w(33,2),w(31,50)).
f(w(13,19),w(26,50)).
f(w(40,27),w(15,39)).
f(w(43,15),w(18,18)).
f(w(41,17),w(34,28)).
f(w(36,2),w(29,10)).
f(w(31,13),w(40,50)).
f(w(38,50),w(44,50)).
f(w(32,13),w(40,22)).
f(w(12,40),w(18,28)).
f(w(26,4),w(26,3)).
f(w(20,21),w(44,44)).
f(w(50,4),w(32,11)).
f(w(22,41),w(1,2)).
f(w(50,2),w(41,47)).
f(w(24,23),w(24,49)).
f(w(42,2),w(44,50)).
f(w(31,46),w(37,5)).
:-end_in_neg.
