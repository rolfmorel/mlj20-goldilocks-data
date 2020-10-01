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
size(20).
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
f(w(18,6),w(18,20)).
f(w(13,14),w(13,20)).
f(w(1,12),w(1,20)).
f(w(4,19),w(4,20)).
f(w(7,14),w(7,20)).
f(w(4,2),w(4,20)).
f(w(20,19),w(20,20)).
f(w(19,8),w(19,20)).
f(w(3,11),w(3,20)).
f(w(18,14),w(18,20)).
f(w(12,3),w(12,20)).
f(w(7,16),w(7,20)).
f(w(8,9),w(8,20)).
f(w(14,9),w(14,20)).
f(w(18,7),w(18,20)).
f(w(1,7),w(1,20)).
f(w(1,4),w(1,20)).
f(w(13,9),w(13,20)).
f(w(20,5),w(20,20)).
f(w(13,12),w(13,20)).
:-end_in_pos.
:-begin_in_neg.
f(w(1,2),w(13,20)).
f(w(6,1),w(18,3)).
f(w(18,17),w(12,6)).
f(w(9,13),w(11,18)).
f(w(10,6),w(20,20)).
f(w(20,10),w(12,5)).
f(w(9,14),w(3,17)).
f(w(9,7),w(14,13)).
f(w(7,15),w(17,5)).
f(w(16,14),w(8,20)).
f(w(13,17),w(8,12)).
f(w(18,5),w(9,2)).
f(w(2,3),w(13,6)).
f(w(15,16),w(11,20)).
f(w(9,1),w(1,17)).
f(w(11,20),w(7,9)).
f(w(6,2),w(9,15)).
f(w(3,9),w(16,5)).
f(w(3,3),w(15,19)).
f(w(20,6),w(18,20)).
:-end_in_neg.
