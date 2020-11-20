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
:- modeb(*,one(+element)).
:- modeb(*,zero(-element)).
:- modeb(*,decrement(+element,-element)).
%% :- modeb(*,increment(+element,-element)). % PROBLEM SPECIFIC
%% :- modeb(*,element(+list,-element)). % PROBLEM SPECIFIC
%% :- modeb(*,cons(+element,+list,-list)). % PROBLEM SPECIFIC
:- modeh(*,f(+list,-list)).
:- modeb(*,f(+list,-list)).
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
:- determination(f/2,f/2).
%% :- determination(f/2,increment/2).
%% :- determination(f/2,element/2).
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
f([95, 11, 95, 82, 87, 51, 91, 4, 57, 32, 31, 1, 65, 81, 47, 36],[95, 11, 95, 82, 87, 51, 91, 4, 57, 32, 31, 1, 65, 81, 47]).
f([21, 20, 85, 44, 48, 96, 99, 68, 55, 47, 99, 45, 2, 1, 57, 17, 5, 23, 5],[21, 20, 85, 44, 48, 96, 99, 68, 55, 47, 99, 45, 2, 1, 57, 17, 5, 23]).
f([52, 70, 3, 27, 38, 56, 98, 57, 97, 10, 68, 45, 51, 2, 89, 35, 24, 61, 93, 8, 20, 39, 23, 2, 89, 79, 65, 31, 67, 74, 99, 98, 80, 99, 63, 2, 5, 67, 76, 8, 86],[52, 70, 3, 27, 38, 56, 98, 57, 97, 10, 68, 45, 51, 2, 89, 35, 24, 61, 93, 8, 20, 39, 23, 2, 89, 79, 65, 31, 67, 74, 99, 98, 80, 99, 63, 2, 5, 67, 76, 8]).
f([47, 42, 13, 35, 40, 86, 4, 50, 69, 89, 25, 84, 82, 10, 48, 60, 87, 23, 21, 70, 45, 71, 16, 38, 76, 67, 7, 8, 87, 33, 13, 71, 66, 72, 1, 47],[47, 42, 13, 35, 40, 86, 4, 50, 69, 89, 25, 84, 82, 10, 48, 60, 87, 23, 21, 70, 45, 71, 16, 38, 76, 67, 7, 8, 87, 33, 13, 71, 66, 72, 1]).
f([29, 33, 49, 93, 77, 34, 50, 42, 39, 80, 15, 95, 1, 42, 43, 35, 7, 93, 80, 67, 46, 29, 26, 92, 78, 7, 89, 92, 29, 33, 47, 80, 13, 66, 65, 62, 71, 9, 32, 49, 24, 57, 39, 7, 78, 37],[29, 33, 49, 93, 77, 34, 50, 42, 39, 80, 15, 95, 1, 42, 43, 35, 7, 93, 80, 67, 46, 29, 26, 92, 78, 7, 89, 92, 29, 33, 47, 80, 13, 66, 65, 62, 71, 9, 32, 49, 24, 57, 39, 7, 78]).
f([27, 53, 82, 33, 41, 71, 1, 53, 40, 88, 73, 10, 48, 79, 21, 49, 73, 60, 75, 16, 20, 11, 34, 88, 27, 61, 46, 43, 16, 56, 3, 85, 19, 95, 86, 25, 48],[27, 53, 82, 33, 41, 71, 1, 53, 40, 88, 73, 10, 48, 79, 21, 49, 73, 60, 75, 16, 20, 11, 34, 88, 27, 61, 46, 43, 16, 56, 3, 85, 19, 95, 86, 25]).
f([63, 22, 72, 72, 77, 95, 22, 75, 91, 21, 18, 3, 48, 89, 45, 85, 50, 7, 11, 40, 36, 6, 51],[63, 22, 72, 72, 77, 95, 22, 75, 91, 21, 18, 3, 48, 89, 45, 85, 50, 7, 11, 40, 36, 6]).
f([29, 26, 33, 65, 60, 61, 13, 40, 7, 85, 39, 39, 5, 94, 98, 88, 10, 21, 57, 74, 8, 52, 16, 83, 43, 87, 35, 61, 75, 84, 9, 9, 4, 71, 85, 17, 95, 8],[29, 26, 33, 65, 60, 61, 13, 40, 7, 85, 39, 39, 5, 94, 98, 88, 10, 21, 57, 74, 8, 52, 16, 83, 43, 87, 35, 61, 75, 84, 9, 9, 4, 71, 85, 17, 95]).
f([51, 2, 82, 99, 65, 17, 46, 9, 95, 32, 60, 73, 92, 101, 24, 42, 96, 47, 47, 90, 14, 93, 75, 9, 81, 59, 63, 22, 47, 39, 31, 74, 96, 101],[51, 2, 82, 99, 65, 17, 46, 9, 95, 32, 60, 73, 92, 101, 24, 42, 96, 47, 47, 90, 14, 93, 75, 9, 81, 59, 63, 22, 47, 39, 31, 74, 96]).
f([95, 39, 69],[95, 39]).
:-end_in_pos.
:-begin_in_neg.
f([69, 18, 32, 40, 89, 77, 59, 18, 101, 23, 51, 82, 24, 83, 72, 18, 43, 45, 90, 93, 47, 79, 24, 67, 94, 86, 15, 30, 15, 99, 83, 79, 55, 61, 67, 42, 69, 9, 1, 19, 40, 9, 99, 95, 36, 82, 89, 38, 89, 64, 22],[69, 18, 32, 40, 89, 77, 59, 18, 101, 23, 51, 82, 24, 83, 72, 18, 43, 45, 90, 93, 47, 79, 24, 67, 94, 86, 15, 30, 15, 99, 83, 79, 55, 61, 67, 42, 69, 9, 1, 19, 40, 9, 99, 95, 36, 82, 89, 38, 89, 64, 22]).
f([75, 4, 1, 87, 74, 82, 24, 35, 61, 1, 5, 24, 95, 69, 81, 88, 53, 46, 43, 26, 65, 15, 51, 62, 36, 69, 68, 41, 55, 10, 33, 100],[75, 4, 1, 87, 74, 82, 24, 35, 61, 1, 5, 24, 95, 69, 81, 88, 53, 46, 43, 26, 65, 15, 51, 62, 36, 69, 68, 41, 55, 10, 33, 100]).
f([68, 28, 59, 89, 34, 31, 82, 37, 29, 35, 19, 58, 99, 67, 92, 35, 48, 46, 82, 32, 80, 6, 85],[68, 28, 59, 89, 34, 31, 82, 37, 29, 35, 19, 58, 99, 67, 92, 35, 48, 46, 82, 32, 80, 6, 85]).
f([96, 64, 67, 81, 6, 68, 44, 88, 2, 88, 92, 85, 6, 33, 65, 2, 45, 70, 95, 46],[96, 64, 67, 81, 6, 68, 44, 88, 2, 88, 92, 85, 6, 33, 65, 2, 45, 70, 95, 46]).
f([22, 101, 76, 1, 48, 73, 52, 86, 80, 2, 80, 22, 2, 48, 39, 99, 85, 3, 89, 53, 57, 88, 45, 87, 41, 2, 17, 18, 93, 52, 16, 71, 53, 43, 12, 24, 92, 60, 96],[22, 101, 76, 1, 48, 73, 52, 86, 80, 2, 80, 22, 2, 48, 39, 99, 85, 3, 89, 53, 57, 88, 45, 87, 41, 2, 17, 18, 93, 52, 16, 71, 53, 43, 12, 24, 92, 60, 96]).
f([37, 11, 54, 87, 28, 40, 56, 93, 40, 50, 19, 75, 55, 89, 31, 68, 43, 8, 33, 87, 10, 7, 48, 89, 76, 58, 63, 92, 86, 55, 9, 82, 53, 3, 50],[37, 11, 54, 87, 28, 40, 56, 93, 40, 50, 19, 75, 55, 89, 31, 68, 43, 8, 33, 87, 10, 7, 48, 89, 76, 58, 63, 92, 86, 55, 9, 82, 53, 3, 50]).
f([35, 66, 42, 98, 15, 62, 9, 23, 18, 7, 88, 18, 33, 81],[35, 66, 42, 98, 15, 62, 9, 23, 18, 7, 88, 18, 33, 81]).
f([55, 48, 77, 13],[55, 48, 77, 13]).
f([72, 90, 95, 60, 52, 57],[72, 90, 95, 60, 52, 57]).
f([78, 86, 80, 52, 39, 39, 89, 13, 92, 33, 55, 69, 9, 22, 48, 4, 30, 76, 81, 84, 12, 21],[78, 86, 80, 52, 39, 39, 89, 13, 92, 33, 55, 69, 9, 22, 48, 4, 30, 76, 81, 84, 12, 21]).
:-end_in_neg.
