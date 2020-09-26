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
f(w(41,32),w(41,60)).
f(w(7,27),w(7,60)).
f(w(28,18),w(28,60)).
f(w(53,6),w(53,60)).
f(w(34,53),w(34,60)).
f(w(50,2),w(50,60)).
f(w(19,59),w(19,60)).
f(w(48,4),w(48,60)).
f(w(17,6),w(17,60)).
f(w(31,37),w(31,60)).
f(w(38,50),w(38,60)).
f(w(25,17),w(25,60)).
f(w(34,11),w(34,60)).
f(w(3,48),w(3,60)).
f(w(30,12),w(30,60)).
f(w(7,51),w(7,60)).
f(w(33,28),w(33,60)).
f(w(59,21),w(59,60)).
f(w(9,25),w(9,60)).
f(w(6,20),w(6,60)).
:-end_in_pos.
:-begin_in_neg.
f(w(8,40),w(43,40)).
f(w(58,14),w(12,60)).
f(w(16,56),w(21,8)).
f(w(27,3),w(4,4)).
f(w(24,1),w(36,53)).
f(w(7,3),w(46,60)).
f(w(58,30),w(35,60)).
f(w(5,23),w(2,43)).
f(w(5,55),w(54,56)).
f(w(2,40),w(33,38)).
f(w(6,32),w(7,47)).
f(w(47,58),w(9,17)).
f(w(29,5),w(35,60)).
f(w(33,54),w(35,25)).
f(w(6,4),w(38,60)).
f(w(57,51),w(2,10)).
f(w(45,56),w(3,60)).
f(w(5,14),w(8,60)).
f(w(43,59),w(36,32)).
f(w(17,18),w(52,60)).
:-end_in_neg.
