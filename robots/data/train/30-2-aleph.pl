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
size(30).
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
f(w(19,12),w(19,30)).
f(w(2,16),w(2,30)).
f(w(5,20),w(5,30)).
f(w(14,28),w(14,30)).
f(w(4,14),w(4,30)).
f(w(19,7),w(19,30)).
f(w(2,3),w(2,30)).
f(w(1,29),w(1,30)).
f(w(23,28),w(23,30)).
f(w(22,26),w(22,30)).
f(w(15,12),w(15,30)).
f(w(9,8),w(9,30)).
f(w(2,29),w(2,30)).
f(w(15,18),w(15,30)).
f(w(17,13),w(17,30)).
f(w(4,3),w(4,30)).
f(w(12,2),w(12,30)).
f(w(13,20),w(13,30)).
f(w(16,3),w(16,30)).
f(w(16,29),w(16,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(3,27),w(19,20)).
f(w(19,4),w(20,30)).
f(w(12,15),w(30,26)).
f(w(1,21),w(18,27)).
f(w(3,24),w(6,7)).
f(w(4,6),w(2,19)).
f(w(17,2),w(2,12)).
f(w(4,28),w(21,8)).
f(w(13,30),w(14,14)).
f(w(7,16),w(28,30)).
f(w(28,27),w(9,2)).
f(w(15,25),w(26,18)).
f(w(23,29),w(21,1)).
f(w(6,20),w(13,5)).
f(w(2,20),w(28,1)).
f(w(13,27),w(22,30)).
f(w(11,3),w(23,17)).
f(w(19,7),w(21,30)).
f(w(21,17),w(16,30)).
f(w(8,30),w(3,12)).
:-end_in_neg.
