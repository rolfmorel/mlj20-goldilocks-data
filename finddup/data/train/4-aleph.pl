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
f([40, 4, 54, 54, 69, 2, 15, 58, 4, 23, 17, 74, 34, 50, 2, 63, 3, 44, 1, 91, 30, 84, 39, 48, 101, 10, 28, 14, 4, 33, 41, 95, 61, 17, 3, 80, 59, 70, 89, 79, 85, 57, 80],17).
f([17, 45, 61, 100, 6, 52, 94, 52, 94, 88, 32, 61, 69, 91, 45, 80, 97, 37, 56, 35, 86, 39, 49, 90, 85, 18, 26, 70, 37, 86, 98, 14, 88],45).
f([80, 81, 94, 92, 15, 82, 82, 82, 80, 66, 83, 10, 91, 38],82).
f([25, 70, 72, 46, 97, 30, 18, 2, 88, 90, 59, 87, 70, 76, 3, 77, 8, 55, 89, 76, 5, 25],76).
f([97, 26, 40, 78, 82, 87, 48, 87, 93, 56, 47, 38, 2, 25, 32, 27, 98, 26, 4, 55, 79, 41, 16, 42, 22, 32, 38],32).
f([59, 85, 80, 52, 48, 31, 75, 12, 82, 23, 13, 30, 82, 23, 19, 25, 4, 40, 39, 35, 39, 80],23).
f([6, 27, 30, 46, 68, 68, 26, 68, 12, 47, 60, 64, 66, 52, 2, 9, 12, 54],12).
f([17, 96, 95, 43, 58, 99, 43, 3, 33, 97, 15, 54, 83, 57, 41, 62, 94, 57, 19, 62, 101, 101, 68, 20, 34, 82, 15, 3, 52, 29, 12, 65, 67, 93, 34, 26, 11, 73, 64, 39, 17, 100, 3, 44, 60, 50, 86, 73, 57, 51, 57, 25],73).
f([77, 15, 45, 33, 61, 30, 95, 89, 75, 32, 75],75).
f([50, 93, 8, 84, 1, 2, 51, 43, 18, 13, 17, 61, 31, 96, 43, 31, 97, 8, 85, 68, 91, 73, 75, 47],31).
:-end_in_pos.
:-begin_in_neg.
f([64, 90, 62, 37, 12, 13, 39, 35, 41, 27, 3, 48, 29, 25, 64, 37, 76, 77, 20, 81, 8, 72, 57, 6, 94, 65, 42, 75, 57, 8, 12, 33, 9, 97, 72, 89, 52, 44, 9, 48, 59, 12, 79, 82, 33, 76],44).
f([80, 82, 80, 55, 11, 36, 11, 91, 54, 67, 5, 21, 70, 78, 18, 80, 79, 12, 35, 89, 26, 62, 59, 63, 73, 20, 70, 12, 3, 95, 69, 41, 62, 11, 92, 5, 30, 4, 34, 11, 89, 43, 83, 60, 26, 81, 98, 31, 37, 22],59).
f([52, 51, 18, 28, 16, 78],18).
f([82, 5, 59, 99, 3, 42, 41, 88, 80, 88, 26, 31, 69, 19, 75, 40, 61, 12, 24, 33, 15, 33, 40, 86, 79, 2, 73, 51, 2, 2, 97, 56, 76, 28, 73, 50],82).
f([42, 99, 31, 101, 16, 22, 66, 64, 95, 65, 44, 70, 24, 14, 2, 56, 13, 45, 58, 68, 26, 12, 24, 67, 2, 22, 19, 84, 38, 9, 22, 61, 87, 2, 26, 12, 53],58).
f([5, 53, 45, 26, 28, 70, 76, 44, 9],45).
f([66, 85, 64, 101, 76, 40, 39, 50, 47, 92, 63, 15, 66, 67, 78, 80, 48, 27, 34, 29, 78, 52, 19, 96, 75, 36, 51, 35, 69, 53, 33, 7, 41, 52, 38, 63, 44, 57, 69, 47, 4, 22, 42, 18, 12],64).
f([61, 50, 68, 29, 21, 79, 81, 71, 7, 19, 36, 77, 85, 40, 45, 79, 50, 12, 85, 41, 64, 35, 61, 90],68).
f([56, 72, 47, 65, 2, 81, 56, 100, 57, 98, 32, 95, 59, 45, 82, 39, 23, 28, 44, 85, 5, 17, 29, 98, 27, 99, 76, 34, 66, 2, 43, 74, 93, 85],82).
f([18, 20, 48, 48, 24, 96, 95, 34, 101, 24, 14, 52, 60, 25, 87, 4, 43, 7, 32, 89, 98, 21, 35, 6, 88, 31, 39, 26, 61, 31],60).
:-end_in_neg.
