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
size(100).
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
f(w(46,69),w(46,100)).
f(w(19,30),w(19,100)).
f(w(56,7),w(56,100)).
f(w(10,35),w(10,100)).
f(w(81,41),w(81,100)).
f(w(100,79),w(100,100)).
f(w(95,49),w(95,100)).
f(w(6,87),w(6,100)).
f(w(21,24),w(21,100)).
f(w(6,25),w(6,100)).
f(w(37,88),w(37,100)).
f(w(25,23),w(25,100)).
f(w(40,1),w(40,100)).
f(w(72,60),w(72,100)).
f(w(81,88),w(81,100)).
f(w(76,17),w(76,100)).
f(w(80,40),w(80,100)).
f(w(46,44),w(46,100)).
f(w(64,79),w(64,100)).
f(w(67,66),w(67,100)).
:-end_in_pos.
:-begin_in_neg.
f(w(67,56),w(8,83)).
f(w(47,36),w(81,80)).
f(w(67,31),w(5,100)).
f(w(91,92),w(39,93)).
f(w(100,95),w(45,67)).
f(w(94,25),w(79,69)).
f(w(95,88),w(81,38)).
f(w(44,75),w(12,20)).
f(w(42,18),w(41,33)).
f(w(96,46),w(86,6)).
f(w(84,11),w(14,66)).
f(w(35,45),w(32,82)).
f(w(6,90),w(31,76)).
f(w(46,100),w(17,25)).
f(w(20,20),w(13,21)).
f(w(56,9),w(31,100)).
f(w(36,35),w(73,100)).
f(w(86,98),w(9,100)).
f(w(32,32),w(98,42)).
f(w(48,84),w(13,30)).
:-end_in_neg.
