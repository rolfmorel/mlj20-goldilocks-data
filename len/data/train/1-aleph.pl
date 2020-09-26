:- use_module(library(aleph)).
:- if(current_predicate(use_rendering/1)).
:- use_rendering(prolog).
:- endif.
:- aleph.
:-style_check(-discontiguous).

:- aleph_set(i,6).
:- aleph_set(clauselength,6).
:- aleph_set(nodes,30000).

%% :- modeh(*,f(+list,-element)). % PROBLEM SPECIFIC
:- modeb(*,head(+list,-element)).
:- modeb(*,tail(+list,-list)).
:- modeb(*,geq(+element,+element)).
:- modeb(*,empty(+list)).
:- modeb(*,even(+element)).
:- modeb(*,odd(+element)).
:- modeb(*,one(+int)).
:- modeb(*,zero(-int)).
:- modeb(*,decrement(+int,-int)).
%% :- modeb(*,increment(+int,-int)). % PROBLEM SPECIFIC
%% :- modeb(*,element(+list,-element)). % PROBLEM SPECIFIC
%% :- modeb(*,cons(+element,+list,-list)). % PROBLEM SPECIFIC
:- modeh(*,f(+list,-int)).
:- modeb(*,f(+list,-int)).
%% :- modeb(*,cons(+element,+list,-list)).

:- determination(f/2,head/2).
:- determination(f/2,tail/2).
:- determination(f/2,geq/2).
:- determination(f/2,empty/1).
:- determination(f/2,even/1).
:- determination(f/2,odd/1).
:- determination(f/2,one/1).
:- determination(f/2,zero/1).
:- determination(f/2,decrement/2).
:- determination(f/2,f/2).
:- determination(f/2,element/2).
:- determination(f/2,increment/2).
%% :- determination(f/2,element/2).
%% :- determination(f/2,cons/3).
:-begin_bg.
%% SAME AS POPPER
body_pred(head/2).
body_pred(tail/2).
body_pred(geq/2).
body_pred(empty/1).
body_pred(even/1).
body_pred(odd/1).
body_pred(one/1).
body_pred(zero/1).
body_pred(decrement/2).

%% FOR METAGOL
body_pred(P/A):-
    current_predicate(modeb/2),
    modeb(P,A).

%% body_pred(P/A)

is_list([]).
is_list([_|_]).

increment(A,B):-
    (nonvar(A) -> \+ is_list(A); true),
    (nonvar(B) -> \+ is_list(B); true),
    succ(A,B).

decrement(A,B):-
    (nonvar(A) -> \+ is_list(A); true),
    (nonvar(B) -> \+ is_list(B); true),
    succ(B,A).

my_length(A,B):-
    (nonvar(A) -> is_list(A); true),
    (nonvar(B) -> \+is_list(B); true),
    length(A,B).

cons(A,B,C):-
    append([A],B,C).
comps([H|T],H,T).

tail([_|T],T).
head([H|_],H).
sum(A,B,C):-
    C is A+B.
empty([]).

element([X|_],X):-!.
element([_|T],X):-
    element(T,X).

empty_in([]).
empty_out([]).

zero(0).
one(1).

gt(A,B):-
    nonvar(A),
    nonvar(B),
    \+is_list(A),
    \+is_list(B),
    A > B.

geq(A,B):-
    nonvar(A),
    nonvar(B),
    \+is_list(A),
    \+is_list(B),
    A >= B.

even(A):-
    nonvar(A),
    \+ is_list(A),
    0 is A mod 2.

odd(A):-
    nonvar(A),
    \+ is_list(A),
    1 is A mod 2.


%% partition(Pivot,L1,Left,Right)


add_count(f(A),N-f(A)):-
    length(A,N).
add_count(f(A,B),N-f(A,B)):-
    length(A,N).
remove_k(_-V,V).

sort_examples(L1,L2):-
  maplist(add_count,L1,L3),
  keysort(L3,L4),
  maplist(remove_k,L4,L2).

run:-
    findall(A, pos(A), Pos0),
    findall(A, neg(A), Neg0),
    sort_examples(Pos0, Pos),
    sort_examples(Neg0, Neg),
    learn(Pos, Neg).



%% run:-
%%     findall(A, pos(A), Pos),
%%     findall(A, neg(A), Neg),
%%     learn(Pos, Neg).

test:-
    forall(pos(A),test_pos(A)),
    forall(neg(A),test_neg(A)),
    halt.

target(P/A):-
    pos(Atom),!,
    functor(Atom,P,A).

target_exists:-
    target(P/A),
    current_predicate(P/A).

test_pos(A):-
    target_exists,
    call(A),!,
    writeln('acc,1').
test_pos(_):-
    writeln('acc,0').

test_neg(A):-
    target_exists,
    call(A),!,
    writeln('acc,0').
test_neg(_):-
    writeln('acc,1').

