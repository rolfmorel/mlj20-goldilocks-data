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
f(w(19,13),w(19,100)).
f(w(39,22),w(39,100)).
f(w(90,4),w(90,100)).
f(w(85,68),w(85,100)).
f(w(48,73),w(48,100)).
f(w(69,75),w(69,100)).
f(w(53,71),w(53,100)).
f(w(81,84),w(81,100)).
f(w(11,36),w(11,100)).
f(w(96,46),w(96,100)).
f(w(71,16),w(71,100)).
f(w(75,68),w(75,100)).
f(w(14,1),w(14,100)).
f(w(48,39),w(48,100)).
f(w(53,65),w(53,100)).
f(w(7,40),w(7,100)).
f(w(62,64),w(62,100)).
f(w(35,43),w(35,100)).
f(w(79,95),w(79,100)).
f(w(44,68),w(44,100)).
:-end_in_pos.
:-begin_in_neg.
f(w(89,40),w(95,41)).
f(w(85,49),w(95,100)).
f(w(60,7),w(97,100)).
f(w(33,63),w(25,98)).
f(w(81,16),w(74,100)).
f(w(13,39),w(17,94)).
f(w(83,81),w(16,21)).
f(w(16,27),w(37,79)).
f(w(93,82),w(21,16)).
f(w(68,56),w(17,89)).
f(w(83,78),w(55,60)).
f(w(43,44),w(45,100)).
f(w(31,12),w(4,15)).
f(w(34,48),w(85,71)).
f(w(5,27),w(5,19)).
f(w(96,29),w(81,15)).
f(w(3,87),w(28,40)).
f(w(61,31),w(50,32)).
f(w(91,49),w(2,100)).
f(w(94,96),w(10,54)).
:-end_in_neg.
