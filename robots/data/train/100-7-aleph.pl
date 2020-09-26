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
f(w(62,40),w(62,100)).
f(w(71,70),w(71,100)).
f(w(5,27),w(5,100)).
f(w(50,9),w(50,100)).
f(w(59,34),w(59,100)).
f(w(89,50),w(89,100)).
f(w(46,1),w(46,100)).
f(w(82,84),w(82,100)).
f(w(11,95),w(11,100)).
f(w(32,79),w(32,100)).
f(w(60,10),w(60,100)).
f(w(35,49),w(35,100)).
f(w(84,89),w(84,100)).
f(w(41,69),w(41,100)).
f(w(22,43),w(22,100)).
f(w(66,59),w(66,100)).
f(w(75,18),w(75,100)).
f(w(21,57),w(21,100)).
f(w(87,7),w(87,100)).
f(w(24,83),w(24,100)).
:-end_in_pos.
:-begin_in_neg.
f(w(23,35),w(48,100)).
f(w(17,57),w(69,100)).
f(w(56,58),w(19,60)).
f(w(60,98),w(48,100)).
f(w(13,71),w(36,100)).
f(w(46,30),w(35,100)).
f(w(22,99),w(54,62)).
f(w(88,47),w(8,100)).
f(w(67,54),w(16,48)).
f(w(14,4),w(86,76)).
f(w(8,99),w(59,64)).
f(w(28,22),w(35,91)).
f(w(15,94),w(23,100)).
f(w(60,12),w(81,100)).
f(w(21,63),w(60,18)).
f(w(19,33),w(15,14)).
f(w(85,10),w(42,79)).
f(w(40,20),w(31,55)).
f(w(28,80),w(60,95)).
f(w(78,73),w(67,100)).
:-end_in_neg.
