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
f(w(26,52),w(26,90)).
f(w(85,26),w(85,90)).
f(w(13,81),w(13,90)).
f(w(70,74),w(70,90)).
f(w(64,17),w(64,90)).
f(w(52,6),w(52,90)).
f(w(26,67),w(26,90)).
f(w(80,34),w(80,90)).
f(w(54,5),w(54,90)).
f(w(40,41),w(40,90)).
f(w(68,33),w(68,90)).
f(w(19,75),w(19,90)).
f(w(90,17),w(90,90)).
f(w(31,84),w(31,90)).
f(w(15,82),w(15,90)).
f(w(44,8),w(44,90)).
f(w(14,75),w(14,90)).
f(w(35,44),w(35,90)).
f(w(90,40),w(90,90)).
f(w(7,16),w(7,90)).
:-end_in_pos.
:-begin_in_neg.
f(w(53,32),w(26,23)).
f(w(65,49),w(13,74)).
f(w(33,20),w(41,21)).
f(w(10,2),w(87,90)).
f(w(88,50),w(75,67)).
f(w(80,67),w(63,90)).
f(w(43,15),w(60,50)).
f(w(15,15),w(43,81)).
f(w(81,87),w(61,24)).
f(w(38,78),w(19,39)).
f(w(48,20),w(82,8)).
f(w(1,84),w(58,77)).
f(w(36,80),w(17,36)).
f(w(57,73),w(2,90)).
f(w(5,74),w(70,12)).
f(w(79,76),w(27,44)).
f(w(15,35),w(86,25)).
f(w(19,58),w(24,48)).
f(w(28,89),w(24,39)).
f(w(56,23),w(21,69)).
:-end_in_neg.
