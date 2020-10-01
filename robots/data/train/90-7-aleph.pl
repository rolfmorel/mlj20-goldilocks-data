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
f(w(69,52),w(69,90)).
f(w(80,22),w(80,90)).
f(w(88,21),w(88,90)).
f(w(39,3),w(39,90)).
f(w(90,70),w(90,90)).
f(w(5,7),w(5,90)).
f(w(52,41),w(52,90)).
f(w(75,88),w(75,90)).
f(w(17,23),w(17,90)).
f(w(88,7),w(88,90)).
f(w(41,5),w(41,90)).
f(w(32,53),w(32,90)).
f(w(70,73),w(70,90)).
f(w(54,22),w(54,90)).
f(w(47,45),w(47,90)).
f(w(89,55),w(89,90)).
f(w(48,2),w(48,90)).
f(w(84,56),w(84,90)).
f(w(36,6),w(36,90)).
f(w(22,78),w(22,90)).
:-end_in_pos.
:-begin_in_neg.
f(w(89,53),w(8,90)).
f(w(85,82),w(79,1)).
f(w(10,42),w(78,63)).
f(w(21,35),w(82,1)).
f(w(82,45),w(6,90)).
f(w(76,34),w(6,8)).
f(w(12,33),w(72,46)).
f(w(58,2),w(55,16)).
f(w(74,34),w(40,34)).
f(w(86,89),w(30,12)).
f(w(30,42),w(80,12)).
f(w(11,59),w(81,14)).
f(w(65,6),w(62,90)).
f(w(41,15),w(85,12)).
f(w(77,49),w(52,83)).
f(w(42,42),w(80,34)).
f(w(49,20),w(75,90)).
f(w(57,59),w(52,45)).
f(w(1,34),w(34,90)).
f(w(63,51),w(88,41)).
:-end_in_neg.
