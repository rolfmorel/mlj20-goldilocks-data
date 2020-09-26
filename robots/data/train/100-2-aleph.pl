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
size(100).
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
f(w(42,99),w(42,100)).
f(w(65,32),w(65,100)).
f(w(43,75),w(43,100)).
f(w(5,38),w(5,100)).
f(w(5,88),w(5,100)).
f(w(94,9),w(94,100)).
f(w(35,64),w(35,100)).
f(w(35,90),w(35,100)).
f(w(80,75),w(80,100)).
f(w(88,16),w(88,100)).
f(w(86,30),w(86,100)).
f(w(46,66),w(46,100)).
f(w(18,79),w(18,100)).
f(w(37,20),w(37,100)).
f(w(41,51),w(41,100)).
f(w(47,59),w(47,100)).
f(w(32,60),w(32,100)).
f(w(17,75),w(17,100)).
f(w(75,38),w(75,100)).
f(w(87,68),w(87,100)).
:-end_in_pos.
:-begin_in_neg.
f(w(32,34),w(3,17)).
f(w(16,46),w(86,67)).
f(w(21,24),w(51,39)).
f(w(86,42),w(41,78)).
f(w(99,49),w(42,35)).
f(w(82,97),w(74,52)).
f(w(63,10),w(10,100)).
f(w(13,48),w(33,62)).
f(w(46,44),w(69,100)).
f(w(8,68),w(47,70)).
f(w(36,2),w(33,100)).
f(w(11,56),w(45,31)).
f(w(17,50),w(65,10)).
f(w(94,60),w(2,86)).
f(w(76,47),w(89,100)).
f(w(10,62),w(8,100)).
f(w(61,14),w(19,100)).
f(w(72,87),w(19,87)).
f(w(46,72),w(25,34)).
f(w(97,10),w(26,83)).
:-end_in_neg.
