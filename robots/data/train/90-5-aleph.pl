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
f(w(41,31),w(41,90)).
f(w(17,30),w(17,90)).
f(w(23,67),w(23,90)).
f(w(71,4),w(71,90)).
f(w(3,83),w(3,90)).
f(w(11,6),w(11,90)).
f(w(59,47),w(59,90)).
f(w(75,31),w(75,90)).
f(w(9,34),w(9,90)).
f(w(12,76),w(12,90)).
f(w(46,52),w(46,90)).
f(w(12,83),w(12,90)).
f(w(17,39),w(17,90)).
f(w(42,54),w(42,90)).
f(w(18,88),w(18,90)).
f(w(86,26),w(86,90)).
f(w(35,16),w(35,90)).
f(w(43,24),w(43,90)).
f(w(73,30),w(73,90)).
f(w(26,10),w(26,90)).
:-end_in_pos.
:-begin_in_neg.
f(w(87,54),w(84,22)).
f(w(55,4),w(15,29)).
f(w(58,59),w(40,90)).
f(w(3,7),w(9,37)).
f(w(1,53),w(82,2)).
f(w(89,70),w(29,74)).
f(w(26,17),w(38,90)).
f(w(74,46),w(76,81)).
f(w(40,51),w(67,90)).
f(w(49,43),w(63,70)).
f(w(37,32),w(17,28)).
f(w(87,81),w(9,16)).
f(w(3,6),w(58,48)).
f(w(12,71),w(56,90)).
f(w(39,18),w(38,35)).
f(w(6,89),w(32,63)).
f(w(40,31),w(3,21)).
f(w(41,6),w(87,90)).
f(w(39,4),w(43,88)).
f(w(16,71),w(8,14)).
:-end_in_neg.
