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
size(70).
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
f(w(38,32),w(38,70)).
f(w(40,24),w(40,70)).
f(w(5,59),w(5,70)).
f(w(13,39),w(13,70)).
f(w(32,39),w(32,70)).
f(w(53,17),w(53,70)).
f(w(28,68),w(28,70)).
f(w(1,51),w(1,70)).
f(w(9,63),w(9,70)).
f(w(55,33),w(55,70)).
f(w(11,8),w(11,70)).
f(w(2,64),w(2,70)).
f(w(65,49),w(65,70)).
f(w(57,46),w(57,70)).
f(w(61,35),w(61,70)).
f(w(50,25),w(50,70)).
f(w(45,44),w(45,70)).
f(w(9,18),w(9,70)).
f(w(43,48),w(43,70)).
f(w(1,14),w(1,70)).
:-end_in_pos.
:-begin_in_neg.
f(w(23,5),w(22,48)).
f(w(16,27),w(39,60)).
f(w(27,36),w(6,38)).
f(w(30,21),w(21,25)).
f(w(52,53),w(63,29)).
f(w(16,44),w(37,8)).
f(w(28,7),w(44,16)).
f(w(50,43),w(64,67)).
f(w(22,54),w(12,70)).
f(w(57,39),w(6,23)).
f(w(12,7),w(8,27)).
f(w(16,12),w(37,18)).
f(w(45,10),w(49,1)).
f(w(45,52),w(27,63)).
f(w(23,52),w(70,37)).
f(w(25,44),w(60,61)).
f(w(48,35),w(62,3)).
f(w(38,36),w(43,31)).
f(w(51,10),w(40,57)).
f(w(5,49),w(49,33)).
:-end_in_neg.
