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
size(60).
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
f(w(50,51),w(50,60)).
f(w(13,16),w(13,60)).
f(w(33,49),w(33,60)).
f(w(57,30),w(57,60)).
f(w(2,12),w(2,60)).
f(w(53,36),w(53,60)).
f(w(46,14),w(46,60)).
f(w(32,17),w(32,60)).
f(w(18,24),w(18,60)).
f(w(16,32),w(16,60)).
f(w(53,44),w(53,60)).
f(w(27,50),w(27,60)).
f(w(6,43),w(6,60)).
f(w(53,26),w(53,60)).
f(w(24,25),w(24,60)).
f(w(54,30),w(54,60)).
f(w(8,14),w(8,60)).
f(w(23,33),w(23,60)).
f(w(7,4),w(7,60)).
f(w(38,50),w(38,60)).
:-end_in_pos.
:-begin_in_neg.
f(w(12,26),w(25,60)).
f(w(55,57),w(32,60)).
f(w(35,38),w(52,39)).
f(w(23,21),w(57,60)).
f(w(30,15),w(41,44)).
f(w(9,6),w(54,60)).
f(w(4,6),w(55,47)).
f(w(11,55),w(53,60)).
f(w(57,31),w(17,60)).
f(w(59,21),w(3,1)).
f(w(49,28),w(54,42)).
f(w(15,43),w(43,58)).
f(w(49,15),w(54,57)).
f(w(10,12),w(55,37)).
f(w(21,18),w(34,23)).
f(w(25,20),w(10,32)).
f(w(27,23),w(26,60)).
f(w(17,48),w(49,22)).
f(w(37,21),w(5,15)).
f(w(9,55),w(49,60)).
:-end_in_neg.
