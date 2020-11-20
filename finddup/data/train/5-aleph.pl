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
:- determination(f/2,element/2).
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
f([9, 97, 23, 90, 45, 100, 34, 49, 71, 44, 26, 55, 11, 98, 51, 99, 36, 65, 49, 77, 26, 63, 1, 66, 65, 32, 31, 5, 78, 74, 98, 69, 96, 70, 29, 83, 64, 90, 12, 8, 10, 5, 37, 47, 73, 9, 16, 71, 28, 5],49).
f([91, 45, 19, 45, 43, 97, 93, 77, 42, 91, 61, 43, 1, 71, 9, 75],43).
f([35, 61, 24, 2, 8, 2, 52, 78, 55, 25, 76, 2, 50, 43, 40, 16, 88, 16, 4, 78, 65, 54, 98, 46, 73, 30, 86, 5, 88, 33, 5, 48, 59, 40, 49, 19, 65, 74, 43, 61, 54, 10, 43, 37, 43, 101, 26, 36, 55, 90, 19, 32],55).
f([51, 2, 2, 27, 46, 52, 32, 26, 85, 82, 49, 91, 35, 82, 89, 51, 74, 48, 5, 89, 10, 99, 76, 23, 18, 48, 34, 17, 93, 48, 77, 59, 73, 26, 34, 83, 5, 23, 22, 44, 11, 20, 67, 31, 81, 28, 16, 9, 43, 7],48).
f([71, 71, 4, 87, 39, 56, 83, 74, 13, 76, 97, 2, 101, 23, 71, 90, 43, 45, 16, 37, 5, 9, 86, 4, 99, 15, 74, 55, 98, 101, 28, 35],74).
f([31, 68, 36, 87, 57, 18, 28, 68, 9, 41, 62, 14, 72, 65, 100, 92, 66, 65],65).
f([32, 21, 27, 52, 29, 90, 59, 72, 60, 7, 47, 94, 68, 41, 74, 54, 26, 73, 32, 77, 8, 101, 84, 11, 99, 48, 85, 97, 51, 84, 58, 94, 8, 8, 59, 25, 30, 17, 101, 32, 93, 64, 60, 60, 75, 6],60).
f([5, 49, 81, 22, 4, 18, 50, 13, 50, 16, 60, 95, 90, 55, 87, 93, 39, 98, 42, 69, 39, 98, 59, 38, 8, 42, 50, 47, 22, 22],42).
f([73, 73, 95, 25, 1],73).
f([24, 27, 4, 67, 41, 35, 19, 66, 56, 75, 81, 35, 93, 29, 37, 73, 101, 74, 7, 81, 6, 40, 100, 90, 77, 100, 68, 62, 58, 76, 90, 87, 77, 21, 48, 68, 67, 72, 43, 75, 67, 30, 81, 95, 57, 35],77).
:-end_in_pos.
:-begin_in_neg.
f([30, 31, 4, 19, 59, 100, 75, 95, 19, 13, 52, 68],4).
f([88, 31, 40, 26, 61, 80, 43, 2, 48, 78, 86, 72, 69, 70, 18, 72, 43, 16, 33, 98, 1, 89],18).
f([88, 30, 88, 83, 100, 49, 34, 101, 2, 68, 21, 80, 71],101).
f([4, 13, 70, 59, 100, 80, 97, 20, 98, 56, 3, 19, 70, 29, 1, 28, 59, 99, 47, 55, 19, 41, 85, 96, 81, 53, 75, 45, 4, 63, 99, 66, 71, 13, 86],56).
f([36, 42, 30, 55, 25, 46, 1, 55, 21, 62, 22],25).
f([65, 62, 54, 83, 1, 15, 92, 7, 77, 78, 33, 68, 72, 13, 60, 95, 68, 47, 70, 21, 7, 28, 38, 20, 55, 26, 40, 52, 48, 48, 33, 5, 90, 1, 53, 4, 45, 10, 32, 21, 101, 71, 62, 21, 22, 56, 6, 9],65).
f([12, 31, 70, 66, 43, 10, 2],31).
f([87, 1, 86, 47, 77, 38, 62, 53, 53, 60, 7, 98, 48, 72, 88, 6, 101, 11, 95, 1, 84, 81, 58, 85, 3, 86],11).
f([69, 83, 101, 79, 61, 67, 66, 66, 46, 20, 72, 92, 27, 49, 96, 19, 62, 31, 75, 23, 28, 31, 95, 12, 32, 2, 71, 3, 27, 39, 58, 27, 21, 43, 38],23).
f([1, 101, 3, 10, 9, 42, 79, 97, 40, 68, 88, 37, 61, 79, 81, 33, 42, 66, 36, 5, 70, 14, 13, 100, 94, 78, 69, 9, 9, 48, 76, 44, 70, 21, 66, 77, 64, 18, 47, 83, 65],44).
:-end_in_neg.
