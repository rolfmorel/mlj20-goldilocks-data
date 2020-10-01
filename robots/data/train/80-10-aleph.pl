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
f(w(23,48),w(23,80)).
f(w(3,17),w(3,80)).
f(w(41,41),w(41,80)).
f(w(26,21),w(26,80)).
f(w(23,30),w(23,80)).
f(w(7,44),w(7,80)).
f(w(73,49),w(73,80)).
f(w(18,29),w(18,80)).
f(w(22,59),w(22,80)).
f(w(38,46),w(38,80)).
f(w(19,23),w(19,80)).
f(w(55,79),w(55,80)).
f(w(72,4),w(72,80)).
f(w(34,20),w(34,80)).
f(w(4,4),w(4,80)).
f(w(15,2),w(15,80)).
f(w(63,31),w(63,80)).
f(w(13,16),w(13,80)).
f(w(37,51),w(37,80)).
f(w(32,42),w(32,80)).
:-end_in_pos.
:-begin_in_neg.
f(w(65,42),w(36,6)).
f(w(19,20),w(37,26)).
f(w(18,30),w(42,74)).
f(w(26,35),w(50,80)).
f(w(70,12),w(29,79)).
f(w(43,6),w(70,80)).
f(w(44,28),w(32,76)).
f(w(29,35),w(71,80)).
f(w(17,66),w(27,80)).
f(w(37,21),w(49,10)).
f(w(62,13),w(40,17)).
f(w(35,37),w(62,77)).
f(w(52,47),w(29,80)).
f(w(21,21),w(47,80)).
f(w(35,73),w(39,72)).
f(w(25,68),w(77,60)).
f(w(62,11),w(4,80)).
f(w(51,5),w(54,40)).
f(w(16,24),w(37,80)).
f(w(78,79),w(73,74)).
:-end_in_neg.
