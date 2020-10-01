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
size(80).
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
f(w(73,2),w(73,80)).
f(w(72,51),w(72,80)).
f(w(25,68),w(25,80)).
f(w(28,6),w(28,80)).
f(w(10,47),w(10,80)).
f(w(3,32),w(3,80)).
f(w(79,67),w(79,80)).
f(w(53,4),w(53,80)).
f(w(47,22),w(47,80)).
f(w(29,38),w(29,80)).
f(w(76,44),w(76,80)).
f(w(6,75),w(6,80)).
f(w(54,68),w(54,80)).
f(w(28,78),w(28,80)).
f(w(46,8),w(46,80)).
f(w(33,4),w(33,80)).
f(w(21,15),w(21,80)).
f(w(66,43),w(66,80)).
f(w(37,35),w(37,80)).
f(w(49,66),w(49,80)).
:-end_in_pos.
:-begin_in_neg.
f(w(48,26),w(29,30)).
f(w(72,40),w(23,16)).
f(w(23,42),w(30,47)).
f(w(16,1),w(23,6)).
f(w(11,36),w(56,80)).
f(w(34,54),w(14,37)).
f(w(44,61),w(62,80)).
f(w(44,12),w(42,68)).
f(w(79,6),w(53,80)).
f(w(73,65),w(66,61)).
f(w(68,18),w(69,80)).
f(w(48,9),w(1,8)).
f(w(77,41),w(35,71)).
f(w(9,71),w(29,37)).
f(w(20,61),w(53,80)).
f(w(44,3),w(53,51)).
f(w(71,54),w(33,80)).
f(w(73,74),w(33,44)).
f(w(15,23),w(70,61)).
f(w(11,13),w(17,37)).
:-end_in_neg.
