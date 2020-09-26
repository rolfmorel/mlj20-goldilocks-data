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
f(w(21,23),w(21,30)).
f(w(6,5),w(6,30)).
f(w(21,17),w(21,30)).
f(w(16,23),w(16,30)).
f(w(28,7),w(28,30)).
f(w(16,3),w(16,30)).
f(w(22,11),w(22,30)).
f(w(30,12),w(30,30)).
f(w(3,9),w(3,30)).
f(w(21,26),w(21,30)).
f(w(8,16),w(8,30)).
f(w(14,23),w(14,30)).
f(w(30,15),w(30,30)).
f(w(23,21),w(23,30)).
f(w(5,16),w(5,30)).
f(w(6,11),w(6,30)).
f(w(3,22),w(3,30)).
f(w(25,12),w(25,30)).
f(w(26,25),w(26,30)).
f(w(17,27),w(17,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(9,17),w(30,27)).
f(w(24,24),w(17,30)).
f(w(19,8),w(20,1)).
f(w(14,26),w(3,7)).
f(w(14,28),w(16,30)).
f(w(3,15),w(12,5)).
f(w(19,5),w(30,28)).
f(w(6,28),w(24,22)).
f(w(11,22),w(3,23)).
f(w(5,18),w(6,25)).
f(w(19,22),w(11,30)).
f(w(1,23),w(1,24)).
f(w(21,20),w(18,30)).
f(w(27,9),w(29,1)).
f(w(7,25),w(9,22)).
f(w(14,16),w(16,30)).
f(w(24,8),w(3,29)).
f(w(16,27),w(24,25)).
f(w(14,28),w(6,30)).
f(w(28,27),w(12,23)).
:-end_in_neg.