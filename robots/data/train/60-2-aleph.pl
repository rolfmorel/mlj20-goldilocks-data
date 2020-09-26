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
f(w(42,47),w(42,60)).
f(w(15,23),w(15,60)).
f(w(41,12),w(41,60)).
f(w(11,35),w(11,60)).
f(w(38,22),w(38,60)).
f(w(33,12),w(33,60)).
f(w(45,48),w(45,60)).
f(w(50,15),w(50,60)).
f(w(22,28),w(22,60)).
f(w(50,28),w(50,60)).
f(w(41,43),w(41,60)).
f(w(45,17),w(45,60)).
f(w(2,42),w(2,60)).
f(w(4,11),w(4,60)).
f(w(38,7),w(38,60)).
f(w(57,29),w(57,60)).
f(w(12,53),w(12,60)).
f(w(24,58),w(24,60)).
f(w(4,5),w(4,60)).
f(w(21,3),w(21,60)).
:-end_in_pos.
:-begin_in_neg.
f(w(56,54),w(29,16)).
f(w(47,26),w(26,50)).
f(w(60,58),w(46,54)).
f(w(50,22),w(24,34)).
f(w(35,19),w(60,13)).
f(w(38,20),w(51,27)).
f(w(58,37),w(46,60)).
f(w(24,20),w(49,27)).
f(w(40,19),w(51,60)).
f(w(47,1),w(20,46)).
f(w(7,58),w(1,36)).
f(w(30,34),w(46,60)).
f(w(10,18),w(20,16)).
f(w(31,50),w(34,60)).
f(w(23,42),w(50,18)).
f(w(42,9),w(31,46)).
f(w(30,51),w(52,4)).
f(w(4,48),w(45,35)).
f(w(33,59),w(45,60)).
f(w(10,5),w(35,56)).
:-end_in_neg.
