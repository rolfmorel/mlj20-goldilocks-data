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
f(w(16,27),w(16,80)).
f(w(15,36),w(15,80)).
f(w(68,30),w(68,80)).
f(w(59,46),w(59,80)).
f(w(68,49),w(68,80)).
f(w(28,72),w(28,80)).
f(w(29,47),w(29,80)).
f(w(68,79),w(68,80)).
f(w(61,11),w(61,80)).
f(w(55,44),w(55,80)).
f(w(14,33),w(14,80)).
f(w(42,66),w(42,80)).
f(w(9,32),w(9,80)).
f(w(27,63),w(27,80)).
f(w(54,22),w(54,80)).
f(w(75,79),w(75,80)).
f(w(72,62),w(72,80)).
f(w(31,6),w(31,80)).
f(w(1,7),w(1,80)).
f(w(10,24),w(10,80)).
:-end_in_pos.
:-begin_in_neg.
f(w(74,76),w(11,39)).
f(w(44,61),w(9,74)).
f(w(78,18),w(52,80)).
f(w(15,61),w(7,60)).
f(w(25,59),w(70,80)).
f(w(73,49),w(80,44)).
f(w(21,75),w(7,11)).
f(w(72,49),w(1,59)).
f(w(12,62),w(23,66)).
f(w(49,57),w(67,78)).
f(w(62,32),w(39,80)).
f(w(44,71),w(77,14)).
f(w(38,45),w(4,76)).
f(w(57,64),w(60,5)).
f(w(66,52),w(51,76)).
f(w(31,2),w(52,16)).
f(w(45,46),w(4,36)).
f(w(80,8),w(2,20)).
f(w(4,75),w(79,17)).
f(w(60,30),w(24,72)).
:-end_in_neg.
