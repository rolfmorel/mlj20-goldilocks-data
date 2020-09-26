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
f(w(84,35),w(84,100)).
f(w(22,49),w(22,100)).
f(w(46,58),w(46,100)).
f(w(61,38),w(61,100)).
f(w(86,71),w(86,100)).
f(w(87,17),w(87,100)).
f(w(71,22),w(71,100)).
f(w(42,52),w(42,100)).
f(w(99,70),w(99,100)).
f(w(98,54),w(98,100)).
f(w(32,86),w(32,100)).
f(w(54,57),w(54,100)).
f(w(100,62),w(100,100)).
f(w(92,35),w(92,100)).
f(w(9,86),w(9,100)).
f(w(49,46),w(49,100)).
f(w(23,55),w(23,100)).
f(w(79,55),w(79,100)).
f(w(16,61),w(16,100)).
f(w(69,94),w(69,100)).
:-end_in_pos.
:-begin_in_neg.
f(w(43,58),w(92,62)).
f(w(67,72),w(55,23)).
f(w(63,100),w(68,76)).
f(w(40,35),w(15,80)).
f(w(7,44),w(19,36)).
f(w(3,70),w(1,92)).
f(w(38,71),w(93,52)).
f(w(55,30),w(10,78)).
f(w(89,26),w(42,100)).
f(w(94,78),w(93,100)).
f(w(67,95),w(1,42)).
f(w(82,63),w(35,68)).
f(w(99,33),w(4,61)).
f(w(98,26),w(63,100)).
f(w(32,10),w(69,38)).
f(w(94,2),w(7,73)).
f(w(87,54),w(41,28)).
f(w(71,34),w(42,33)).
f(w(96,53),w(81,100)).
f(w(11,60),w(22,90)).
:-end_in_neg.
