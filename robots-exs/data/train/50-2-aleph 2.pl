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
f(w(21,1),w(21,30)).
f(w(4,28),w(4,30)).
f(w(10,26),w(10,30)).
f(w(30,3),w(30,30)).
f(w(22,4),w(22,30)).
f(w(8,8),w(8,30)).
f(w(16,23),w(16,30)).
f(w(24,24),w(24,30)).
f(w(18,24),w(18,30)).
f(w(3,23),w(3,30)).
f(w(14,9),w(14,30)).
f(w(29,2),w(29,30)).
f(w(11,14),w(11,30)).
f(w(12,22),w(12,30)).
f(w(27,1),w(27,30)).
f(w(8,7),w(8,30)).
f(w(26,10),w(26,30)).
f(w(7,24),w(7,30)).
f(w(1,16),w(1,30)).
f(w(13,16),w(13,30)).
f(w(22,7),w(22,30)).
f(w(30,28),w(30,30)).
f(w(27,4),w(27,30)).
f(w(4,23),w(4,30)).
f(w(18,3),w(18,30)).
f(w(1,1),w(1,30)).
f(w(30,29),w(30,30)).
f(w(15,1),w(15,30)).
f(w(23,16),w(23,30)).
f(w(6,29),w(6,30)).
f(w(12,24),w(12,30)).
f(w(10,28),w(10,30)).
f(w(19,25),w(19,30)).
f(w(30,26),w(30,30)).
f(w(8,3),w(8,30)).
f(w(28,10),w(28,30)).
f(w(25,6),w(25,30)).
f(w(6,24),w(6,30)).
f(w(6,12),w(6,30)).
f(w(18,23),w(18,30)).
f(w(8,8),w(8,30)).
f(w(19,9),w(19,30)).
f(w(30,14),w(30,30)).
f(w(8,13),w(8,30)).
f(w(29,27),w(29,30)).
f(w(29,10),w(29,30)).
f(w(20,26),w(20,30)).
f(w(16,18),w(16,30)).
f(w(30,22),w(30,30)).
f(w(11,16),w(11,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(26,17),w(2,1)).
f(w(19,22),w(11,24)).
f(w(22,22),w(19,4)).
f(w(18,7),w(23,5)).
f(w(19,9),w(4,7)).
f(w(6,13),w(22,5)).
f(w(17,2),w(25,3)).
f(w(1,22),w(7,30)).
f(w(1,1),w(29,3)).
f(w(30,24),w(22,30)).
f(w(24,26),w(28,16)).
f(w(11,12),w(17,30)).
f(w(11,21),w(20,30)).
f(w(22,26),w(5,25)).
f(w(17,15),w(12,30)).
f(w(15,10),w(21,5)).
f(w(29,24),w(12,30)).
f(w(25,18),w(30,30)).
f(w(26,10),w(14,8)).
f(w(27,18),w(4,29)).
f(w(21,24),w(21,22)).
f(w(25,23),w(2,27)).
f(w(23,15),w(16,30)).
f(w(11,8),w(15,30)).
f(w(18,26),w(8,16)).
f(w(23,8),w(28,19)).
f(w(24,25),w(25,20)).
f(w(13,26),w(23,30)).
f(w(30,15),w(22,18)).
f(w(19,2),w(10,30)).
f(w(5,30),w(30,1)).
f(w(20,18),w(1,4)).
f(w(15,25),w(16,30)).
f(w(3,3),w(21,20)).
f(w(14,29),w(30,29)).
f(w(14,17),w(24,9)).
f(w(14,6),w(27,30)).
f(w(19,26),w(23,16)).
f(w(3,7),w(27,11)).
f(w(17,23),w(7,9)).
f(w(10,12),w(24,30)).
f(w(27,24),w(13,30)).
f(w(4,4),w(28,1)).
f(w(14,13),w(6,15)).
f(w(18,3),w(3,3)).
f(w(24,13),w(4,7)).
f(w(19,17),w(21,29)).
f(w(10,1),w(25,30)).
f(w(9,16),w(7,9)).
f(w(10,17),w(6,30)).
:-end_in_neg.
