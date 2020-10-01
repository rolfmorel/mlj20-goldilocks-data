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
size(60).
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
f(w(9,35),w(9,60)).
f(w(27,40),w(27,60)).
f(w(46,15),w(46,60)).
f(w(33,17),w(33,60)).
f(w(4,3),w(4,60)).
f(w(2,27),w(2,60)).
f(w(16,46),w(16,60)).
f(w(47,20),w(47,60)).
f(w(9,48),w(9,60)).
f(w(32,36),w(32,60)).
f(w(40,51),w(40,60)).
f(w(54,56),w(54,60)).
f(w(59,52),w(59,60)).
f(w(60,6),w(60,60)).
f(w(46,19),w(46,60)).
f(w(26,45),w(26,60)).
f(w(8,29),w(8,60)).
f(w(2,44),w(2,60)).
f(w(43,29),w(43,60)).
f(w(4,50),w(4,60)).
:-end_in_pos.
:-begin_in_neg.
f(w(14,30),w(23,54)).
f(w(48,48),w(22,56)).
f(w(19,47),w(18,18)).
f(w(49,44),w(54,48)).
f(w(34,46),w(6,44)).
f(w(20,47),w(46,14)).
f(w(28,21),w(20,31)).
f(w(33,44),w(49,46)).
f(w(48,26),w(44,12)).
f(w(50,38),w(22,57)).
f(w(49,31),w(49,50)).
f(w(28,31),w(58,10)).
f(w(58,21),w(25,14)).
f(w(42,17),w(33,45)).
f(w(35,5),w(39,9)).
f(w(37,34),w(8,35)).
f(w(46,8),w(31,32)).
f(w(1,16),w(46,29)).
f(w(3,48),w(57,60)).
f(w(38,33),w(1,6)).
:-end_in_neg.
