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
f(w(18,17),w(18,30)).
f(w(8,29),w(8,30)).
f(w(6,19),w(6,30)).
f(w(20,29),w(20,30)).
f(w(24,29),w(24,30)).
f(w(21,24),w(21,30)).
f(w(14,28),w(14,30)).
f(w(11,27),w(11,30)).
f(w(12,17),w(12,30)).
f(w(26,11),w(26,30)).
f(w(9,18),w(9,30)).
f(w(27,23),w(27,30)).
f(w(11,5),w(11,30)).
f(w(17,25),w(17,30)).
f(w(20,19),w(20,30)).
f(w(24,20),w(24,30)).
f(w(18,17),w(18,30)).
f(w(10,1),w(10,30)).
f(w(20,5),w(20,30)).
f(w(24,18),w(24,30)).
f(w(23,11),w(23,30)).
f(w(11,8),w(11,30)).
f(w(17,1),w(17,30)).
f(w(28,29),w(28,30)).
f(w(28,12),w(28,30)).
f(w(5,9),w(5,30)).
f(w(16,12),w(16,30)).
f(w(22,22),w(22,30)).
f(w(7,22),w(7,30)).
f(w(2,5),w(2,30)).
f(w(28,11),w(28,30)).
f(w(13,25),w(13,30)).
f(w(25,23),w(25,30)).
f(w(29,22),w(29,30)).
f(w(26,8),w(26,30)).
f(w(3,14),w(3,30)).
f(w(10,11),w(10,30)).
f(w(15,29),w(15,30)).
f(w(28,23),w(28,30)).
f(w(5,8),w(5,30)).
f(w(14,24),w(14,30)).
f(w(14,15),w(14,30)).
f(w(8,27),w(8,30)).
f(w(16,17),w(16,30)).
f(w(16,23),w(16,30)).
f(w(13,25),w(13,30)).
f(w(3,24),w(3,30)).
f(w(2,29),w(2,30)).
f(w(11,18),w(11,30)).
f(w(3,6),w(3,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(24,20),w(30,30)).
f(w(20,21),w(20,12)).
f(w(10,16),w(20,12)).
f(w(24,21),w(20,30)).
f(w(7,20),w(16,30)).
f(w(27,7),w(20,17)).
f(w(24,16),w(12,30)).
f(w(21,1),w(20,30)).
f(w(9,21),w(27,18)).
f(w(17,22),w(10,22)).
f(w(10,12),w(5,30)).
f(w(26,13),w(14,20)).
f(w(23,13),w(22,23)).
f(w(15,10),w(5,30)).
f(w(5,14),w(3,30)).
f(w(5,20),w(17,11)).
f(w(20,6),w(28,22)).
f(w(19,1),w(12,1)).
f(w(9,14),w(19,22)).
f(w(20,9),w(4,29)).
f(w(23,30),w(8,1)).
f(w(21,10),w(6,8)).
f(w(26,24),w(13,14)).
f(w(16,4),w(23,30)).
f(w(5,6),w(11,3)).
f(w(5,4),w(21,2)).
f(w(29,5),w(28,15)).
f(w(16,5),w(26,14)).
f(w(22,5),w(14,30)).
f(w(24,10),w(1,12)).
f(w(9,29),w(10,7)).
f(w(25,11),w(27,16)).
f(w(12,7),w(10,21)).
f(w(12,23),w(4,30)).
f(w(13,12),w(6,6)).
f(w(5,20),w(27,8)).
f(w(20,10),w(10,30)).
f(w(3,29),w(2,30)).
f(w(3,17),w(7,19)).
f(w(20,15),w(29,22)).
f(w(17,5),w(30,6)).
f(w(26,20),w(4,30)).
f(w(14,22),w(6,30)).
f(w(25,21),w(17,17)).
f(w(27,11),w(9,30)).
f(w(11,19),w(26,23)).
f(w(8,24),w(8,20)).
f(w(16,4),w(24,15)).
f(w(27,15),w(2,30)).
f(w(18,8),w(7,19)).
:-end_in_neg.
