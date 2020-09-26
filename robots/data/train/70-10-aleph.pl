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
f(w(37,38),w(37,70)).
f(w(15,64),w(15,70)).
f(w(12,7),w(12,70)).
f(w(52,42),w(52,70)).
f(w(59,69),w(59,70)).
f(w(21,30),w(21,70)).
f(w(64,24),w(64,70)).
f(w(33,47),w(33,70)).
f(w(48,34),w(48,70)).
f(w(55,19),w(55,70)).
f(w(7,50),w(7,70)).
f(w(25,17),w(25,70)).
f(w(36,14),w(36,70)).
f(w(67,55),w(67,70)).
f(w(34,59),w(34,70)).
f(w(24,23),w(24,70)).
f(w(61,39),w(61,70)).
f(w(68,43),w(68,70)).
f(w(17,7),w(17,70)).
f(w(11,20),w(11,70)).
:-end_in_pos.
:-begin_in_neg.
f(w(17,41),w(13,47)).
f(w(66,30),w(23,37)).
f(w(38,4),w(56,25)).
f(w(21,58),w(14,37)).
f(w(61,36),w(9,62)).
f(w(56,48),w(12,70)).
f(w(42,5),w(66,16)).
f(w(19,3),w(53,70)).
f(w(3,41),w(58,30)).
f(w(5,47),w(70,70)).
f(w(12,3),w(15,70)).
f(w(19,29),w(3,66)).
f(w(27,35),w(23,47)).
f(w(52,70),w(27,70)).
f(w(25,35),w(43,68)).
f(w(51,49),w(68,38)).
f(w(53,36),w(44,16)).
f(w(70,31),w(55,68)).
f(w(38,25),w(35,43)).
f(w(62,50),w(51,70)).
:-end_in_neg.
