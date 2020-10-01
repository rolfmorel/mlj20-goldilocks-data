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
f(w(13,5),w(13,20)).
f(w(20,9),w(20,20)).
f(w(16,8),w(16,20)).
f(w(17,5),w(17,20)).
f(w(20,13),w(20,20)).
f(w(1,8),w(1,20)).
f(w(11,1),w(11,20)).
f(w(1,6),w(1,20)).
f(w(19,11),w(19,20)).
f(w(20,1),w(20,20)).
f(w(13,4),w(13,20)).
f(w(19,15),w(19,20)).
f(w(3,18),w(3,20)).
f(w(13,18),w(13,20)).
f(w(17,4),w(17,20)).
f(w(1,18),w(1,20)).
f(w(16,15),w(16,20)).
f(w(18,4),w(18,20)).
f(w(9,12),w(9,20)).
f(w(13,18),w(13,20)).
:-end_in_pos.
:-begin_in_neg.
f(w(14,13),w(8,4)).
f(w(19,14),w(16,11)).
f(w(6,13),w(7,20)).
f(w(13,8),w(3,8)).
f(w(15,4),w(10,3)).
f(w(11,1),w(13,20)).
f(w(14,18),w(2,16)).
f(w(11,12),w(2,17)).
f(w(10,2),w(14,20)).
f(w(5,10),w(13,8)).
f(w(10,4),w(1,17)).
f(w(1,2),w(14,20)).
f(w(13,2),w(15,13)).
f(w(6,9),w(4,20)).
f(w(16,18),w(9,20)).
f(w(9,18),w(6,20)).
f(w(16,15),w(4,11)).
f(w(15,7),w(15,19)).
f(w(16,8),w(2,20)).
f(w(16,19),w(14,8)).
:-end_in_neg.
