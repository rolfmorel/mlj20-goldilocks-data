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
f(w(85,88),w(85,90)).
f(w(57,1),w(57,90)).
f(w(69,57),w(69,90)).
f(w(80,54),w(80,90)).
f(w(64,24),w(64,90)).
f(w(56,76),w(56,90)).
f(w(50,56),w(50,90)).
f(w(13,21),w(13,90)).
f(w(65,21),w(65,90)).
f(w(58,54),w(58,90)).
f(w(45,29),w(45,90)).
f(w(37,43),w(37,90)).
f(w(88,13),w(88,90)).
f(w(90,26),w(90,90)).
f(w(88,66),w(88,90)).
f(w(66,17),w(66,90)).
f(w(84,65),w(84,90)).
f(w(69,8),w(69,90)).
f(w(2,64),w(2,90)).
f(w(40,11),w(40,90)).
:-end_in_pos.
:-begin_in_neg.
f(w(16,68),w(21,90)).
f(w(61,63),w(15,14)).
f(w(37,2),w(8,23)).
f(w(81,17),w(88,11)).
f(w(73,26),w(87,32)).
f(w(31,13),w(49,6)).
f(w(70,25),w(52,30)).
f(w(51,5),w(3,48)).
f(w(89,78),w(52,50)).
f(w(85,17),w(49,60)).
f(w(46,88),w(37,14)).
f(w(64,31),w(22,43)).
f(w(87,65),w(87,50)).
f(w(31,13),w(10,90)).
f(w(19,23),w(30,41)).
f(w(45,67),w(80,29)).
f(w(66,29),w(38,81)).
f(w(47,76),w(89,63)).
f(w(5,46),w(43,90)).
f(w(51,51),w(26,90)).
:-end_in_neg.
