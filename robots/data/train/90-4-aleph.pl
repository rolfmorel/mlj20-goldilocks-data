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
f(w(42,34),w(42,90)).
f(w(85,20),w(85,90)).
f(w(60,8),w(60,90)).
f(w(16,81),w(16,90)).
f(w(44,67),w(44,90)).
f(w(82,50),w(82,90)).
f(w(73,30),w(73,90)).
f(w(38,14),w(38,90)).
f(w(66,25),w(66,90)).
f(w(31,80),w(31,90)).
f(w(56,44),w(56,90)).
f(w(6,80),w(6,90)).
f(w(75,87),w(75,90)).
f(w(8,82),w(8,90)).
f(w(7,89),w(7,90)).
f(w(17,12),w(17,90)).
f(w(78,80),w(78,90)).
f(w(48,15),w(48,90)).
f(w(26,47),w(26,90)).
f(w(56,40),w(56,90)).
:-end_in_pos.
:-begin_in_neg.
f(w(33,30),w(21,90)).
f(w(7,84),w(53,69)).
f(w(29,41),w(77,90)).
f(w(6,9),w(27,41)).
f(w(17,35),w(86,20)).
f(w(46,22),w(33,90)).
f(w(74,34),w(89,18)).
f(w(18,59),w(38,90)).
f(w(81,34),w(43,68)).
f(w(59,64),w(6,82)).
f(w(83,6),w(4,14)).
f(w(50,52),w(81,17)).
f(w(25,5),w(44,79)).
f(w(47,74),w(14,13)).
f(w(5,50),w(25,5)).
f(w(84,74),w(60,5)).
f(w(56,61),w(62,4)).
f(w(44,47),w(48,50)).
f(w(58,59),w(2,42)).
f(w(15,6),w(53,76)).
:-end_in_neg.
