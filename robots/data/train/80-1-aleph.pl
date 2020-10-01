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
f(w(59,19),w(59,80)).
f(w(6,54),w(6,80)).
f(w(26,19),w(26,80)).
f(w(61,60),w(61,80)).
f(w(50,35),w(50,80)).
f(w(48,41),w(48,80)).
f(w(3,76),w(3,80)).
f(w(46,79),w(46,80)).
f(w(3,13),w(3,80)).
f(w(21,35),w(21,80)).
f(w(6,47),w(6,80)).
f(w(7,53),w(7,80)).
f(w(2,38),w(2,80)).
f(w(39,27),w(39,80)).
f(w(9,3),w(9,80)).
f(w(8,72),w(8,80)).
f(w(13,38),w(13,80)).
f(w(72,52),w(72,80)).
f(w(68,73),w(68,80)).
f(w(73,27),w(73,80)).
:-end_in_pos.
:-begin_in_neg.
f(w(75,31),w(72,30)).
f(w(62,32),w(10,47)).
f(w(36,62),w(14,80)).
f(w(1,11),w(6,67)).
f(w(56,67),w(19,2)).
f(w(32,4),w(56,14)).
f(w(44,23),w(73,50)).
f(w(12,21),w(6,65)).
f(w(65,53),w(6,72)).
f(w(52,71),w(74,2)).
f(w(19,14),w(44,80)).
f(w(76,22),w(27,24)).
f(w(1,28),w(2,11)).
f(w(63,58),w(33,71)).
f(w(26,70),w(76,35)).
f(w(15,62),w(20,27)).
f(w(10,74),w(21,18)).
f(w(20,1),w(75,18)).
f(w(10,7),w(73,80)).
f(w(42,79),w(25,19)).
:-end_in_neg.
