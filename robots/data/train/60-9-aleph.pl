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
f(w(6,24),w(6,60)).
f(w(53,32),w(53,60)).
f(w(8,57),w(8,60)).
f(w(53,31),w(53,60)).
f(w(18,30),w(18,60)).
f(w(48,55),w(48,60)).
f(w(38,32),w(38,60)).
f(w(14,47),w(14,60)).
f(w(26,28),w(26,60)).
f(w(39,54),w(39,60)).
f(w(20,29),w(20,60)).
f(w(12,29),w(12,60)).
f(w(40,55),w(40,60)).
f(w(22,45),w(22,60)).
f(w(60,24),w(60,60)).
f(w(6,5),w(6,60)).
f(w(50,59),w(50,60)).
f(w(10,20),w(10,60)).
f(w(2,23),w(2,60)).
f(w(5,23),w(5,60)).
:-end_in_pos.
:-begin_in_neg.
f(w(31,1),w(46,53)).
f(w(12,21),w(41,54)).
f(w(46,53),w(53,60)).
f(w(1,13),w(22,60)).
f(w(10,57),w(15,53)).
f(w(39,46),w(1,60)).
f(w(28,17),w(32,15)).
f(w(20,31),w(8,25)).
f(w(57,22),w(1,44)).
f(w(50,32),w(58,59)).
f(w(52,39),w(21,21)).
f(w(5,44),w(47,59)).
f(w(55,53),w(51,5)).
f(w(4,35),w(51,12)).
f(w(20,18),w(16,60)).
f(w(15,20),w(32,40)).
f(w(12,12),w(2,2)).
f(w(33,54),w(49,52)).
f(w(12,51),w(16,3)).
f(w(54,60),w(20,22)).
:-end_in_neg.
