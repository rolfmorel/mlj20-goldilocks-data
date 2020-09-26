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
f([14, 64, 71, 65, 36, 35, 20, 30, 49, 44, 85, 81, 89, 31, 10, 77, 17, 63, 51, 63, 51, 9, 7, 32, 3, 62, 76, 54, 74, 53, 49, 47, 92, 27, 78, 92, 54, 70, 45, 51, 74, 17],[14, 64, 71, 65, 36, 35, 20, 30, 49, 44, 85, 81, 89, 31, 10, 77, 17, 63, 51, 63, 51, 9, 7, 32, 3, 62, 76, 54, 74, 53, 49, 47, 92, 27, 78, 92, 54, 70, 45, 51, 74]).
f([30, 41, 99, 70, 26, 7, 27, 97, 72, 67, 24, 33, 26, 46, 37, 40, 46, 82, 39, 96, 11, 40, 21, 54, 6, 9, 40, 59, 51, 19, 32, 15, 28, 96, 86, 59, 35, 5, 29, 98, 60, 79],[30, 41, 99, 70, 26, 7, 27, 97, 72, 67, 24, 33, 26, 46, 37, 40, 46, 82, 39, 96, 11, 40, 21, 54, 6, 9, 40, 59, 51, 19, 32, 15, 28, 96, 86, 59, 35, 5, 29, 98, 60]).
f([35, 57, 84, 90, 35, 92],[35, 57, 84, 90, 35]).
f([8, 87, 82, 11, 12, 30, 5, 16, 19, 10, 15, 80, 14, 56, 32, 66, 19, 26, 54, 92, 82, 76, 100, 42, 100, 22, 80],[8, 87, 82, 11, 12, 30, 5, 16, 19, 10, 15, 80, 14, 56, 32, 66, 19, 26, 54, 92, 82, 76, 100, 42, 100, 22]).
f([40, 20, 26, 30, 29, 14, 82, 36, 61, 38, 72, 35, 43, 87, 63, 38, 82, 24, 68, 98, 28, 12, 17, 78],[40, 20, 26, 30, 29, 14, 82, 36, 61, 38, 72, 35, 43, 87, 63, 38, 82, 24, 68, 98, 28, 12, 17]).
f([1, 19, 75, 73, 36, 6, 92, 24, 63, 15, 36, 98, 7],[1, 19, 75, 73, 36, 6, 92, 24, 63, 15, 36, 98]).
f([11, 6, 25, 14, 6, 39, 47, 79, 15, 65, 55, 85, 22, 4, 59, 57, 13, 53, 90, 4, 82, 73, 83, 57, 45, 11, 1, 6, 72, 86, 77, 76, 54, 34, 94, 65, 20, 73, 66, 56, 51, 64, 14, 89, 100, 18, 32],[11, 6, 25, 14, 6, 39, 47, 79, 15, 65, 55, 85, 22, 4, 59, 57, 13, 53, 90, 4, 82, 73, 83, 57, 45, 11, 1, 6, 72, 86, 77, 76, 54, 34, 94, 65, 20, 73, 66, 56, 51, 64, 14, 89, 100, 18]).
f([25, 12, 22, 101, 76, 28, 24, 79, 55, 32, 3, 75, 87, 77, 29, 9, 80, 62, 58, 93, 26, 85, 68, 35, 83, 4, 100, 71, 26, 68, 13, 34, 87, 88],[25, 12, 22, 101, 76, 28, 24, 79, 55, 32, 3, 75, 87, 77, 29, 9, 80, 62, 58, 93, 26, 85, 68, 35, 83, 4, 100, 71, 26, 68, 13, 34, 87]).
f([11, 82, 79, 29, 25, 19, 5, 49, 1, 4, 82, 92, 19, 49, 58, 13, 74, 57, 27, 72, 41, 62, 98, 67, 45, 33, 32, 54, 71, 44, 64, 1, 33, 100],[11, 82, 79, 29, 25, 19, 5, 49, 1, 4, 82, 92, 19, 49, 58, 13, 74, 57, 27, 72, 41, 62, 98, 67, 45, 33, 32, 54, 71, 44, 64, 1, 33]).
f([76, 96, 60, 19, 32, 30, 33, 66, 2, 92, 79, 60, 66, 93, 39, 36, 18, 72, 62, 15, 71, 55, 99, 73, 93],[76, 96, 60, 19, 32, 30, 33, 66, 2, 92, 79, 60, 66, 93, 39, 36, 18, 72, 62, 15, 71, 55, 99, 73]).
:-end_in_pos.
:-begin_in_neg.
f([2, 63, 20, 30, 19, 23, 81, 43, 17, 79, 87, 59, 75, 10, 87],[2, 63, 20, 30, 19, 23, 81, 43, 17, 79, 87, 59, 75, 10, 87]).
f([90, 83, 81, 87, 19, 9],[90, 83, 81, 87, 19, 9]).
f([89, 96, 88, 98, 31, 9, 87, 29, 23, 62, 25, 83, 71, 49, 16, 13, 59, 97, 22, 94, 57, 61, 81, 22],[89, 96, 88, 98, 31, 9, 87, 29, 23, 62, 25, 83, 71, 49, 16, 13, 59, 97, 22, 94, 57, 61, 81, 22]).
f([26, 82, 10, 57, 1, 53, 63, 87, 18, 64, 20, 43, 26, 98, 12, 16, 21, 91, 74, 29, 18, 94, 4, 46, 59, 95, 81, 88, 32, 85, 42],[26, 82, 10, 57, 1, 53, 63, 87, 18, 64, 20, 43, 26, 98, 12, 16, 21, 91, 74, 29, 18, 94, 4, 46, 59, 95, 81, 88, 32, 85, 42]).
f([29, 11, 49, 78, 55, 21, 24, 54, 78, 54, 64, 71, 8, 76, 79, 70, 77, 71, 93],[29, 11, 49, 78, 55, 21, 24, 54, 78, 54, 64, 71, 8, 76, 79, 70, 77, 71, 93]).
f([67, 71, 88, 70, 31, 56, 61, 54, 65, 19, 61, 28, 19, 55, 62, 16, 60, 34, 76, 59, 39, 87, 33, 43, 75, 96, 69, 15, 59, 14, 11, 39, 60, 83, 52, 79, 56, 1, 37, 99, 68, 7, 48, 10, 57, 73, 71],[67, 71, 88, 70, 31, 56, 61, 54, 65, 19, 61, 28, 19, 55, 62, 16, 60, 34, 76, 59, 39, 87, 33, 43, 75, 96, 69, 15, 59, 14, 11, 39, 60, 83, 52, 79, 56, 1, 37, 99, 68, 7, 48, 10, 57, 73, 71]).
f([94, 67, 33, 40, 91, 94],[94, 67, 33, 40, 91, 94]).
f([84, 86, 11, 49, 71, 13, 3, 76, 38, 39, 67, 85, 90, 17, 20, 65, 59, 2, 11, 15, 99, 101, 13, 38, 96, 13, 40, 56, 30, 33, 79, 50, 31, 2, 62, 73, 57, 73, 23],[84, 86, 11, 49, 71, 13, 3, 76, 38, 39, 67, 85, 90, 17, 20, 65, 59, 2, 11, 15, 99, 101, 13, 38, 96, 13, 40, 56, 30, 33, 79, 50, 31, 2, 62, 73, 57, 73, 23]).
f([98, 78, 3, 50],[98, 78, 3, 50]).
f([8, 51, 45, 98, 41, 97, 66, 22, 55, 48, 75, 61, 66, 7, 8, 31, 75, 87, 57, 65, 93, 89, 3, 69, 33, 101, 36, 13, 68, 58, 88, 53, 64, 1, 54, 99, 48, 6, 15, 82, 24, 82, 5, 33, 67, 2, 96, 93, 17, 55],[8, 51, 45, 98, 41, 97, 66, 22, 55, 48, 75, 61, 66, 7, 8, 31, 75, 87, 57, 65, 93, 89, 3, 69, 33, 101, 36, 13, 68, 58, 88, 53, 64, 1, 54, 99, 48, 6, 15, 82, 24, 82, 5, 33, 67, 2, 96, 93, 17, 55]).
:-end_in_neg.
