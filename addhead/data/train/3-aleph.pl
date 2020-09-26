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
f([23, 20, 11, 4, 51, 36, 38, 5, 67, 10, 33, 47, 85, 12],[23, 23, 23, 23, 20, 11, 4, 51, 36, 38, 5, 67, 10, 33, 47, 85, 12]).
f([90, 50, 71, 51, 94, 61, 96, 20, 80, 65, 30, 87, 99, 78, 25, 49, 72, 9, 86, 31, 19, 47, 47, 77, 64, 58, 47, 40, 84, 49, 12, 41, 28, 85, 49],[90, 90, 90, 90, 50, 71, 51, 94, 61, 96, 20, 80, 65, 30, 87, 99, 78, 25, 49, 72, 9, 86, 31, 19, 47, 47, 77, 64, 58, 47, 40, 84, 49, 12, 41, 28, 85, 49]).
f([50, 62, 7, 8, 62, 5, 19, 82, 8, 52, 92, 47, 50, 73, 95, 88, 72, 35, 6],[50, 50, 50, 50, 62, 7, 8, 62, 5, 19, 82, 8, 52, 92, 47, 50, 73, 95, 88, 72, 35, 6]).
f([26, 84, 79, 101, 29, 64, 70, 5, 75, 89, 5, 16, 68, 60, 60, 96],[26, 26, 26, 26, 84, 79, 101, 29, 64, 70, 5, 75, 89, 5, 16, 68, 60, 60, 96]).
f([69, 3, 24, 4, 39, 73, 1],[69, 69, 69, 69, 3, 24, 4, 39, 73, 1]).
f([47, 83, 53, 70, 91, 32, 88, 67, 20],[47, 47, 47, 47, 83, 53, 70, 91, 32, 88, 67, 20]).
f([6, 70, 37, 19, 52, 91, 80, 1, 88, 88, 42, 60, 98, 67, 19],[6, 6, 6, 6, 70, 37, 19, 52, 91, 80, 1, 88, 88, 42, 60, 98, 67, 19]).
f([101, 4, 6, 69, 14, 2, 8, 65, 31, 19, 69, 66, 23, 79, 60, 101, 68, 33, 36, 73, 71, 33, 101, 71, 33, 53, 58],[101, 101, 101, 101, 4, 6, 69, 14, 2, 8, 65, 31, 19, 69, 66, 23, 79, 60, 101, 68, 33, 36, 73, 71, 33, 101, 71, 33, 53, 58]).
f([84, 2, 53, 67, 35, 70, 4, 101],[84, 84, 84, 84, 2, 53, 67, 35, 70, 4, 101]).
f([99, 2, 12, 87, 51, 7, 55, 96, 54, 68, 98, 48, 52, 18, 20, 7, 57, 19, 84, 97, 101, 44, 88, 86, 71, 46],[99, 99, 99, 99, 2, 12, 87, 51, 7, 55, 96, 54, 68, 98, 48, 52, 18, 20, 7, 57, 19, 84, 97, 101, 44, 88, 86, 71, 46]).
:-end_in_pos.
:-begin_in_neg.
f([28, 48, 58, 67, 77, 49, 70, 72, 55, 76, 73, 69, 21, 63, 88, 32, 101, 23, 48, 66, 43, 40, 68, 65, 31, 80, 56, 73, 10, 16, 68, 39, 38, 1],[28, 48, 58, 67, 77, 49, 70, 72, 55, 76, 73, 69, 21, 63, 88, 32, 101, 23, 48, 66, 43, 40, 68, 65, 31, 80, 56, 73, 10, 16, 68, 39, 38, 1]).
f([1, 12, 89, 53, 72, 12, 38, 43, 82, 5, 63, 9, 94, 75, 1, 90, 81, 98, 41, 72, 55, 22, 84, 36, 96, 13, 24, 33, 3, 11, 58, 46, 95, 37, 14, 84, 16, 32, 54, 101, 97, 38],[1, 12, 89, 53, 72, 12, 38, 43, 82, 5, 63, 9, 94, 75, 1, 90, 81, 98, 41, 72, 55, 22, 84, 36, 96, 13, 24, 33, 3, 11, 58, 46, 95, 37, 14, 84, 16, 32, 54, 101, 97, 38]).
f([73, 101, 44, 18, 55, 44, 42, 58, 88, 93, 61, 97, 23, 6, 87, 30, 91, 75, 23, 78],[73, 101, 44, 18, 55, 44, 42, 58, 88, 93, 61, 97, 23, 6, 87, 30, 91, 75, 23, 78]).
f([80, 96, 43, 36, 69, 85, 100, 24, 86, 75, 13, 92, 58, 28, 24, 70, 42, 15, 42, 29],[80, 96, 43, 36, 69, 85, 100, 24, 86, 75, 13, 92, 58, 28, 24, 70, 42, 15, 42, 29]).
f([2, 84, 29, 5, 2, 58, 49, 68, 12, 77, 65, 88, 62, 72, 12],[2, 84, 29, 5, 2, 58, 49, 68, 12, 77, 65, 88, 62, 72, 12]).
f([24, 78, 62, 35, 97, 84, 80, 78, 59, 1, 61, 22, 18, 45, 17, 19, 42, 36, 78, 85, 44, 61, 76, 73, 20, 60, 5],[24, 78, 62, 35, 97, 84, 80, 78, 59, 1, 61, 22, 18, 45, 17, 19, 42, 36, 78, 85, 44, 61, 76, 73, 20, 60, 5]).
f([2, 78, 76, 99, 76, 41, 57, 3, 79, 2, 89, 63, 11, 80, 80, 27, 53, 91, 92, 101, 98, 97, 25, 70, 29, 9, 17, 54, 27, 56, 32, 34, 63, 42, 56, 45, 3, 32, 50, 22, 75, 94, 53, 51, 24, 44, 53, 40, 16],[2, 78, 76, 99, 76, 41, 57, 3, 79, 2, 89, 63, 11, 80, 80, 27, 53, 91, 92, 101, 98, 97, 25, 70, 29, 9, 17, 54, 27, 56, 32, 34, 63, 42, 56, 45, 3, 32, 50, 22, 75, 94, 53, 51, 24, 44, 53, 40, 16]).
f([60, 43, 77, 53, 67, 30, 83, 38, 10, 1, 43, 101, 15, 64, 60, 14, 91, 24, 90, 27, 10, 3, 44, 34, 32, 64, 1, 36, 8, 99, 42, 15, 10, 21, 64, 97, 15, 30, 69, 2, 58, 64, 54, 95, 65, 89, 49, 5, 4, 75],[60, 43, 77, 53, 67, 30, 83, 38, 10, 1, 43, 101, 15, 64, 60, 14, 91, 24, 90, 27, 10, 3, 44, 34, 32, 64, 1, 36, 8, 99, 42, 15, 10, 21, 64, 97, 15, 30, 69, 2, 58, 64, 54, 95, 65, 89, 49, 5, 4, 75]).
f([62, 42, 35, 60, 10, 9, 20, 22, 10],[62, 42, 35, 60, 10, 9, 20, 22, 10]).
f([100, 92, 95, 18, 32, 93, 62, 26, 34, 16, 32, 25, 57, 93, 98, 21, 5, 101, 101, 17, 17, 66, 19, 2, 45, 6, 89, 78, 85, 33, 26, 22, 54, 59, 33, 69, 43, 60, 87, 67, 41, 24, 101, 42, 58, 65, 66, 34],[100, 92, 95, 18, 32, 93, 62, 26, 34, 16, 32, 25, 57, 93, 98, 21, 5, 101, 101, 17, 17, 66, 19, 2, 45, 6, 89, 78, 85, 33, 26, 22, 54, 59, 33, 69, 43, 60, 87, 67, 41, 24, 101, 42, 58, 65, 66, 34]).
:-end_in_neg.
