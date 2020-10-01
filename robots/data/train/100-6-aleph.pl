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
f(w(40,82),w(40,100)).
f(w(8,41),w(8,100)).
f(w(86,97),w(86,100)).
f(w(53,34),w(53,100)).
f(w(66,99),w(66,100)).
f(w(78,8),w(78,100)).
f(w(30,93),w(30,100)).
f(w(7,71),w(7,100)).
f(w(42,15),w(42,100)).
f(w(82,52),w(82,100)).
f(w(22,95),w(22,100)).
f(w(41,88),w(41,100)).
f(w(44,71),w(44,100)).
f(w(36,21),w(36,100)).
f(w(14,64),w(14,100)).
f(w(79,78),w(79,100)).
f(w(36,73),w(36,100)).
f(w(63,59),w(63,100)).
f(w(10,7),w(10,100)).
f(w(62,11),w(62,100)).
:-end_in_pos.
:-begin_in_neg.
f(w(63,16),w(44,93)).
f(w(86,40),w(68,11)).
f(w(59,33),w(57,73)).
f(w(57,59),w(92,49)).
f(w(37,92),w(88,80)).
f(w(45,66),w(25,57)).
f(w(4,90),w(7,100)).
f(w(22,99),w(8,7)).
f(w(76,85),w(13,100)).
f(w(70,83),w(36,33)).
f(w(66,11),w(17,59)).
f(w(74,60),w(11,100)).
f(w(3,67),w(88,100)).
f(w(9,47),w(27,72)).
f(w(56,26),w(100,100)).
f(w(12,20),w(87,100)).
f(w(13,74),w(67,100)).
f(w(32,25),w(39,100)).
f(w(51,16),w(48,91)).
f(w(44,22),w(98,69)).
:-end_in_neg.
