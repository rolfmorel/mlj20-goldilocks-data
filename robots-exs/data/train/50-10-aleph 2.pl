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
f(w(5,17),w(5,30)).
f(w(2,15),w(2,30)).
f(w(7,4),w(7,30)).
f(w(11,26),w(11,30)).
f(w(21,2),w(21,30)).
f(w(24,21),w(24,30)).
f(w(23,4),w(23,30)).
f(w(7,27),w(7,30)).
f(w(29,27),w(29,30)).
f(w(9,1),w(9,30)).
f(w(8,19),w(8,30)).
f(w(10,24),w(10,30)).
f(w(5,11),w(5,30)).
f(w(23,25),w(23,30)).
f(w(24,28),w(24,30)).
f(w(2,13),w(2,30)).
f(w(9,1),w(9,30)).
f(w(30,9),w(30,30)).
f(w(29,12),w(29,30)).
f(w(17,3),w(17,30)).
f(w(28,1),w(28,30)).
f(w(7,25),w(7,30)).
f(w(1,26),w(1,30)).
f(w(5,8),w(5,30)).
f(w(26,25),w(26,30)).
f(w(20,22),w(20,30)).
f(w(8,19),w(8,30)).
f(w(11,24),w(11,30)).
f(w(29,12),w(29,30)).
f(w(12,19),w(12,30)).
f(w(15,26),w(15,30)).
f(w(3,9),w(3,30)).
f(w(7,12),w(7,30)).
f(w(20,3),w(20,30)).
f(w(3,21),w(3,30)).
f(w(17,24),w(17,30)).
f(w(26,20),w(26,30)).
f(w(12,23),w(12,30)).
f(w(15,22),w(15,30)).
f(w(28,18),w(28,30)).
f(w(11,24),w(11,30)).
f(w(23,23),w(23,30)).
f(w(8,13),w(8,30)).
f(w(8,25),w(8,30)).
f(w(11,15),w(11,30)).
f(w(10,17),w(10,30)).
f(w(14,25),w(14,30)).
f(w(24,3),w(24,30)).
f(w(11,17),w(11,30)).
f(w(16,8),w(16,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(2,18),w(13,30)).
f(w(13,15),w(5,19)).
f(w(27,7),w(2,30)).
f(w(9,13),w(17,12)).
f(w(19,30),w(19,16)).
f(w(3,25),w(16,28)).
f(w(12,21),w(1,14)).
f(w(27,26),w(1,1)).
f(w(26,9),w(14,28)).
f(w(15,7),w(2,7)).
f(w(24,4),w(3,30)).
f(w(17,10),w(20,30)).
f(w(30,4),w(14,30)).
f(w(6,30),w(8,30)).
f(w(26,17),w(16,4)).
f(w(2,4),w(3,30)).
f(w(22,15),w(3,15)).
f(w(12,25),w(7,11)).
f(w(18,4),w(24,30)).
f(w(12,5),w(8,30)).
f(w(11,26),w(24,2)).
f(w(18,17),w(1,30)).
f(w(15,2),w(10,1)).
f(w(2,6),w(10,17)).
f(w(17,1),w(26,6)).
f(w(6,1),w(21,23)).
f(w(28,20),w(26,20)).
f(w(9,2),w(7,6)).
f(w(26,22),w(25,30)).
f(w(28,16),w(10,5)).
f(w(1,10),w(8,30)).
f(w(2,24),w(29,6)).
f(w(12,19),w(21,30)).
f(w(13,29),w(17,30)).
f(w(26,26),w(30,30)).
f(w(19,15),w(4,30)).
f(w(19,16),w(19,22)).
f(w(7,6),w(27,15)).
f(w(29,11),w(4,9)).
f(w(29,28),w(2,8)).
f(w(6,19),w(28,23)).
f(w(14,1),w(29,9)).
f(w(14,3),w(2,4)).
f(w(6,17),w(27,18)).
f(w(28,12),w(20,15)).
f(w(19,25),w(28,30)).
f(w(9,5),w(11,30)).
f(w(16,13),w(29,19)).
f(w(4,4),w(17,19)).
f(w(10,16),w(18,12)).
:-end_in_neg.
