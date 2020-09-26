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
f(w(12,16),w(12,30)).
f(w(13,14),w(13,30)).
f(w(4,18),w(4,30)).
f(w(7,18),w(7,30)).
f(w(22,19),w(22,30)).
f(w(10,29),w(10,30)).
f(w(10,10),w(10,30)).
f(w(4,25),w(4,30)).
f(w(14,16),w(14,30)).
f(w(15,17),w(15,30)).
f(w(9,17),w(9,30)).
f(w(3,12),w(3,30)).
f(w(20,28),w(20,30)).
f(w(14,4),w(14,30)).
f(w(25,13),w(25,30)).
f(w(28,2),w(28,30)).
f(w(5,11),w(5,30)).
f(w(15,7),w(15,30)).
f(w(5,24),w(5,30)).
f(w(15,19),w(15,30)).
f(w(13,22),w(13,30)).
f(w(2,12),w(2,30)).
f(w(26,13),w(26,30)).
f(w(30,3),w(30,30)).
f(w(25,19),w(25,30)).
f(w(24,1),w(24,30)).
f(w(9,29),w(9,30)).
f(w(27,24),w(27,30)).
f(w(15,24),w(15,30)).
f(w(21,1),w(21,30)).
f(w(14,14),w(14,30)).
f(w(25,15),w(25,30)).
f(w(13,17),w(13,30)).
f(w(26,16),w(26,30)).
f(w(21,9),w(21,30)).
f(w(20,8),w(20,30)).
f(w(8,20),w(8,30)).
f(w(22,16),w(22,30)).
f(w(18,23),w(18,30)).
f(w(1,4),w(1,30)).
f(w(19,3),w(19,30)).
f(w(22,22),w(22,30)).
f(w(1,26),w(1,30)).
f(w(24,8),w(24,30)).
f(w(3,18),w(3,30)).
f(w(8,5),w(8,30)).
f(w(27,11),w(27,30)).
f(w(24,3),w(24,30)).
f(w(26,11),w(26,30)).
f(w(3,24),w(3,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(15,18),w(13,10)).
f(w(14,14),w(18,29)).
f(w(1,1),w(20,26)).
f(w(4,8),w(21,30)).
f(w(11,30),w(8,30)).
f(w(9,1),w(25,30)).
f(w(16,25),w(20,11)).
f(w(23,29),w(17,8)).
f(w(21,1),w(1,9)).
f(w(25,15),w(12,22)).
f(w(26,10),w(17,30)).
f(w(26,25),w(23,26)).
f(w(13,2),w(4,12)).
f(w(14,21),w(2,16)).
f(w(28,1),w(6,30)).
f(w(19,17),w(2,1)).
f(w(15,28),w(18,22)).
f(w(9,12),w(10,14)).
f(w(25,6),w(30,25)).
f(w(9,5),w(11,13)).
f(w(14,5),w(12,28)).
f(w(6,5),w(17,3)).
f(w(14,15),w(8,19)).
f(w(24,7),w(30,29)).
f(w(19,24),w(22,11)).
f(w(24,8),w(3,19)).
f(w(9,26),w(17,15)).
f(w(21,25),w(23,21)).
f(w(5,18),w(14,8)).
f(w(17,23),w(30,30)).
f(w(2,1),w(28,30)).
f(w(20,24),w(10,30)).
f(w(29,16),w(13,19)).
f(w(28,11),w(17,9)).
f(w(23,29),w(30,20)).
f(w(3,20),w(20,9)).
f(w(17,8),w(10,9)).
f(w(10,12),w(23,20)).
f(w(6,8),w(15,4)).
f(w(11,18),w(7,30)).
f(w(9,10),w(3,6)).
f(w(14,27),w(2,29)).
f(w(21,10),w(10,25)).
f(w(3,1),w(5,30)).
f(w(30,20),w(10,30)).
f(w(1,12),w(15,24)).
f(w(29,2),w(6,30)).
f(w(12,19),w(9,28)).
f(w(22,22),w(12,30)).
f(w(25,18),w(23,28)).
:-end_in_neg.
