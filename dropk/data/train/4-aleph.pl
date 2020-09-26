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
:- modeh(*,f(+list,+int,-list)).
:- modeb(*,f(+list,+int,-list)).

:- determination(f/3,head/2).
:- determination(f/3,tail/2).
:- determination(f/3,geq/2).
:- determination(f/3,empty/1).
:- determination(f/3,even/1).
:- determination(f/3,odd/1).
:- determination(f/3,one/1).
:- determination(f/3,zero/1).
:- determination(f/3,decrement/2).
:- determination(f/3,f/3).
%% :- determination(f/3,increment/2).
%% :- determination(f/3,element/2).
%% :- determination(f/3,cons/3).
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
f([27, 82, 95, 84, 24, 27, 43, 55, 35, 97, 99, 21, 25, 95, 72, 9, 36, 32, 30, 32, 63, 64, 75, 68, 38, 22, 80, 81],14,[72, 9, 36, 32, 30, 32, 63, 64, 75, 68, 38, 22, 80, 81]).
f([4, 62, 49, 78, 30, 47, 63, 59, 24, 68, 68, 87, 77, 93],2,[49, 78, 30, 47, 63, 59, 24, 68, 68, 87, 77, 93]).
f([81, 55, 32, 72, 80, 60, 31, 41, 94, 83, 55, 13, 55, 12, 9, 16, 76, 30, 86, 37, 8, 75, 98, 35, 65, 43, 36, 96, 70, 3, 94, 33, 19, 8, 56, 86, 85, 10, 57],20,[8, 75, 98, 35, 65, 43, 36, 96, 70, 3, 94, 33, 19, 8, 56, 86, 85, 10, 57]).
f([90, 47, 20, 79, 43, 97, 46, 89, 75, 66, 47, 62, 24, 47, 101, 54, 59, 35, 5, 27, 48, 38, 49],7,[89, 75, 66, 47, 62, 24, 47, 101, 54, 59, 35, 5, 27, 48, 38, 49]).
f([60, 85, 72, 1, 82, 31, 54, 92, 53, 25, 77, 66, 87, 64, 24, 83, 49, 24, 57, 36, 57, 55],5,[31, 54, 92, 53, 25, 77, 66, 87, 64, 24, 83, 49, 24, 57, 36, 57, 55]).
f([21, 21, 73, 23],1,[21, 73, 23]).
f([10, 71, 32, 84, 96, 87, 47, 5, 95, 41, 20, 33],8,[95, 41, 20, 33]).
f([83, 52, 20, 45, 35, 37, 43, 27, 90, 67, 46, 62, 62, 55, 36, 31, 93, 18, 94, 90, 97, 65, 40, 71, 16, 99, 31, 23, 26, 1, 55, 66, 8, 90, 84, 64, 16, 31, 48, 61, 41, 96, 64, 64, 18, 85, 8, 5, 36],47,[5, 36]).
f([28, 33, 96, 33, 19, 5, 81, 5],5,[5, 81, 5]).
f([21, 82, 32, 26, 92, 94, 63, 12, 25, 46, 20, 44, 61, 57, 81, 11, 94, 94, 17, 44, 35, 41, 20, 25, 68, 59, 101, 21, 94, 67, 55, 13, 21, 98, 31, 42, 4, 93, 60, 89, 69, 33, 56, 47, 23],12,[61, 57, 81, 11, 94, 94, 17, 44, 35, 41, 20, 25, 68, 59, 101, 21, 94, 67, 55, 13, 21, 98, 31, 42, 4, 93, 60, 89, 69, 33, 56, 47, 23]).
:-end_in_pos.
:-begin_in_neg.
f([71, 12, 39, 42, 24, 53, 1, 28, 83, 38, 75, 88, 48, 71, 80, 67, 40, 32, 50, 28, 71, 28, 64, 20, 11, 17, 62, 69, 88, 85],29,[28, 64, 20, 11, 17, 62, 69, 88, 85]).
f([66, 43, 90, 95, 39, 33, 78, 59, 65, 3, 48, 20, 15],10,[39, 33, 78, 59, 65, 3, 48, 20, 15]).
f([37, 83, 68, 75, 5, 78, 33, 59, 74, 30, 4, 71, 14, 58, 8, 53, 11, 89, 10, 95, 74, 25, 59, 101, 65, 50, 88, 69, 19, 20, 49, 96, 82, 62, 81, 32, 88, 62, 101, 14, 80, 13, 10, 11, 31, 65, 53, 65],6,[19, 20, 49, 96, 82, 62, 81, 32, 88, 62, 101, 14, 80, 13, 10, 11, 31, 65, 53, 65]).
f([44, 36, 70, 64, 29, 34, 31, 1, 94, 36, 73, 67, 1, 82, 7, 11, 98, 11, 57, 1, 89, 79, 73, 90, 6, 85, 37, 71, 10, 7, 40, 24, 29],7,[37, 71, 10, 7, 40, 24, 29]).
f([72, 57, 19, 57, 3, 48, 53, 77, 75, 50, 37, 90, 22, 31, 36, 13, 76, 11, 1, 7],1,[19, 57, 3, 48, 53, 77, 75, 50, 37, 90, 22, 31, 36, 13, 76, 11, 1, 7]).
f([46, 50, 93, 90, 64, 49, 39, 91, 72, 3, 67, 60, 80],2,[50, 93, 90, 64, 49, 39, 91, 72, 3, 67, 60, 80]).
f([54, 67, 89, 60, 3, 13, 101, 65, 64, 28, 94, 14, 89, 67, 42, 22, 14, 70, 29, 50, 18, 64, 8, 43, 53, 90, 15, 64, 70, 60, 96, 15, 53, 59, 60, 96, 29, 13, 99, 89, 3, 60, 9, 6, 82],6,[89, 60, 3, 13, 101, 65, 64, 28, 94, 14, 89, 67, 42, 22, 14, 70, 29, 50, 18, 64, 8, 43, 53, 90, 15, 64, 70, 60, 96, 15, 53, 59, 60, 96, 29, 13, 99, 89, 3, 60, 9, 6, 82]).
f([44, 4, 51],1,[51]).
f([71, 59, 61, 26, 44, 47, 56, 8, 22, 97, 10, 82, 70, 81, 8, 30, 37, 98, 58, 83, 93, 68, 18, 44, 70, 8, 41, 65],18,[70, 8, 41, 65]).
f([19, 21, 53, 82, 94, 28, 67, 59, 60, 31, 85, 80, 98, 56, 60, 48],5,[48]).
:-end_in_neg.
