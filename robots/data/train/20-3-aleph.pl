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
f(w(5,14),w(5,20)).
f(w(18,15),w(18,20)).
f(w(2,8),w(2,20)).
f(w(4,12),w(4,20)).
f(w(20,4),w(20,20)).
f(w(18,17),w(18,20)).
f(w(12,19),w(12,20)).
f(w(16,15),w(16,20)).
f(w(4,17),w(4,20)).
f(w(1,8),w(1,20)).
f(w(7,7),w(7,20)).
f(w(7,10),w(7,20)).
f(w(4,12),w(4,20)).
f(w(13,12),w(13,20)).
f(w(18,3),w(18,20)).
f(w(4,11),w(4,20)).
f(w(17,13),w(17,20)).
f(w(18,13),w(18,20)).
f(w(10,11),w(10,20)).
f(w(2,9),w(2,20)).
:-end_in_pos.
:-begin_in_neg.
f(w(7,16),w(18,8)).
f(w(4,10),w(17,14)).
f(w(6,12),w(7,15)).
f(w(14,5),w(19,16)).
f(w(11,4),w(8,18)).
f(w(3,3),w(2,20)).
f(w(6,5),w(3,5)).
f(w(2,11),w(6,3)).
f(w(3,6),w(6,16)).
f(w(15,17),w(4,20)).
f(w(18,10),w(16,20)).
f(w(2,19),w(15,9)).
f(w(15,3),w(8,6)).
f(w(6,17),w(17,8)).
f(w(7,1),w(1,20)).
f(w(4,16),w(17,20)).
f(w(19,12),w(16,20)).
f(w(12,20),w(19,20)).
f(w(20,13),w(6,18)).
f(w(5,16),w(4,3)).
:-end_in_neg.
