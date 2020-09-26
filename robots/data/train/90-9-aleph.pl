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
size(90).
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
f(w(83,43),w(83,90)).
f(w(5,42),w(5,90)).
f(w(22,15),w(22,90)).
f(w(85,11),w(85,90)).
f(w(9,77),w(9,90)).
f(w(52,16),w(52,90)).
f(w(41,64),w(41,90)).
f(w(14,42),w(14,90)).
f(w(3,75),w(3,90)).
f(w(81,21),w(81,90)).
f(w(38,74),w(38,90)).
f(w(65,41),w(65,90)).
f(w(17,19),w(17,90)).
f(w(90,7),w(90,90)).
f(w(18,69),w(18,90)).
f(w(33,54),w(33,90)).
f(w(65,72),w(65,90)).
f(w(27,43),w(27,90)).
f(w(44,86),w(44,90)).
f(w(79,89),w(79,90)).
:-end_in_pos.
:-begin_in_neg.
f(w(7,90),w(4,55)).
f(w(66,80),w(7,90)).
f(w(6,1),w(45,24)).
f(w(50,49),w(32,90)).
f(w(29,70),w(17,5)).
f(w(77,11),w(80,36)).
f(w(70,14),w(67,21)).
f(w(9,11),w(43,90)).
f(w(23,17),w(64,90)).
f(w(43,75),w(46,14)).
f(w(63,80),w(41,22)).
f(w(42,80),w(38,17)).
f(w(78,18),w(19,64)).
f(w(1,73),w(59,29)).
f(w(53,63),w(65,73)).
f(w(68,16),w(1,42)).
f(w(59,49),w(15,90)).
f(w(9,7),w(90,41)).
f(w(33,34),w(73,32)).
f(w(82,85),w(20,90)).
:-end_in_neg.
