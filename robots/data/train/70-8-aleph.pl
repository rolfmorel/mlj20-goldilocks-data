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
f(w(15,49),w(15,70)).
f(w(36,57),w(36,70)).
f(w(21,37),w(21,70)).
f(w(2,10),w(2,70)).
f(w(26,43),w(26,70)).
f(w(53,45),w(53,70)).
f(w(28,60),w(28,70)).
f(w(31,35),w(31,70)).
f(w(70,36),w(70,70)).
f(w(33,21),w(33,70)).
f(w(57,53),w(57,70)).
f(w(56,69),w(56,70)).
f(w(65,14),w(65,70)).
f(w(70,33),w(70,70)).
f(w(7,59),w(7,70)).
f(w(49,52),w(49,70)).
f(w(44,50),w(44,70)).
f(w(47,15),w(47,70)).
f(w(69,54),w(69,70)).
f(w(7,54),w(7,70)).
:-end_in_pos.
:-begin_in_neg.
f(w(23,2),w(17,70)).
f(w(11,20),w(51,57)).
f(w(51,61),w(64,22)).
f(w(53,1),w(64,70)).
f(w(65,68),w(48,70)).
f(w(35,39),w(55,70)).
f(w(12,61),w(45,51)).
f(w(45,57),w(36,70)).
f(w(64,21),w(30,51)).
f(w(50,37),w(16,25)).
f(w(60,42),w(22,70)).
f(w(63,45),w(2,68)).
f(w(69,21),w(45,70)).
f(w(15,31),w(70,50)).
f(w(34,8),w(26,39)).
f(w(24,36),w(38,32)).
f(w(68,34),w(47,58)).
f(w(18,17),w(50,11)).
f(w(42,6),w(44,70)).
f(w(5,69),w(38,70)).
:-end_in_neg.
