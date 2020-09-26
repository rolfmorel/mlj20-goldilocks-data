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
f([67, 49, 77, 81, 98, 48, 26, 62, 76, 87, 5, 51, 79, 28, 92, 101, 80, 77, 63, 56, 60, 49, 30, 73, 47, 60, 28, 84, 75, 82, 33, 44],[67, 67, 67, 67, 49, 77, 81, 98, 48, 26, 62, 76, 87, 5, 51, 79, 28, 92, 101, 80, 77, 63, 56, 60, 49, 30, 73, 47, 60, 28, 84, 75, 82, 33, 44]).
f([92, 79, 27],[92, 92, 92, 92, 79, 27]).
f([14, 30, 30, 7, 86, 76, 90, 30, 98, 3, 77, 94, 7, 2, 86, 95, 42, 20, 84, 78, 86, 61, 66, 84, 27, 59, 57],[14, 14, 14, 14, 30, 30, 7, 86, 76, 90, 30, 98, 3, 77, 94, 7, 2, 86, 95, 42, 20, 84, 78, 86, 61, 66, 84, 27, 59, 57]).
f([58, 53, 18, 14, 42, 72, 50, 93, 25, 68, 35, 66, 42, 101, 83, 8, 7, 38, 70, 16, 68],[58, 58, 58, 58, 53, 18, 14, 42, 72, 50, 93, 25, 68, 35, 66, 42, 101, 83, 8, 7, 38, 70, 16, 68]).
f([95],[95, 95, 95, 95]).
f([29, 46],[29, 29, 29, 29, 46]).
f([18, 26, 35, 99],[18, 18, 18, 18, 26, 35, 99]).
f([101, 70, 11, 3, 35, 89, 95, 10],[101, 101, 101, 101, 70, 11, 3, 35, 89, 95, 10]).
f([30, 98, 83, 51, 65, 38, 29, 25, 82, 63, 63],[30, 30, 30, 30, 98, 83, 51, 65, 38, 29, 25, 82, 63, 63]).
f([63, 60, 63],[63, 63, 63, 63, 60, 63]).
:-end_in_pos.
:-begin_in_neg.
f([95, 16, 55, 75, 79, 42, 60, 70, 9, 58, 29, 29, 51, 4, 39, 16, 19, 86, 32, 19, 76, 65, 41, 33, 83, 25, 59, 71, 40, 7, 94, 59, 38, 93, 39, 63, 8, 84, 58, 27, 89, 42, 8, 89, 72, 37, 13, 61, 82, 74, 43],[95, 16, 55, 75, 79, 42, 60, 70, 9, 58, 29, 29, 51, 4, 39, 16, 19, 86, 32, 19, 76, 65, 41, 33, 83, 25, 59, 71, 40, 7, 94, 59, 38, 93, 39, 63, 8, 84, 58, 27, 89, 42, 8, 89, 72, 37, 13, 61, 82, 74, 43]).
f([11, 12, 15, 62, 30, 4, 29, 73, 37, 15, 7, 13, 35, 91, 3, 64, 88, 84, 48, 80, 6, 52, 26, 23, 46, 44, 84, 91, 40],[11, 12, 15, 62, 30, 4, 29, 73, 37, 15, 7, 13, 35, 91, 3, 64, 88, 84, 48, 80, 6, 52, 26, 23, 46, 44, 84, 91, 40]).
f([32, 79, 90, 101, 41, 39, 7, 53, 39, 10, 10, 63, 78, 30, 12, 14, 52, 79, 97, 22, 99, 19, 76, 13, 53, 44, 91, 17, 11, 84, 88, 54, 86, 88],[32, 79, 90, 101, 41, 39, 7, 53, 39, 10, 10, 63, 78, 30, 12, 14, 52, 79, 97, 22, 99, 19, 76, 13, 53, 44, 91, 17, 11, 84, 88, 54, 86, 88]).
f([38, 59, 16, 76, 95, 15, 47, 93],[38, 59, 16, 76, 95, 15, 47, 93]).
f([83, 77, 77],[83, 77, 77]).
f([55],[55]).
f([42, 24, 94, 51, 7, 4, 15, 85, 57, 42, 82, 83, 6, 98, 20, 12, 10, 74, 88, 36, 93, 12, 2, 71, 9, 87, 28, 6, 18, 54, 88, 57, 50, 37, 73, 77, 64, 66, 55, 13, 16, 94, 86, 85, 83, 15, 3, 31, 68, 57, 48],[42, 24, 94, 51, 7, 4, 15, 85, 57, 42, 82, 83, 6, 98, 20, 12, 10, 74, 88, 36, 93, 12, 2, 71, 9, 87, 28, 6, 18, 54, 88, 57, 50, 37, 73, 77, 64, 66, 55, 13, 16, 94, 86, 85, 83, 15, 3, 31, 68, 57, 48]).
f([99, 34, 70, 78, 94, 20, 91, 21, 58, 98, 33, 26, 23, 57, 82, 33, 61, 20, 78, 35, 58, 101, 7, 46, 52, 88, 81, 84, 36],[99, 34, 70, 78, 94, 20, 91, 21, 58, 98, 33, 26, 23, 57, 82, 33, 61, 20, 78, 35, 58, 101, 7, 46, 52, 88, 81, 84, 36]).
f([85, 98, 94, 87, 49, 51, 100, 28, 23, 7, 71, 86, 22, 48, 82, 65, 85, 60, 92, 67, 67, 51, 30, 1, 95, 100, 52, 97, 20, 24, 87, 35, 87, 57, 46, 51, 95, 8, 65],[85, 98, 94, 87, 49, 51, 100, 28, 23, 7, 71, 86, 22, 48, 82, 65, 85, 60, 92, 67, 67, 51, 30, 1, 95, 100, 52, 97, 20, 24, 87, 35, 87, 57, 46, 51, 95, 8, 65]).
f([73, 51, 87, 20, 24, 11, 30, 25, 70, 84, 45, 49, 46, 57, 83, 11, 48, 41, 40, 99, 33, 74, 66, 36, 23, 73, 100, 3, 68, 46, 84, 51, 50, 77, 8, 81],[73, 51, 87, 20, 24, 11, 30, 25, 70, 84, 45, 49, 46, 57, 83, 11, 48, 41, 40, 99, 33, 74, 66, 36, 23, 73, 100, 3, 68, 46, 84, 51, 50, 77, 8, 81]).
:-end_in_neg.
