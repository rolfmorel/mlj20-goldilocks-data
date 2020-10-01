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
f(w(10,1),w(10,30)).
f(w(22,9),w(22,30)).
f(w(21,23),w(21,30)).
f(w(25,14),w(25,30)).
f(w(23,25),w(23,30)).
f(w(17,21),w(17,30)).
f(w(7,27),w(7,30)).
f(w(27,28),w(27,30)).
f(w(12,17),w(12,30)).
f(w(28,24),w(28,30)).
f(w(12,9),w(12,30)).
f(w(29,27),w(29,30)).
f(w(4,13),w(4,30)).
f(w(3,20),w(3,30)).
f(w(1,29),w(1,30)).
f(w(1,3),w(1,30)).
f(w(16,16),w(16,30)).
f(w(14,5),w(14,30)).
f(w(27,15),w(27,30)).
f(w(11,22),w(11,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(24,9),w(19,5)).
f(w(26,8),w(15,14)).
f(w(17,26),w(10,2)).
f(w(7,7),w(15,6)).
f(w(24,4),w(20,30)).
f(w(10,20),w(24,19)).
f(w(9,7),w(4,27)).
f(w(27,24),w(21,30)).
f(w(15,27),w(8,27)).
f(w(11,10),w(20,11)).
f(w(10,7),w(29,23)).
f(w(28,15),w(30,1)).
f(w(17,16),w(4,12)).
f(w(16,15),w(28,20)).
f(w(16,29),w(12,12)).
f(w(4,24),w(16,29)).
f(w(13,16),w(2,30)).
f(w(17,11),w(17,16)).
f(w(1,15),w(29,30)).
f(w(8,30),w(23,30)).
:-end_in_neg.
