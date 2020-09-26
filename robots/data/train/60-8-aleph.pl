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
f(w(41,3),w(41,60)).
f(w(29,59),w(29,60)).
f(w(8,44),w(8,60)).
f(w(48,12),w(48,60)).
f(w(19,57),w(19,60)).
f(w(7,43),w(7,60)).
f(w(29,35),w(29,60)).
f(w(41,42),w(41,60)).
f(w(26,53),w(26,60)).
f(w(54,23),w(54,60)).
f(w(5,20),w(5,60)).
f(w(15,23),w(15,60)).
f(w(39,25),w(39,60)).
f(w(22,18),w(22,60)).
f(w(13,28),w(13,60)).
f(w(14,2),w(14,60)).
f(w(32,54),w(32,60)).
f(w(2,51),w(2,60)).
f(w(34,10),w(34,60)).
f(w(45,51),w(45,60)).
:-end_in_pos.
:-begin_in_neg.
f(w(12,22),w(58,11)).
f(w(35,17),w(50,34)).
f(w(32,34),w(33,60)).
f(w(38,50),w(29,53)).
f(w(28,37),w(32,60)).
f(w(57,14),w(34,33)).
f(w(8,10),w(13,46)).
f(w(15,36),w(28,48)).
f(w(47,32),w(1,16)).
f(w(16,60),w(31,9)).
f(w(45,30),w(30,26)).
f(w(49,59),w(7,3)).
f(w(45,38),w(46,60)).
f(w(55,45),w(20,15)).
f(w(23,22),w(26,20)).
f(w(43,4),w(14,9)).
f(w(51,59),w(27,54)).
f(w(39,37),w(58,36)).
f(w(6,49),w(8,10)).
f(w(49,19),w(18,29)).
:-end_in_neg.
