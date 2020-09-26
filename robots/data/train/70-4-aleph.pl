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
f(w(35,58),w(35,70)).
f(w(38,68),w(38,70)).
f(w(38,57),w(38,70)).
f(w(16,69),w(16,70)).
f(w(57,32),w(57,70)).
f(w(37,58),w(37,70)).
f(w(53,33),w(53,70)).
f(w(25,46),w(25,70)).
f(w(63,1),w(63,70)).
f(w(48,62),w(48,70)).
f(w(39,61),w(39,70)).
f(w(60,47),w(60,70)).
f(w(69,63),w(69,70)).
f(w(18,48),w(18,70)).
f(w(19,12),w(19,70)).
f(w(51,22),w(51,70)).
f(w(69,20),w(69,70)).
f(w(36,61),w(36,70)).
f(w(11,32),w(11,70)).
f(w(36,41),w(36,70)).
:-end_in_pos.
:-begin_in_neg.
f(w(18,14),w(25,36)).
f(w(46,24),w(30,63)).
f(w(49,29),w(11,8)).
f(w(67,53),w(39,8)).
f(w(31,67),w(7,29)).
f(w(47,52),w(43,57)).
f(w(3,45),w(13,42)).
f(w(32,64),w(18,70)).
f(w(5,19),w(24,65)).
f(w(38,5),w(70,70)).
f(w(20,65),w(2,70)).
f(w(12,50),w(1,38)).
f(w(27,28),w(25,4)).
f(w(6,42),w(36,70)).
f(w(29,39),w(5,5)).
f(w(16,25),w(61,7)).
f(w(22,42),w(4,43)).
f(w(8,44),w(42,70)).
f(w(19,22),w(44,5)).
f(w(65,7),w(28,36)).
:-end_in_neg.
