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
f([86, 8, 66, 98, 25, 5, 84, 50, 50, 39, 47, 36, 69, 97, 85],10,[47, 36, 69, 97, 85]).
f([2, 17, 28, 43, 64, 77, 8, 82, 70, 64, 38, 14, 63, 91, 60, 33, 35, 49, 62, 8, 10, 58, 7, 81, 18, 21, 35, 79, 64, 10, 33, 57, 48, 28, 52, 66, 40, 49, 92, 59, 30, 12, 80, 37, 69, 72, 92],16,[35, 49, 62, 8, 10, 58, 7, 81, 18, 21, 35, 79, 64, 10, 33, 57, 48, 28, 52, 66, 40, 49, 92, 59, 30, 12, 80, 37, 69, 72, 92]).
f([72, 18, 85, 61, 46, 79, 32, 56, 73, 35, 77, 10, 82, 42, 43, 78, 55, 66],14,[43, 78, 55, 66]).
f([75, 32, 33, 100, 33, 64, 51, 75, 98, 92, 70, 51, 22, 56, 10, 7, 65],14,[10, 7, 65]).
f([42, 5, 20, 69, 53, 13, 63, 29, 73, 33, 82, 38, 16, 87, 49, 55, 28, 54, 62, 20, 4, 77, 60, 62, 44, 50, 1, 99, 98, 95, 27, 43, 96, 14, 82, 51, 92, 27, 78, 99, 34, 3, 40, 1, 79, 28, 101, 88],7,[29, 73, 33, 82, 38, 16, 87, 49, 55, 28, 54, 62, 20, 4, 77, 60, 62, 44, 50, 1, 99, 98, 95, 27, 43, 96, 14, 82, 51, 92, 27, 78, 99, 34, 3, 40, 1, 79, 28, 101, 88]).
f([46, 40, 31, 101, 57, 61, 77, 97, 41, 60, 7],10,[7]).
f([56, 42, 79, 47, 90, 9, 96, 70, 66, 6, 7],4,[90, 9, 96, 70, 66, 6, 7]).
f([41, 24, 96, 8, 15, 94],5,[94]).
f([30, 2, 93, 37, 95, 10, 46],6,[46]).
f([78, 47, 1, 95, 92, 70, 89, 10, 34, 38, 26, 45, 87, 29, 25, 97, 99, 43, 89, 51, 25, 13, 15, 35, 55, 100, 8, 42, 60, 14, 64, 23, 39, 70, 97, 6, 15, 12, 53],19,[51, 25, 13, 15, 35, 55, 100, 8, 42, 60, 14, 64, 23, 39, 70, 97, 6, 15, 12, 53]).
:-end_in_pos.
:-begin_in_neg.
f([20, 101, 93, 28, 91, 74, 26],3,[93, 28, 91, 74, 26]).
f([47, 71, 22, 10, 55, 54, 85, 14, 82, 39, 34, 25, 45, 12, 75, 80, 80, 1, 5, 10, 1, 19, 64, 61, 69, 60, 38, 73, 16, 68, 47, 76, 32, 76, 30, 73, 18, 77, 95, 55, 40, 10, 7, 11, 43, 7, 74, 23],21,[60, 38, 73, 16, 68, 47, 76, 32, 76, 30, 73, 18, 77, 95, 55, 40, 10, 7, 11, 43, 7, 74, 23]).
f([18, 67, 76, 56, 29, 43, 20, 92, 65, 22, 39, 53, 49, 57, 30, 73, 73, 101, 96],19,[92, 65, 22, 39, 53, 49, 57, 30, 73, 73, 101, 96]).
f([88, 9, 57, 47, 84, 45, 81, 97, 97, 3, 5, 65, 5, 25, 47, 57, 50, 46, 89, 98, 84, 79, 42, 37, 32, 6, 26, 24, 56, 39, 12, 40, 75, 30, 61, 37, 10, 2, 40, 60, 28, 31, 57, 58, 99, 13, 14],3,[88, 9, 57, 47, 84, 45, 81, 97, 97, 3, 5, 65, 5, 25, 47, 57, 50, 46, 89, 98, 84, 79, 42, 37, 32, 6, 26, 24, 56, 39, 12, 40, 75, 30, 61, 37, 10, 2, 40, 60, 28, 31, 57, 58, 99, 13, 14]).
f([86, 48, 82, 22, 9, 25, 42, 92, 88, 37, 56, 19, 12, 87, 77, 23, 97, 68, 97, 63, 96, 75, 70, 83, 19, 95, 79, 62, 66, 50, 54, 76, 2, 16, 82, 50, 37, 2, 80, 62, 52, 79],2,[42, 92, 88, 37, 56, 19, 12, 87, 77, 23, 97, 68, 97, 63, 96, 75, 70, 83, 19, 95, 79, 62, 66, 50, 54, 76, 2, 16, 82, 50, 37, 2, 80, 62, 52, 79]).
f([77, 58, 47, 41, 26, 49, 75, 77, 96, 45, 12, 85, 35, 12, 81, 67, 77, 30, 52, 67, 27, 68],13,[67, 27, 68]).
f([22, 70, 34, 47, 84, 83],0,[47, 84, 83]).
f([17, 59, 74, 70, 88],3,[88]).
f([51, 92, 23, 81, 52, 8, 23, 25, 68, 80, 55, 63, 90, 22, 38, 10, 50, 20, 93, 92, 61, 86, 74, 1, 2, 55, 76, 28, 58, 51, 97, 46, 11, 27, 63, 69, 24, 66, 90, 50, 1, 69, 10, 65, 1, 13, 40],43,[28, 58, 51, 97, 46, 11, 27, 63, 69, 24, 66, 90, 50, 1, 69, 10, 65, 1, 13, 40]).
f([69, 14, 82, 82],3,[14, 82, 82]).
:-end_in_neg.
