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
:- modeb(*,f(+state,-state)).

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
:- determination(f/2,f/2).


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
nonvar(X1),

    size(Size),
    X1 < Size,
    X2  is  X1 + 1.

move_left(w(X1,Y),w(X2,Y)):-
	nonvar(X1),
    X1 > 1,
    X2  is  X1 - 1.

move_up(w(X,Y1),w(X,Y2)):-
	nonvar(Y1),
    size(Size),
    Y1 < Size,
    Y2  is  Y1 + 1.

move_down(w(X,Y1),w(X,Y2)):-
	nonvar(Y1),
    Y1 > 1,
    Y2  is  Y1 - 1.
:-end_bg.
:-begin_in_pos.
f(w(22,55),w(22,100)).
f(w(66,4),w(66,100)).
f(w(9,76),w(9,100)).
f(w(40,44),w(40,100)).
f(w(59,3),w(59,100)).
f(w(88,62),w(88,100)).
f(w(14,98),w(14,100)).
f(w(7,35),w(7,100)).
f(w(95,96),w(95,100)).
f(w(22,54),w(22,100)).
f(w(3,34),w(3,100)).
f(w(57,46),w(57,100)).
f(w(10,99),w(10,100)).
f(w(2,27),w(2,100)).
f(w(77,91),w(77,100)).
f(w(67,87),w(67,100)).
f(w(61,77),w(61,100)).
f(w(97,62),w(97,100)).
f(w(99,51),w(99,100)).
f(w(24,14),w(24,100)).
:-end_in_pos.
:-begin_in_neg.
f(w(66,65),w(88,100)).
f(w(17,4),w(77,100)).
f(w(5,94),w(36,100)).
f(w(68,65),w(64,56)).
f(w(27,34),w(36,31)).
f(w(6,60),w(78,65)).
f(w(37,70),w(63,100)).
f(w(94,61),w(75,43)).
f(w(87,32),w(20,79)).
f(w(70,14),w(90,37)).
f(w(68,82),w(83,65)).
f(w(68,51),w(95,82)).
f(w(77,79),w(36,45)).
f(w(11,71),w(78,55)).
f(w(61,72),w(68,20)).
f(w(47,33),w(51,77)).
f(w(24,75),w(29,41)).
f(w(82,27),w(27,100)).
f(w(70,12),w(33,100)).
f(w(34,57),w(84,72)).
:-end_in_neg.
