:- use_module(library(aleph)).
:- if(current_predicate(use_rendering/1)).
:- use_rendering(prolog).
:- endif.
:- aleph.
:-style_check(-discontiguous).

:- aleph_set(i,6).
:- aleph_set(clauselength,6).
:- aleph_set(nodes,5000).

%% :- modeh(*,f(+list,-element)).
:- modeb(*,head(+list,-element)).
:- modeb(*,tail(+list,-list)).
:- modeb(*,geq(+element,+element)).
:- modeb(*,empty(+list)).
:- modeb(*,even(+element)).
:- modeb(*,odd(+element)).
:- modeb(*,one(+int)).
:- modeb(*,zero(-int)).
:- modeb(*,decrement(+int,-int)).
%% :- modeb(*,increment(+int,-int)).
%% :- modeb(*,element(+list,-element)).
%% :- modeb(*,cons(+element,+list,-list)).
:- modeh(*,f(+list,-list)).
:- modeb(*,cons(+element,+list,-list)).

:- determination(f/2,head/2).
:- determination(f/2,tail/2).
:- determination(f/2,geq/2).
:- determination(f/2,empty/1).
:- determination(f/2,even/1).
:- determination(f/2,odd/1).
:- determination(f/2,one/1).
:- determination(f/2,zero/1).
:- determination(f/2,decrement/2).
:- determination(f/2,increment/2).
:- determination(f/2,element/2).
:- determination(f/2,cons/3).
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
f([10, 85, 90, 101, 22, 84, 7, 86, 15, 95, 94, 91, 98, 32, 78, 20],[10, 85, 90, 101, 22, 84, 7, 86, 15, 95, 94, 91, 98, 32, 78]).
f([91, 56, 18, 51, 17, 42, 32, 89, 53, 97, 19, 85, 60, 87, 90, 67, 85, 47, 99, 57, 36, 81, 44, 54, 8, 87, 44, 28, 75, 33],[91, 56, 18, 51, 17, 42, 32, 89, 53, 97, 19, 85, 60, 87, 90, 67, 85, 47, 99, 57, 36, 81, 44, 54, 8, 87, 44, 28, 75]).
f([26, 73, 34, 3, 64, 101, 14, 47, 94, 87, 23, 75, 21, 19, 43, 58, 2, 32, 16, 90, 52, 82, 67, 2, 1, 50, 17, 66, 31, 11, 71, 97, 13, 20, 66, 61, 48, 51, 92, 70, 69, 68, 84, 58, 57, 41, 12, 95, 26, 43],[26, 73, 34, 3, 64, 101, 14, 47, 94, 87, 23, 75, 21, 19, 43, 58, 2, 32, 16, 90, 52, 82, 67, 2, 1, 50, 17, 66, 31, 11, 71, 97, 13, 20, 66, 61, 48, 51, 92, 70, 69, 68, 84, 58, 57, 41, 12, 95, 26]).
f([53, 10, 40, 63, 37, 71, 15, 10, 1, 99, 28, 89, 49, 88, 56, 18, 37, 78],[53, 10, 40, 63, 37, 71, 15, 10, 1, 99, 28, 89, 49, 88, 56, 18, 37]).
f([51, 74, 5, 47, 69, 9, 23, 11, 99, 85, 84, 98, 2, 36, 90, 12, 94, 37, 70, 48, 82],[51, 74, 5, 47, 69, 9, 23, 11, 99, 85, 84, 98, 2, 36, 90, 12, 94, 37, 70, 48]).
f([61, 18, 36, 2, 27, 23, 81, 33, 86, 2, 34, 2, 19, 100, 48, 50, 39, 4, 80, 35, 19, 12, 96, 100, 14, 97, 61, 85, 18, 30, 8, 37, 80, 4, 27, 26, 101, 83, 56, 20, 15, 8, 32, 66, 76, 43, 3, 32],[61, 18, 36, 2, 27, 23, 81, 33, 86, 2, 34, 2, 19, 100, 48, 50, 39, 4, 80, 35, 19, 12, 96, 100, 14, 97, 61, 85, 18, 30, 8, 37, 80, 4, 27, 26, 101, 83, 56, 20, 15, 8, 32, 66, 76, 43, 3]).
f([45, 33, 8, 9, 18, 76, 20, 76, 47, 98, 95, 7, 53],[45, 33, 8, 9, 18, 76, 20, 76, 47, 98, 95, 7]).
f([13, 14, 36],[13, 14]).
f([78, 37, 95, 53, 60, 75, 39, 92, 48, 49, 97, 3, 9, 71, 36, 28, 76, 32, 98, 92, 81, 101, 30, 101, 10, 46, 18, 73, 14, 66, 31, 11, 35, 19, 6, 89, 46, 1, 95, 8, 60, 69, 56],[78, 37, 95, 53, 60, 75, 39, 92, 48, 49, 97, 3, 9, 71, 36, 28, 76, 32, 98, 92, 81, 101, 30, 101, 10, 46, 18, 73, 14, 66, 31, 11, 35, 19, 6, 89, 46, 1, 95, 8, 60, 69]).
f([60, 44, 12, 88, 49, 21, 14, 35, 9, 70, 10, 3, 94, 42, 45, 77, 51, 84, 55, 59, 89, 29, 21, 82, 2, 14, 14, 27, 8, 81, 76, 40, 83, 101, 51, 45, 16, 1, 76, 3, 21, 22],[60, 44, 12, 88, 49, 21, 14, 35, 9, 70, 10, 3, 94, 42, 45, 77, 51, 84, 55, 59, 89, 29, 21, 82, 2, 14, 14, 27, 8, 81, 76, 40, 83, 101, 51, 45, 16, 1, 76, 3, 21]).
:-end_in_pos.
:-begin_in_neg.
f([62, 74, 22, 50, 1, 43, 22, 2, 89, 5, 72, 74, 42, 61, 51, 86, 97, 101, 91, 81, 41, 27, 72, 91, 30, 40, 3, 29, 27, 83, 88, 99],[62, 74, 22, 50, 1, 43, 22, 2, 89, 5, 72, 74, 42, 61, 51, 86, 97, 101, 91, 81, 41, 27, 72, 91, 30, 40, 3, 29, 27, 83, 88, 99]).
f([29, 66, 17, 34, 74, 64, 35, 30, 21, 19, 28],[29, 66, 17, 34, 74, 64, 35, 30, 21, 19, 28]).
f([30, 101, 100, 34, 23, 87, 56, 61, 57, 49, 79, 48, 45, 43, 50, 99, 1, 44, 74, 20, 99, 98, 66, 98, 21, 84, 93, 98],[30, 101, 100, 34, 23, 87, 56, 61, 57, 49, 79, 48, 45, 43, 50, 99, 1, 44, 74, 20, 99, 98, 66, 98, 21, 84, 93, 98]).
f([4, 24, 82, 46, 23, 22, 12, 3, 2, 52, 66, 93],[4, 24, 82, 46, 23, 22, 12, 3, 2, 52, 66, 93]).
f([23, 61, 56, 50, 58, 51],[23, 61, 56, 50, 58, 51]).
f([32, 8, 3, 29, 45, 18, 42, 78, 61, 41, 32, 62, 63, 23, 52, 72, 70, 50, 11, 27, 27, 14, 66, 88, 83, 17, 12, 77, 79, 27],[32, 8, 3, 29, 45, 18, 42, 78, 61, 41, 32, 62, 63, 23, 52, 72, 70, 50, 11, 27, 27, 14, 66, 88, 83, 17, 12, 77, 79, 27]).
f([61, 94, 29, 74, 97, 33, 14, 73, 73, 91, 90, 88, 90, 37, 51, 59, 94, 4, 36, 1, 45, 35],[61, 94, 29, 74, 97, 33, 14, 73, 73, 91, 90, 88, 90, 37, 51, 59, 94, 4, 36, 1, 45, 35]).
f([14, 38, 55, 56, 47, 50, 42, 53, 87],[14, 38, 55, 56, 47, 50, 42, 53, 87]).
f([2, 18, 59, 30, 82, 32, 42, 67, 62, 39, 59, 70, 85, 96, 54, 68, 54, 69, 8, 97],[2, 18, 59, 30, 82, 32, 42, 67, 62, 39, 59, 70, 85, 96, 54, 68, 54, 69, 8, 97]).
f([85, 45, 76, 43, 66, 18, 38, 62, 24, 65, 69, 96, 71, 33, 28, 24, 56, 47, 54, 71, 70, 20, 81, 59, 79, 97, 94, 8, 15, 43, 38, 91, 17, 97, 81],[85, 45, 76, 43, 66, 18, 38, 62, 24, 65, 69, 96, 71, 33, 28, 24, 56, 47, 54, 71, 70, 20, 81, 59, 79, 97, 94, 8, 15, 43, 38, 91, 17, 97, 81]).
:-end_in_neg.
