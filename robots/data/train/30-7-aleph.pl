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
f(w(1,28),w(1,30)).
f(w(13,8),w(13,30)).
f(w(20,22),w(20,30)).
f(w(10,8),w(10,30)).
f(w(11,7),w(11,30)).
f(w(19,23),w(19,30)).
f(w(6,22),w(6,30)).
f(w(20,24),w(20,30)).
f(w(19,29),w(19,30)).
f(w(1,7),w(1,30)).
f(w(16,9),w(16,30)).
f(w(22,17),w(22,30)).
f(w(6,6),w(6,30)).
f(w(24,22),w(24,30)).
f(w(13,19),w(13,30)).
f(w(20,22),w(20,30)).
f(w(28,9),w(28,30)).
f(w(19,11),w(19,30)).
f(w(17,29),w(17,30)).
f(w(30,10),w(30,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(7,12),w(25,30)).
f(w(24,3),w(5,5)).
f(w(3,9),w(19,28)).
f(w(21,12),w(28,11)).
f(w(11,5),w(15,4)).
f(w(25,6),w(4,11)).
f(w(30,19),w(27,13)).
f(w(14,27),w(6,12)).
f(w(4,4),w(14,30)).
f(w(2,30),w(9,3)).
f(w(20,11),w(30,19)).
f(w(13,10),w(23,8)).
f(w(5,16),w(21,7)).
f(w(27,25),w(11,27)).
f(w(6,17),w(7,13)).
f(w(6,6),w(1,30)).
f(w(28,7),w(20,1)).
f(w(21,7),w(22,1)).
f(w(9,12),w(18,2)).
f(w(10,18),w(10,14)).
:-end_in_neg.
