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
f(w(8,20),w(8,30)).
f(w(14,25),w(14,30)).
f(w(25,15),w(25,30)).
f(w(10,18),w(10,30)).
f(w(6,7),w(6,30)).
f(w(28,14),w(28,30)).
f(w(13,3),w(13,30)).
f(w(1,9),w(1,30)).
f(w(25,24),w(25,30)).
f(w(6,7),w(6,30)).
f(w(9,28),w(9,30)).
f(w(22,24),w(22,30)).
f(w(22,25),w(22,30)).
f(w(11,5),w(11,30)).
f(w(9,9),w(9,30)).
f(w(1,1),w(1,30)).
f(w(7,21),w(7,30)).
f(w(27,20),w(27,30)).
f(w(4,12),w(4,30)).
f(w(11,21),w(11,30)).
f(w(14,15),w(14,30)).
f(w(2,5),w(2,30)).
f(w(7,29),w(7,30)).
f(w(3,8),w(3,30)).
f(w(9,3),w(9,30)).
f(w(26,6),w(26,30)).
f(w(30,27),w(30,30)).
f(w(3,1),w(3,30)).
f(w(14,8),w(14,30)).
f(w(20,4),w(20,30)).
f(w(5,19),w(5,30)).
f(w(25,12),w(25,30)).
f(w(9,18),w(9,30)).
f(w(21,18),w(21,30)).
f(w(1,12),w(1,30)).
f(w(15,9),w(15,30)).
f(w(19,15),w(19,30)).
f(w(2,3),w(2,30)).
f(w(15,13),w(15,30)).
f(w(27,7),w(27,30)).
f(w(11,18),w(11,30)).
f(w(7,2),w(7,30)).
f(w(26,29),w(26,30)).
f(w(13,22),w(13,30)).
f(w(10,10),w(10,30)).
f(w(17,12),w(17,30)).
f(w(9,14),w(9,30)).
f(w(23,7),w(23,30)).
f(w(26,19),w(26,30)).
f(w(6,10),w(6,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(10,10),w(1,28)).
f(w(29,9),w(20,30)).
f(w(21,5),w(15,5)).
f(w(19,15),w(1,12)).
f(w(9,27),w(25,3)).
f(w(27,19),w(8,20)).
f(w(21,25),w(19,18)).
f(w(4,20),w(15,4)).
f(w(18,7),w(24,25)).
f(w(17,21),w(14,16)).
f(w(11,5),w(7,30)).
f(w(20,4),w(10,26)).
f(w(15,22),w(30,21)).
f(w(19,11),w(7,14)).
f(w(3,17),w(12,11)).
f(w(29,3),w(13,28)).
f(w(19,6),w(13,17)).
f(w(22,28),w(23,4)).
f(w(3,8),w(7,16)).
f(w(17,13),w(11,15)).
f(w(7,2),w(2,26)).
f(w(9,25),w(29,3)).
f(w(18,23),w(7,17)).
f(w(6,15),w(5,30)).
f(w(17,29),w(13,17)).
f(w(25,15),w(21,6)).
f(w(25,1),w(13,9)).
f(w(21,14),w(25,21)).
f(w(20,14),w(30,26)).
f(w(4,5),w(17,30)).
f(w(18,20),w(4,27)).
f(w(15,4),w(23,30)).
f(w(24,18),w(3,8)).
f(w(4,20),w(8,21)).
f(w(24,13),w(28,21)).
f(w(2,21),w(9,5)).
f(w(29,12),w(16,30)).
f(w(22,26),w(17,30)).
f(w(10,29),w(30,5)).
f(w(10,4),w(27,30)).
f(w(11,28),w(10,12)).
f(w(15,16),w(15,17)).
f(w(5,21),w(27,30)).
f(w(6,20),w(5,30)).
f(w(29,9),w(27,4)).
f(w(25,29),w(17,16)).
f(w(5,20),w(18,25)).
f(w(20,10),w(4,30)).
f(w(4,24),w(11,27)).
f(w(19,30),w(23,30)).
:-end_in_neg.
