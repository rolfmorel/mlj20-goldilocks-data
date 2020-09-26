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
f(w(18,14),w(18,30)).
f(w(25,10),w(25,30)).
f(w(24,29),w(24,30)).
f(w(15,17),w(15,30)).
f(w(6,14),w(6,30)).
f(w(7,10),w(7,30)).
f(w(28,20),w(28,30)).
f(w(18,24),w(18,30)).
f(w(30,22),w(30,30)).
f(w(21,2),w(21,30)).
f(w(1,11),w(1,30)).
f(w(8,22),w(8,30)).
f(w(1,12),w(1,30)).
f(w(6,4),w(6,30)).
f(w(3,15),w(3,30)).
f(w(17,8),w(17,30)).
f(w(26,29),w(26,30)).
f(w(5,1),w(5,30)).
f(w(15,13),w(15,30)).
f(w(16,1),w(16,30)).
f(w(24,10),w(24,30)).
f(w(12,13),w(12,30)).
f(w(6,7),w(6,30)).
f(w(1,17),w(1,30)).
f(w(28,22),w(28,30)).
f(w(27,25),w(27,30)).
f(w(24,29),w(24,30)).
f(w(4,29),w(4,30)).
f(w(17,14),w(17,30)).
f(w(10,29),w(10,30)).
f(w(17,22),w(17,30)).
f(w(15,14),w(15,30)).
f(w(21,22),w(21,30)).
f(w(22,5),w(22,30)).
f(w(18,2),w(18,30)).
f(w(6,22),w(6,30)).
f(w(27,14),w(27,30)).
f(w(29,14),w(29,30)).
f(w(16,28),w(16,30)).
f(w(11,8),w(11,30)).
f(w(21,27),w(21,30)).
f(w(8,22),w(8,30)).
f(w(14,12),w(14,30)).
f(w(5,1),w(5,30)).
f(w(30,21),w(30,30)).
f(w(23,2),w(23,30)).
f(w(25,11),w(25,30)).
f(w(28,14),w(28,30)).
f(w(26,25),w(26,30)).
f(w(12,3),w(12,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(19,5),w(7,9)).
f(w(25,11),w(13,30)).
f(w(14,22),w(13,10)).
f(w(3,29),w(3,18)).
f(w(5,30),w(19,9)).
f(w(17,2),w(7,10)).
f(w(27,17),w(23,6)).
f(w(18,7),w(9,21)).
f(w(23,3),w(2,30)).
f(w(9,21),w(5,12)).
f(w(10,7),w(26,30)).
f(w(28,3),w(28,6)).
f(w(29,6),w(12,8)).
f(w(15,8),w(24,30)).
f(w(14,21),w(10,30)).
f(w(26,14),w(10,30)).
f(w(14,7),w(5,28)).
f(w(17,12),w(19,26)).
f(w(24,10),w(1,9)).
f(w(11,13),w(17,2)).
f(w(13,6),w(19,7)).
f(w(8,30),w(10,4)).
f(w(22,12),w(5,26)).
f(w(12,7),w(22,15)).
f(w(2,2),w(19,20)).
f(w(25,30),w(12,10)).
f(w(15,15),w(29,9)).
f(w(20,2),w(8,8)).
f(w(12,4),w(9,21)).
f(w(23,17),w(6,29)).
f(w(23,27),w(20,25)).
f(w(18,11),w(12,13)).
f(w(19,17),w(24,12)).
f(w(22,4),w(11,3)).
f(w(26,9),w(12,8)).
f(w(2,2),w(30,30)).
f(w(21,30),w(28,6)).
f(w(8,15),w(30,25)).
f(w(28,30),w(6,30)).
f(w(30,9),w(19,30)).
f(w(29,21),w(9,30)).
f(w(3,2),w(15,27)).
f(w(22,3),w(21,30)).
f(w(27,30),w(17,17)).
f(w(11,4),w(24,1)).
f(w(2,7),w(14,30)).
f(w(20,10),w(16,4)).
f(w(5,13),w(16,30)).
f(w(24,17),w(24,7)).
f(w(30,21),w(22,1)).
:-end_in_neg.
