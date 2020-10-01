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
f(w(47,57),w(47,80)).
f(w(15,27),w(15,80)).
f(w(40,19),w(40,80)).
f(w(29,24),w(29,80)).
f(w(65,72),w(65,80)).
f(w(8,38),w(8,80)).
f(w(79,63),w(79,80)).
f(w(18,35),w(18,80)).
f(w(54,52),w(54,80)).
f(w(47,39),w(47,80)).
f(w(26,10),w(26,80)).
f(w(24,79),w(24,80)).
f(w(27,16),w(27,80)).
f(w(9,13),w(9,80)).
f(w(39,54),w(39,80)).
f(w(33,18),w(33,80)).
f(w(53,77),w(53,80)).
f(w(41,61),w(41,80)).
f(w(40,27),w(40,80)).
f(w(57,68),w(57,80)).
:-end_in_pos.
:-begin_in_neg.
f(w(23,47),w(47,6)).
f(w(25,29),w(66,80)).
f(w(5,59),w(40,80)).
f(w(43,64),w(67,21)).
f(w(3,29),w(10,80)).
f(w(2,66),w(32,80)).
f(w(37,33),w(21,23)).
f(w(1,49),w(38,53)).
f(w(79,1),w(73,80)).
f(w(68,42),w(61,74)).
f(w(47,29),w(41,56)).
f(w(74,5),w(48,70)).
f(w(10,64),w(77,1)).
f(w(26,22),w(62,53)).
f(w(1,60),w(73,80)).
f(w(11,15),w(53,13)).
f(w(19,41),w(61,80)).
f(w(5,7),w(58,29)).
f(w(32,9),w(57,55)).
f(w(37,18),w(61,80)).
:-end_in_neg.
