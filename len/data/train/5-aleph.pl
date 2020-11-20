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
f([55, 98, 42, 63, 92, 15, 49, 57, 97, 74, 36, 85, 34, 64, 72, 26, 33, 28, 12, 83, 65, 49],22).
f([11, 35, 24, 21, 99, 70, 50, 15, 18, 97, 33, 23, 68, 64, 51, 13, 94, 12, 90, 99, 38, 22, 55, 54, 40, 75, 34, 23, 77, 35, 73, 5, 87, 18, 60, 83, 79, 82, 85, 77, 43, 83, 44],43).
f([62, 56, 23, 32, 90, 77, 44, 63, 25, 85, 9, 12],12).
f([40, 36, 62, 83, 40, 57, 64, 4, 100, 3, 23, 52, 57, 5, 64, 64, 25, 84, 33, 15, 40, 43, 25, 24, 36, 38, 81, 13, 64, 10, 83, 88, 60],33).
f([15, 73, 43, 88, 33, 73, 23, 76, 21, 89, 51, 58, 48, 94, 49, 21, 87, 54],18).
f([83, 46, 100, 28, 32, 101, 90, 3, 21, 76, 4, 72, 12, 13, 73, 32, 47, 15, 5, 86, 52, 52, 69, 31, 77, 63, 9, 18, 74, 54, 51, 56, 61, 4, 4, 78, 27, 73, 43, 42, 33, 31, 87, 36, 14, 17, 64, 62, 10],49).
f([56, 63, 78, 37, 50, 26, 72, 62, 18, 49, 21, 32, 28, 34, 13, 88, 32, 29, 23, 16, 51, 101, 16, 81, 54, 17, 93, 99, 51, 71, 76, 63, 25, 44, 1, 2, 21, 49, 74],39).
f([84, 31, 46, 47, 35, 17, 42, 94, 85, 34, 80, 41, 90, 35, 90, 26, 5, 80, 11, 83, 97, 84, 86, 93, 66, 53, 90, 24, 65, 4, 16, 65, 6, 14, 51, 92, 96, 86, 27, 14],40).
f([31, 20, 49, 29, 76, 14, 56, 6, 75, 6, 11, 12, 99, 98, 97, 2, 36, 31, 61, 25, 46, 36, 88, 100, 29, 51, 32, 92, 37, 22, 23, 95, 27, 9, 54, 32, 45, 42, 43],39).
f([47, 90, 55, 43, 51, 57, 30, 26, 95, 85, 52, 6, 48, 81, 60, 79, 15, 1, 23, 47, 11, 53, 16, 91, 63, 26, 98, 98, 61, 49, 66, 5, 81, 1, 95, 8, 77, 57, 95, 57, 37, 14],42).
:-end_in_pos.
:-begin_in_neg.
f([37, 36, 69, 97, 63, 17],4).
f([87, 11, 44, 1, 95, 16, 46, 95, 91, 25, 36, 35, 56],67).
f([92, 31, 79, 69, 45, 69, 34, 99, 51, 84, 42, 2, 51, 10, 13, 19, 69, 2, 4, 45, 64, 26, 33, 70, 97, 97, 72, 43, 48, 73, 20, 95, 21, 59, 81, 20, 5, 35, 99, 43, 3, 2, 7, 46, 101, 65, 52, 8],19).
f([35, 25, 1, 89, 11, 13, 62, 27, 89],86).
f([82, 77, 32, 69],59).
f([32, 21, 93, 85, 54, 19, 52, 23, 79, 70, 81, 68, 63, 89, 67, 2, 41, 58, 17, 88, 61, 71, 76, 39, 83, 17, 82, 13, 76, 67, 38, 63, 81, 92, 100, 48, 87, 70, 88, 64, 85, 64, 42, 44, 29],37).
f([5, 98, 72, 74, 52, 84, 49, 89, 72, 41, 70, 68, 98, 2, 9, 19, 16, 90, 80, 30, 51, 39, 51],85).
f([32, 55, 98, 70, 46, 88, 50, 20, 6, 98, 62, 62, 52, 71, 66, 61, 77, 75, 35, 85, 19, 64, 50, 72, 76, 14, 84, 70, 10, 91, 68, 66, 4, 30, 98, 74],76).
f([21, 81, 80, 32, 46, 1, 63, 44, 96, 83, 65, 32, 18, 18, 72, 51, 33, 99, 6, 70, 5, 56, 6, 27, 12],13).
f([88, 31, 10, 77, 64, 62, 9, 48, 87, 22, 99, 64, 62, 1, 83, 76, 64, 2, 100],72).
:-end_in_neg.
