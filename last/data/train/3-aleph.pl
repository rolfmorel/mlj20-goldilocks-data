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
:- modeh(*,f(+list,-element)).
:- modeb(*,f(+list,-element)).
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
%% :- determination(f/2,element/2).
%% :- determination(f/2,increment/2).
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
f([20, 56],56).
f([76, 42, 89, 67, 60, 66, 29, 90, 46, 61, 85, 21, 57, 48, 10, 10],10).
f([74, 83, 29, 43, 96, 91, 4],4).
f([20, 14, 47, 56, 92, 91, 32, 15, 83],83).
f([92, 71, 42, 87, 82, 12, 86, 80, 68],68).
f([61, 76, 88, 13, 9, 34, 37, 6, 55, 43, 22, 83],83).
f([51, 70, 14, 87, 78, 37, 15, 82, 56, 49, 84, 39, 39, 18, 56, 39, 91, 33, 15, 62, 13, 11, 79, 9, 21, 56, 32, 14, 34, 23, 10, 94, 12, 70, 85, 60, 42],42).
f([87, 36, 48, 40, 79, 53, 64, 84, 73, 64, 8, 84, 90, 2, 12, 92, 15, 66, 16, 70, 34, 21, 86, 94, 97, 75, 76, 55, 91, 68, 63, 17, 5, 68, 11, 1, 95, 19, 75, 19, 3],3).
f([35, 16, 9, 69, 36, 48, 30, 60, 46, 45, 59, 59, 32, 99, 82, 22, 68, 22, 16, 41, 74, 77, 42, 1, 47, 6, 34, 79, 61, 8, 8, 92, 24, 33, 28, 15, 22, 91],91).
f([25, 16, 37, 98, 54, 89, 95, 96],96).
:-end_in_pos.
:-begin_in_neg.
f([53, 93, 49, 91, 16, 54, 25, 55, 80, 96, 5, 47, 28, 47, 2, 16, 26, 31, 58, 28, 6, 41, 97, 14, 100, 4, 54, 81, 79, 92, 38, 8, 9],4).
f([66, 66, 67, 87, 31, 77, 71, 81, 74, 41, 76, 95, 2, 86, 97, 53, 32, 96, 58, 63, 49, 8, 78, 61, 25, 4, 40, 21, 56, 36],66).
f([79, 22, 50, 55, 19, 31, 78, 5, 80, 11, 40, 42, 89, 31, 39, 1, 31, 46, 26, 89],40).
f([79, 32, 100, 101, 23, 46, 67, 23, 16, 66, 23, 95, 1, 43, 25, 73, 92, 92, 59, 97, 81, 66, 41, 55, 30, 71, 10],23).
f([58, 10, 59, 7, 92, 82, 52, 3, 60, 26, 20, 44, 12, 90, 56, 64, 93, 63, 88, 96, 63, 74, 86, 2, 74, 40, 26, 42, 84, 13, 67, 54, 27, 18, 37, 29, 36, 39],40).
f([2, 79, 5, 62, 30, 43, 31, 96, 74, 34, 20, 13, 37, 16, 94, 1, 86, 95, 12, 23, 32, 49, 25, 67, 87, 7, 19, 39, 95, 27, 78, 37, 26, 11, 96, 3, 101, 75, 44, 45, 85, 83, 6, 36, 60],1).
f([78, 45, 66, 84, 95, 55, 11, 20, 53, 48, 27, 72, 63, 65, 61, 70, 36, 99, 31, 95, 53],70).
f([44, 67, 37, 51, 31, 66, 15, 81, 22, 35, 62],44).
f([33, 14, 28, 48, 25, 14, 12, 45, 98, 60, 39, 75, 40, 70, 28, 40, 16, 75, 33],70).
f([17, 40, 75, 86, 99, 82, 59, 29, 81, 64, 39, 5, 54, 68, 39, 16, 79, 85, 90, 90, 26, 7, 58, 46, 98, 40, 57, 11, 2, 2, 55, 49, 91, 67, 3, 19, 7, 6, 101, 95, 67, 82, 92],101).
:-end_in_neg.
