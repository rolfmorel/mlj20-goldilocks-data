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
size(90).
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
f(w(46,23),w(46,90)).
f(w(12,1),w(12,90)).
f(w(89,76),w(89,90)).
f(w(20,39),w(20,90)).
f(w(68,79),w(68,90)).
f(w(63,62),w(63,90)).
f(w(23,21),w(23,90)).
f(w(82,18),w(82,90)).
f(w(82,50),w(82,90)).
f(w(2,66),w(2,90)).
f(w(77,71),w(77,90)).
f(w(25,89),w(25,90)).
f(w(63,38),w(63,90)).
f(w(40,38),w(40,90)).
f(w(9,60),w(9,90)).
f(w(59,9),w(59,90)).
f(w(9,54),w(9,90)).
f(w(67,68),w(67,90)).
f(w(55,74),w(55,90)).
f(w(64,57),w(64,90)).
:-end_in_pos.
:-begin_in_neg.
f(w(74,59),w(49,57)).
f(w(23,78),w(27,9)).
f(w(15,66),w(72,33)).
f(w(22,43),w(11,80)).
f(w(77,56),w(16,17)).
f(w(77,64),w(49,90)).
f(w(14,17),w(18,21)).
f(w(21,87),w(83,47)).
f(w(32,17),w(1,76)).
f(w(84,32),w(5,11)).
f(w(52,28),w(33,90)).
f(w(69,78),w(2,63)).
f(w(56,80),w(10,65)).
f(w(84,28),w(35,22)).
f(w(79,8),w(54,90)).
f(w(16,62),w(10,33)).
f(w(4,20),w(56,84)).
f(w(41,89),w(27,90)).
f(w(49,90),w(5,61)).
f(w(35,71),w(86,57)).
:-end_in_neg.
