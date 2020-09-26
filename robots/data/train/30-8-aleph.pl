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
    size(Size),
    X1 #< Size,
    X2 #= X1 + 1.

move_left(w(X1,Y),w(X2,Y)):-
    X1 #> 1,
    X2 #= X1 - 1.

move_up(w(X,Y1),w(X,Y2)):-
    size(Size),
    Y1 #< Size,
    Y2 #= Y1 + 1.

move_down(w(X,Y1),w(X,Y2)):-
    Y1 #> 1,
    Y2 #= Y1 - 1.
:-end_bg.
:-begin_in_pos.
f(w(21,9),w(21,30)).
f(w(20,4),w(20,30)).
f(w(2,22),w(2,30)).
f(w(18,24),w(18,30)).
f(w(11,23),w(11,30)).
f(w(12,18),w(12,30)).
f(w(26,12),w(26,30)).
f(w(17,6),w(17,30)).
f(w(20,26),w(20,30)).
f(w(27,13),w(27,30)).
f(w(20,8),w(20,30)).
f(w(23,11),w(23,30)).
f(w(7,2),w(7,30)).
f(w(9,12),w(9,30)).
f(w(28,14),w(28,30)).
f(w(2,24),w(2,30)).
f(w(30,15),w(30,30)).
f(w(3,11),w(3,30)).
f(w(23,1),w(23,30)).
f(w(19,26),w(19,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(1,4),w(21,9)).
f(w(21,13),w(30,3)).
f(w(9,6),w(18,20)).
f(w(3,4),w(24,17)).
f(w(20,1),w(27,12)).
f(w(5,12),w(28,25)).
f(w(9,13),w(29,30)).
f(w(29,4),w(23,26)).
f(w(9,23),w(3,30)).
f(w(8,14),w(15,1)).
f(w(23,28),w(21,30)).
f(w(24,29),w(19,30)).
f(w(3,29),w(3,1)).
f(w(18,1),w(22,9)).
f(w(10,3),w(11,15)).
f(w(15,13),w(17,10)).
f(w(2,22),w(1,30)).
f(w(15,4),w(22,30)).
f(w(25,6),w(24,10)).
f(w(3,28),w(4,20)).
:-end_in_neg.
