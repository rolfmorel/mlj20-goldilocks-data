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
f(w(7,19),w(7,30)).
f(w(3,8),w(3,30)).
f(w(17,7),w(17,30)).
f(w(10,9),w(10,30)).
f(w(26,24),w(26,30)).
f(w(12,22),w(12,30)).
f(w(14,8),w(14,30)).
f(w(27,10),w(27,30)).
f(w(17,29),w(17,30)).
f(w(6,4),w(6,30)).
f(w(22,16),w(22,30)).
f(w(4,8),w(4,30)).
f(w(21,7),w(21,30)).
f(w(6,27),w(6,30)).
f(w(10,26),w(10,30)).
f(w(26,9),w(26,30)).
f(w(7,10),w(7,30)).
f(w(22,16),w(22,30)).
f(w(3,13),w(3,30)).
f(w(24,28),w(24,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(6,30),w(7,2)).
f(w(10,16),w(15,5)).
f(w(14,13),w(4,27)).
f(w(28,29),w(17,12)).
f(w(3,9),w(1,30)).
f(w(25,26),w(5,4)).
f(w(25,3),w(26,4)).
f(w(30,10),w(11,15)).
f(w(16,2),w(30,14)).
f(w(21,9),w(24,6)).
f(w(25,17),w(22,30)).
f(w(21,24),w(10,27)).
f(w(30,22),w(28,20)).
f(w(20,2),w(18,27)).
f(w(6,4),w(10,23)).
f(w(12,23),w(17,2)).
f(w(20,22),w(15,11)).
f(w(28,22),w(4,15)).
f(w(11,19),w(21,26)).
f(w(27,6),w(29,18)).
:-end_in_neg.
