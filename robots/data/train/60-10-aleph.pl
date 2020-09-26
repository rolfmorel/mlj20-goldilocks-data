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
f(w(46,31),w(46,60)).
f(w(35,29),w(35,60)).
f(w(6,29),w(6,60)).
f(w(33,50),w(33,60)).
f(w(27,15),w(27,60)).
f(w(34,36),w(34,60)).
f(w(60,18),w(60,60)).
f(w(30,59),w(30,60)).
f(w(57,43),w(57,60)).
f(w(50,53),w(50,60)).
f(w(40,24),w(40,60)).
f(w(2,2),w(2,60)).
f(w(57,6),w(57,60)).
f(w(15,48),w(15,60)).
f(w(37,53),w(37,60)).
f(w(31,42),w(31,60)).
f(w(9,11),w(9,60)).
f(w(37,26),w(37,60)).
f(w(20,44),w(20,60)).
f(w(4,36),w(4,60)).
:-end_in_pos.
:-begin_in_neg.
f(w(27,17),w(23,10)).
f(w(37,56),w(54,58)).
f(w(9,4),w(2,21)).
f(w(56,16),w(4,5)).
f(w(28,12),w(45,60)).
f(w(55,15),w(13,36)).
f(w(58,5),w(26,57)).
f(w(4,45),w(31,60)).
f(w(1,56),w(9,20)).
f(w(36,23),w(8,36)).
f(w(34,58),w(29,3)).
f(w(52,57),w(18,3)).
f(w(59,29),w(6,31)).
f(w(42,16),w(43,55)).
f(w(37,29),w(51,60)).
f(w(39,30),w(50,38)).
f(w(40,4),w(4,60)).
f(w(42,52),w(60,50)).
f(w(5,7),w(23,29)).
f(w(14,26),w(60,16)).
:-end_in_neg.
