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
f(w(23,4),w(23,30)).
f(w(23,7),w(23,30)).
f(w(5,12),w(5,30)).
f(w(21,13),w(21,30)).
f(w(28,22),w(28,30)).
f(w(16,10),w(16,30)).
f(w(15,9),w(15,30)).
f(w(2,21),w(2,30)).
f(w(18,18),w(18,30)).
f(w(17,21),w(17,30)).
f(w(13,15),w(13,30)).
f(w(4,20),w(4,30)).
f(w(8,4),w(8,30)).
f(w(27,15),w(27,30)).
f(w(16,21),w(16,30)).
f(w(1,12),w(1,30)).
f(w(5,8),w(5,30)).
f(w(22,28),w(22,30)).
f(w(5,16),w(5,30)).
f(w(5,11),w(5,30)).
f(w(24,25),w(24,30)).
f(w(25,29),w(25,30)).
f(w(1,14),w(1,30)).
f(w(21,8),w(21,30)).
f(w(6,19),w(6,30)).
f(w(11,5),w(11,30)).
f(w(23,4),w(23,30)).
f(w(9,21),w(9,30)).
f(w(9,7),w(9,30)).
f(w(20,2),w(20,30)).
f(w(14,12),w(14,30)).
f(w(2,1),w(2,30)).
f(w(13,15),w(13,30)).
f(w(15,2),w(15,30)).
f(w(22,3),w(22,30)).
f(w(12,5),w(12,30)).
f(w(4,29),w(4,30)).
f(w(4,23),w(4,30)).
f(w(27,29),w(27,30)).
f(w(16,7),w(16,30)).
f(w(9,18),w(9,30)).
f(w(8,3),w(8,30)).
f(w(28,26),w(28,30)).
f(w(3,21),w(3,30)).
f(w(7,26),w(7,30)).
f(w(23,2),w(23,30)).
f(w(18,8),w(18,30)).
f(w(17,7),w(17,30)).
f(w(18,14),w(18,30)).
f(w(24,25),w(24,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(11,1),w(9,30)).
f(w(23,7),w(26,30)).
f(w(25,19),w(14,14)).
f(w(24,11),w(8,2)).
f(w(13,6),w(17,30)).
f(w(26,14),w(5,13)).
f(w(12,30),w(19,26)).
f(w(10,6),w(30,28)).
f(w(14,30),w(5,20)).
f(w(10,26),w(4,30)).
f(w(1,25),w(8,30)).
f(w(26,24),w(10,30)).
f(w(13,4),w(12,22)).
f(w(15,12),w(26,23)).
f(w(28,16),w(23,30)).
f(w(2,6),w(22,30)).
f(w(5,29),w(23,30)).
f(w(17,16),w(15,30)).
f(w(17,25),w(14,29)).
f(w(5,5),w(2,29)).
f(w(25,13),w(28,21)).
f(w(8,29),w(9,30)).
f(w(27,9),w(8,13)).
f(w(25,21),w(21,12)).
f(w(15,21),w(18,22)).
f(w(12,29),w(18,6)).
f(w(2,25),w(15,22)).
f(w(29,5),w(16,28)).
f(w(21,26),w(8,30)).
f(w(4,9),w(5,8)).
f(w(5,19),w(3,22)).
f(w(17,3),w(13,28)).
f(w(17,20),w(6,30)).
f(w(25,21),w(28,30)).
f(w(29,13),w(8,6)).
f(w(5,4),w(8,11)).
f(w(15,11),w(25,8)).
f(w(21,28),w(11,19)).
f(w(4,4),w(27,30)).
f(w(25,6),w(23,11)).
f(w(22,27),w(1,8)).
f(w(26,19),w(20,7)).
f(w(30,22),w(19,29)).
f(w(19,17),w(21,16)).
f(w(11,17),w(12,6)).
f(w(23,3),w(22,21)).
f(w(16,12),w(3,20)).
f(w(3,1),w(10,22)).
f(w(25,30),w(30,30)).
f(w(14,13),w(8,16)).
:-end_in_neg.
