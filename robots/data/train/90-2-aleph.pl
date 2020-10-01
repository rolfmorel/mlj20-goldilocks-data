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
size(90).
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
f(w(57,59),w(57,90)).
f(w(43,89),w(43,90)).
f(w(56,20),w(56,90)).
f(w(19,34),w(19,90)).
f(w(86,88),w(86,90)).
f(w(5,77),w(5,90)).
f(w(14,47),w(14,90)).
f(w(26,57),w(26,90)).
f(w(29,47),w(29,90)).
f(w(15,13),w(15,90)).
f(w(64,12),w(64,90)).
f(w(38,55),w(38,90)).
f(w(27,14),w(27,90)).
f(w(88,15),w(88,90)).
f(w(41,75),w(41,90)).
f(w(41,74),w(41,90)).
f(w(72,89),w(72,90)).
f(w(37,65),w(37,90)).
f(w(52,5),w(52,90)).
f(w(39,62),w(39,90)).
:-end_in_pos.
:-begin_in_neg.
f(w(60,11),w(72,5)).
f(w(36,37),w(36,2)).
f(w(7,35),w(76,15)).
f(w(28,53),w(84,42)).
f(w(13,53),w(71,56)).
f(w(27,52),w(29,90)).
f(w(90,40),w(21,3)).
f(w(18,73),w(31,3)).
f(w(45,88),w(28,68)).
f(w(89,18),w(60,68)).
f(w(48,28),w(39,90)).
f(w(15,70),w(73,7)).
f(w(30,90),w(68,90)).
f(w(5,65),w(48,90)).
f(w(49,26),w(4,9)).
f(w(16,34),w(69,28)).
f(w(26,7),w(5,90)).
f(w(72,51),w(36,1)).
f(w(29,1),w(39,61)).
f(w(17,21),w(16,90)).
:-end_in_neg.