:-end_bg.
:-begin_in_pos.
f([100, 99, 1, 56, 51, 34, 37, 32, 42, 60, 70, 12, 22, 62, 87, 75],16).
f([11, 35, 32, 41, 41, 7, 15, 62, 98, 89, 23, 57, 61, 69, 48, 16, 64, 5, 24, 14, 63, 45, 95, 32, 87, 7, 92, 100, 15, 49, 79, 53, 90, 88, 94, 53, 83, 6],38).
f([96, 42, 3, 48, 79, 78, 15, 96, 2, 10, 97, 29, 25, 33, 54, 7, 57, 71, 71, 29, 39, 63, 37, 79, 13, 87, 42, 55, 52, 93, 39, 70, 92, 62, 44, 34, 68, 44],38).
f([2, 81, 26, 21, 83, 87, 18, 53, 10, 43, 3, 68, 90, 18, 52, 57, 99, 48, 38, 39, 70, 8, 49, 21, 23, 23, 4, 3, 82, 77, 95, 97, 30, 86, 19, 16, 45],37).
f([46, 80, 30, 91, 58, 93, 25, 21, 39, 8, 64, 61, 85, 19, 95, 12, 84, 39, 4, 97, 89, 34, 4, 84, 13, 78, 54, 29, 59],29).
f([16, 10, 67, 52, 86, 82, 41, 77, 73, 70, 67, 63, 2, 33, 5, 100, 37, 33, 87, 40, 59, 97, 78, 12, 82, 46, 30, 17, 51, 70, 51, 44, 1],33).
f([21, 83, 69, 27, 42, 52, 72, 21, 51, 47, 8, 81, 11, 28, 44, 35, 73, 19, 19, 83, 42, 87, 56, 54, 59, 96, 97, 12, 72, 85, 6, 99, 25, 90, 12, 84, 64, 2],38).
f([85, 93, 20, 69, 28, 68, 30, 92, 95, 5, 49, 58, 60, 45, 78, 56, 4, 69, 57, 79, 22, 24, 29, 58, 86, 75, 33, 24, 71, 32, 72, 98, 52, 4, 67, 81, 46, 101, 70, 80, 2, 43, 96, 43, 27, 83, 31, 28, 62, 91],50).
f([20, 66, 85, 33, 48, 92, 6, 19, 92, 29, 21, 26, 70, 70, 38, 90, 80, 100, 40, 47, 22, 1, 79, 24, 58, 7, 97, 60, 3, 43, 55, 74, 56, 42, 15, 74],36).
f([42, 28, 45, 26, 22, 29, 101, 87, 23, 38, 96, 36, 64, 34, 37, 9, 89, 26, 53, 87, 91, 60, 12, 29, 97, 31, 60, 98, 96, 51, 93, 73, 55, 64, 95, 84],36).
:-end_in_pos.
:-begin_in_neg.
f([43, 6, 1, 47, 31, 77, 62, 80, 17, 57, 70, 94, 6, 69, 43, 98, 43, 51, 61, 26, 37, 94, 52, 63, 91, 99, 35, 93, 50, 38, 31, 100, 66, 88, 87, 39, 83, 84, 67, 86, 13, 45, 84, 36],37).
f([9, 87, 55, 67, 7],100).
f([32, 17, 69, 84, 69, 33, 57, 38, 25, 70, 101, 29, 92, 59, 43, 97, 28, 82, 46, 6, 66, 49, 88, 72, 73, 54, 67, 65, 50, 31],50).
f([72, 52, 80, 18, 48, 37, 86, 92, 37, 49, 12, 61, 22, 6, 96, 83, 31, 91, 44, 80, 74, 30, 66, 91, 38],35).
f([21, 23, 97, 74, 80, 60, 19, 61, 52, 70, 44, 39, 43, 83, 94, 19, 99, 96, 99, 70, 83, 63, 100, 83, 44, 71, 59, 29, 65, 82, 70, 94, 22, 60, 8, 30, 65, 29, 6, 81],35).
f([4, 66, 36, 86, 19, 45, 49, 37, 44, 3, 61, 41, 10, 71, 80, 65, 88, 51, 86, 67, 76, 13, 19, 78, 87, 78, 51, 50, 36, 53],73).
f([3, 85, 79, 77, 72, 8, 26, 19, 36, 89, 78],60).
f([94, 94, 83, 49, 56, 44, 30, 26, 31, 98, 100, 72, 59, 54, 12, 31, 72, 75, 44, 49, 5, 14, 76, 47],97).
f([64, 95, 24, 81, 66, 22, 47, 99, 74, 37, 47, 68, 25, 57, 33, 99, 71, 62, 5, 51, 94, 36, 28, 15, 32, 19, 55, 98, 18, 88, 3, 67, 54, 76, 101, 27, 6, 57, 30, 92, 24, 6, 37, 42, 32, 46, 17, 80, 84],66).
f([54, 92, 68, 31, 96, 32, 58, 8, 47, 20, 84, 43, 31, 32, 52, 1, 86, 84, 40, 11, 69, 28],59).
:-end_in_neg.
