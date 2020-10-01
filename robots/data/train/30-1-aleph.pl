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
f(w(24,6),w(24,30)).
f(w(11,29),w(11,30)).
f(w(9,14),w(9,30)).
f(w(29,18),w(29,30)).
f(w(16,21),w(16,30)).
f(w(1,16),w(1,30)).
f(w(14,10),w(14,30)).
f(w(14,24),w(14,30)).
f(w(29,16),w(29,30)).
f(w(7,22),w(7,30)).
f(w(16,10),w(16,30)).
f(w(14,12),w(14,30)).
f(w(25,29),w(25,30)).
f(w(15,19),w(15,30)).
f(w(13,12),w(13,30)).
f(w(23,26),w(23,30)).
f(w(12,12),w(12,30)).
f(w(22,25),w(22,30)).
f(w(9,17),w(9,30)).
f(w(19,25),w(19,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(2,18),w(13,30)).
f(w(5,20),w(12,30)).
f(w(9,30),w(7,30)).
f(w(20,11),w(12,11)).
f(w(11,26),w(16,30)).
f(w(3,1),w(12,30)).
f(w(5,29),w(19,30)).
f(w(27,17),w(15,1)).
f(w(11,24),w(12,16)).
f(w(14,27),w(4,11)).
f(w(14,1),w(26,24)).
f(w(1,27),w(14,4)).
f(w(16,27),w(29,26)).
f(w(25,27),w(9,30)).
f(w(29,24),w(28,9)).
f(w(5,29),w(11,30)).
f(w(7,10),w(20,18)).
f(w(23,17),w(19,30)).
f(w(3,16),w(22,15)).
f(w(22,19),w(29,10)).
:-end_in_neg.
