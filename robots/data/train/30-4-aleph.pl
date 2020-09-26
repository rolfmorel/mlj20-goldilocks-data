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
f(w(2,13),w(2,30)).
f(w(29,27),w(29,30)).
f(w(10,14),w(10,30)).
f(w(29,13),w(29,30)).
f(w(22,8),w(22,30)).
f(w(3,10),w(3,30)).
f(w(25,4),w(25,30)).
f(w(28,20),w(28,30)).
f(w(4,19),w(4,30)).
f(w(13,13),w(13,30)).
f(w(14,4),w(14,30)).
f(w(10,2),w(10,30)).
f(w(19,1),w(19,30)).
f(w(14,28),w(14,30)).
f(w(11,7),w(11,30)).
f(w(29,15),w(29,30)).
f(w(26,25),w(26,30)).
f(w(16,29),w(16,30)).
f(w(8,21),w(8,30)).
f(w(24,7),w(24,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(19,4),w(13,19)).
f(w(6,29),w(5,10)).
f(w(19,13),w(23,1)).
f(w(28,15),w(9,18)).
f(w(26,28),w(17,23)).
f(w(14,24),w(16,23)).
f(w(16,16),w(5,7)).
f(w(7,10),w(25,26)).
f(w(17,20),w(19,30)).
f(w(20,21),w(22,12)).
f(w(2,24),w(19,30)).
f(w(26,26),w(23,5)).
f(w(14,26),w(19,4)).
f(w(15,15),w(24,2)).
f(w(3,12),w(10,30)).
f(w(23,14),w(3,30)).
f(w(20,27),w(6,12)).
f(w(9,11),w(4,11)).
f(w(17,8),w(29,20)).
f(w(12,30),w(1,30)).
:-end_in_neg.
