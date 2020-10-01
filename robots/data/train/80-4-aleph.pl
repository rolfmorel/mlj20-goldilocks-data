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
f(w(33,40),w(33,80)).
f(w(28,26),w(28,80)).
f(w(30,62),w(30,80)).
f(w(60,45),w(60,80)).
f(w(52,23),w(52,80)).
f(w(54,39),w(54,80)).
f(w(6,79),w(6,80)).
f(w(34,57),w(34,80)).
f(w(28,28),w(28,80)).
f(w(47,16),w(47,80)).
f(w(3,79),w(3,80)).
f(w(7,52),w(7,80)).
f(w(24,77),w(24,80)).
f(w(59,38),w(59,80)).
f(w(23,19),w(23,80)).
f(w(7,74),w(7,80)).
f(w(78,16),w(78,80)).
f(w(74,5),w(74,80)).
f(w(30,64),w(30,80)).
f(w(33,22),w(33,80)).
:-end_in_pos.
:-begin_in_neg.
f(w(25,44),w(6,80)).
f(w(4,60),w(36,30)).
f(w(52,74),w(34,80)).
f(w(61,37),w(31,80)).
f(w(61,52),w(62,80)).
f(w(14,4),w(28,66)).
f(w(35,22),w(16,79)).
f(w(56,31),w(9,64)).
f(w(73,9),w(8,80)).
f(w(70,69),w(16,80)).
f(w(74,63),w(28,32)).
f(w(48,54),w(48,14)).
f(w(50,4),w(32,38)).
f(w(61,48),w(47,80)).
f(w(23,62),w(42,24)).
f(w(8,75),w(21,79)).
f(w(24,1),w(74,77)).
f(w(39,55),w(46,80)).
f(w(17,63),w(25,16)).
f(w(66,19),w(52,15)).
:-end_in_neg.
