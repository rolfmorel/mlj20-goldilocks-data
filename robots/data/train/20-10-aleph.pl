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
f(w(6,6),w(6,20)).
f(w(12,5),w(12,20)).
f(w(18,9),w(18,20)).
f(w(7,2),w(7,20)).
f(w(7,6),w(7,20)).
f(w(6,17),w(6,20)).
f(w(4,3),w(4,20)).
f(w(12,19),w(12,20)).
f(w(20,15),w(20,20)).
f(w(6,10),w(6,20)).
f(w(17,9),w(17,20)).
f(w(1,13),w(1,20)).
f(w(13,4),w(13,20)).
f(w(20,18),w(20,20)).
f(w(3,4),w(3,20)).
f(w(13,12),w(13,20)).
f(w(10,19),w(10,20)).
f(w(20,4),w(20,20)).
f(w(2,6),w(2,20)).
f(w(17,8),w(17,20)).
:-end_in_pos.
:-begin_in_neg.
f(w(3,14),w(8,8)).
f(w(7,14),w(13,20)).
f(w(14,4),w(5,19)).
f(w(10,9),w(6,4)).
f(w(2,13),w(1,3)).
f(w(16,13),w(3,10)).
f(w(6,14),w(16,20)).
f(w(14,9),w(8,12)).
f(w(19,8),w(17,14)).
f(w(9,9),w(14,20)).
f(w(7,13),w(20,14)).
f(w(15,16),w(16,2)).
f(w(10,3),w(3,20)).
f(w(8,5),w(14,7)).
f(w(15,8),w(7,17)).
f(w(3,3),w(9,13)).
f(w(14,10),w(13,20)).
f(w(10,8),w(18,11)).
f(w(11,12),w(19,19)).
f(w(13,18),w(11,20)).
:-end_in_neg.
