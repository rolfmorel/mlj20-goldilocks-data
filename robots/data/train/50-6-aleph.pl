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
size(50).
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
f(w(5,12),w(5,50)).
f(w(34,41),w(34,50)).
f(w(18,22),w(18,50)).
f(w(4,28),w(4,50)).
f(w(29,16),w(29,50)).
f(w(45,5),w(45,50)).
f(w(50,20),w(50,50)).
f(w(9,34),w(9,50)).
f(w(29,9),w(29,50)).
f(w(19,23),w(19,50)).
f(w(46,24),w(46,50)).
f(w(11,39),w(11,50)).
f(w(20,14),w(20,50)).
f(w(39,13),w(39,50)).
f(w(24,15),w(24,50)).
f(w(13,17),w(13,50)).
f(w(47,17),w(47,50)).
f(w(8,10),w(8,50)).
f(w(46,2),w(46,50)).
f(w(25,26),w(25,50)).
:-end_in_pos.
:-begin_in_neg.
f(w(25,5),w(13,40)).
f(w(49,27),w(36,50)).
f(w(27,9),w(13,17)).
f(w(8,9),w(46,5)).
f(w(50,33),w(47,25)).
f(w(35,21),w(41,50)).
f(w(8,22),w(23,22)).
f(w(8,38),w(47,50)).
f(w(44,12),w(8,7)).
f(w(16,49),w(4,47)).
f(w(11,42),w(3,23)).
f(w(49,22),w(38,32)).
f(w(23,4),w(43,23)).
f(w(19,19),w(39,45)).
f(w(45,38),w(24,13)).
f(w(10,48),w(46,50)).
f(w(17,20),w(23,3)).
f(w(8,50),w(2,9)).
f(w(24,41),w(34,50)).
f(w(28,22),w(40,14)).
:-end_in_neg.
