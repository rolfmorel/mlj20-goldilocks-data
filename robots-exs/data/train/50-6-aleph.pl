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
f(w(9,12),w(9,30)).
f(w(24,3),w(24,30)).
f(w(25,5),w(25,30)).
f(w(22,16),w(22,30)).
f(w(23,15),w(23,30)).
f(w(4,18),w(4,30)).
f(w(28,29),w(28,30)).
f(w(17,12),w(17,30)).
f(w(23,7),w(23,30)).
f(w(9,2),w(9,30)).
f(w(26,29),w(26,30)).
f(w(3,16),w(3,30)).
f(w(25,9),w(25,30)).
f(w(18,13),w(18,30)).
f(w(24,22),w(24,30)).
f(w(30,6),w(30,30)).
f(w(21,11),w(21,30)).
f(w(14,8),w(14,30)).
f(w(27,18),w(27,30)).
f(w(13,24),w(13,30)).
f(w(30,15),w(30,30)).
f(w(19,20),w(19,30)).
f(w(3,20),w(3,30)).
f(w(15,11),w(15,30)).
f(w(9,23),w(9,30)).
f(w(5,20),w(5,30)).
f(w(24,8),w(24,30)).
f(w(25,27),w(25,30)).
f(w(23,10),w(23,30)).
f(w(29,26),w(29,30)).
f(w(27,4),w(27,30)).
f(w(20,18),w(20,30)).
f(w(30,12),w(30,30)).
f(w(14,11),w(14,30)).
f(w(16,27),w(16,30)).
f(w(20,2),w(20,30)).
f(w(13,19),w(13,30)).
f(w(27,29),w(27,30)).
f(w(23,20),w(23,30)).
f(w(12,29),w(12,30)).
f(w(12,12),w(12,30)).
f(w(1,25),w(1,30)).
f(w(18,18),w(18,30)).
f(w(19,9),w(19,30)).
f(w(2,14),w(2,30)).
f(w(15,29),w(15,30)).
f(w(10,24),w(10,30)).
f(w(10,2),w(10,30)).
f(w(12,1),w(12,30)).
f(w(9,11),w(9,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(18,1),w(21,30)).
f(w(9,12),w(27,30)).
f(w(19,19),w(22,8)).
f(w(4,8),w(20,13)).
f(w(3,29),w(19,30)).
f(w(5,29),w(4,3)).
f(w(12,26),w(22,30)).
f(w(29,8),w(29,16)).
f(w(4,10),w(17,28)).
f(w(26,9),w(19,30)).
f(w(7,18),w(12,7)).
f(w(1,16),w(5,9)).
f(w(23,26),w(21,28)).
f(w(20,11),w(24,16)).
f(w(15,7),w(11,30)).
f(w(28,27),w(30,16)).
f(w(12,16),w(3,29)).
f(w(9,18),w(14,24)).
f(w(22,28),w(25,14)).
f(w(23,3),w(25,21)).
f(w(11,24),w(1,30)).
f(w(19,30),w(12,11)).
f(w(18,21),w(24,14)).
f(w(5,6),w(21,30)).
f(w(10,2),w(11,27)).
f(w(4,27),w(29,5)).
f(w(29,12),w(21,2)).
f(w(5,27),w(16,12)).
f(w(18,3),w(14,4)).
f(w(3,5),w(11,20)).
f(w(13,18),w(23,22)).
f(w(17,6),w(10,20)).
f(w(21,3),w(1,29)).
f(w(10,24),w(20,21)).
f(w(22,17),w(18,16)).
f(w(10,10),w(27,7)).
f(w(13,8),w(2,30)).
f(w(5,16),w(14,30)).
f(w(23,22),w(27,23)).
f(w(9,15),w(4,1)).
f(w(20,9),w(16,30)).
f(w(25,16),w(3,30)).
f(w(5,14),w(23,30)).
f(w(20,4),w(22,12)).
f(w(10,12),w(8,5)).
f(w(14,11),w(26,7)).
f(w(23,10),w(18,30)).
f(w(13,22),w(7,30)).
f(w(24,4),w(18,20)).
f(w(7,28),w(28,30)).
:-end_in_neg.
