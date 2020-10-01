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
f(w(22,8),w(22,30)).
f(w(1,3),w(1,30)).
f(w(28,20),w(28,30)).
f(w(10,4),w(10,30)).
f(w(10,12),w(10,30)).
f(w(17,6),w(17,30)).
f(w(8,21),w(8,30)).
f(w(14,26),w(14,30)).
f(w(22,29),w(22,30)).
f(w(28,6),w(28,30)).
f(w(2,8),w(2,30)).
f(w(2,5),w(2,30)).
f(w(28,19),w(28,30)).
f(w(2,22),w(2,30)).
f(w(11,29),w(11,30)).
f(w(1,17),w(1,30)).
f(w(19,1),w(19,30)).
f(w(17,5),w(17,30)).
f(w(2,9),w(2,30)).
f(w(6,3),w(6,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(3,16),w(18,6)).
f(w(3,27),w(21,4)).
f(w(22,16),w(24,30)).
f(w(19,8),w(14,30)).
f(w(14,1),w(19,30)).
f(w(27,9),w(17,30)).
f(w(19,30),w(19,20)).
f(w(8,2),w(12,15)).
f(w(25,9),w(7,30)).
f(w(3,14),w(19,24)).
f(w(5,12),w(28,30)).
f(w(6,8),w(18,30)).
f(w(16,1),w(28,25)).
f(w(23,19),w(3,24)).
f(w(21,13),w(6,30)).
f(w(3,12),w(7,28)).
f(w(25,3),w(1,26)).
f(w(18,25),w(24,29)).
f(w(14,29),w(8,10)).
f(w(13,1),w(23,7)).
:-end_in_neg.
