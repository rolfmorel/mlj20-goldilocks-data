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
    size(Size),
    X1 #< Size,
    X2 #= X1 + 1.

move_left(w(X1,Y),w(X2,Y)):-
    X1 #> 1,
    X2 #= X1 - 1.

move_up(w(X,Y1),w(X,Y2)):-
    size(Size),
    Y1 #< Size,
    Y2 #= Y1 + 1.

move_down(w(X,Y1),w(X,Y2)):-
    Y1 #> 1,
    Y2 #= Y1 - 1.
:-end_bg.
:-begin_in_pos.
f(w(4,54),w(4,80)).
f(w(70,79),w(70,80)).
f(w(3,78),w(3,80)).
f(w(7,67),w(7,80)).
f(w(23,5),w(23,80)).
f(w(28,72),w(28,80)).
f(w(65,47),w(65,80)).
f(w(5,31),w(5,80)).
f(w(65,42),w(65,80)).
f(w(25,63),w(25,80)).
f(w(20,15),w(20,80)).
f(w(51,79),w(51,80)).
f(w(39,47),w(39,80)).
f(w(62,67),w(62,80)).
f(w(31,7),w(31,80)).
f(w(46,53),w(46,80)).
f(w(27,55),w(27,80)).
f(w(37,21),w(37,80)).
f(w(53,5),w(53,80)).
f(w(69,78),w(69,80)).
:-end_in_pos.
:-begin_in_neg.
f(w(33,32),w(39,76)).
f(w(36,13),w(76,31)).
f(w(31,7),w(51,8)).
f(w(76,51),w(73,10)).
f(w(45,66),w(16,40)).
f(w(67,40),w(48,80)).
f(w(24,31),w(16,80)).
f(w(18,76),w(34,80)).
f(w(2,68),w(24,39)).
f(w(70,41),w(35,40)).
f(w(40,78),w(24,27)).
f(w(3,73),w(67,47)).
f(w(33,33),w(34,31)).
f(w(6,13),w(53,3)).
f(w(74,66),w(38,80)).
f(w(5,71),w(13,13)).
f(w(3,54),w(73,80)).
f(w(47,37),w(69,41)).
f(w(45,59),w(25,41)).
f(w(14,31),w(70,80)).
:-end_in_neg.
