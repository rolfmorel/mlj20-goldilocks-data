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
f([45, 65, 49, 28, 77, 28, 47, 45, 6, 64, 36, 24, 15, 72, 14, 46, 3, 92, 11, 73, 72, 79, 31, 89, 82, 77, 42, 10, 57, 23, 75],23).
f([6, 101, 76, 6, 53, 75, 3, 38, 39, 36, 85, 66, 21, 96, 51, 13, 52, 89, 55, 20, 85, 41, 28, 41, 62, 92, 58, 47, 32, 9, 39],53).
f([44, 99, 32, 32, 8, 47, 43, 82, 55, 56, 34, 89, 72, 21, 16, 94],47).
f([88, 91, 42, 91, 49, 74, 40, 83, 73, 96],88).
f([22, 76, 26, 70, 25, 52, 10, 50, 81, 18, 47, 67],22).
f([38, 6, 93, 21, 8, 51, 78, 73, 72, 29, 85, 41, 3, 64, 31, 52, 59, 23, 66, 99, 43, 28],64).
f([26, 29, 4, 10, 17, 8, 92, 95, 42, 79, 57, 38, 43, 71, 19, 55, 45, 68, 70],68).
f([12, 22, 18, 89, 62, 42, 50, 16, 28, 32, 41, 83, 95, 16, 90, 64, 28, 38, 54, 63, 90, 79, 7, 8, 100, 58, 48, 38, 91, 68],83).
f([96, 21, 60, 13, 85, 85, 31, 21, 47, 82, 81, 24, 12, 41, 60, 35, 23, 9, 30, 47, 74, 4, 76, 16, 1, 74, 64, 55, 92, 9, 79, 41, 21, 34, 48, 95, 2, 28, 60, 63, 84, 81],21).
f([51, 17, 23, 96, 9, 4, 25, 101, 69, 85, 57, 88, 18, 60, 17, 15, 26, 67, 87, 80, 89, 4, 48, 87, 46, 81, 34, 35, 25, 96, 26, 21, 30, 54, 26, 41, 65, 78, 67, 80, 6, 35, 2],15).
:-end_in_pos.
:-begin_in_neg.
f([52, 37, 7, 24, 36, 8, 23, 62, 25, 57, 12, 11, 39, 23, 61, 84, 25, 65, 36, 80, 95, 22, 38, 72, 57, 98, 23, 30, 35, 36, 79, 59, 12, 73, 80],3).
f([6, 18, 75, 80, 39, 20, 100, 19, 52, 36, 77, 74, 78, 7, 59, 4, 73, 5, 55, 98, 16, 80, 29, 72, 42, 38, 95, 61, 67, 83, 57, 94, 1, 70, 65, 75, 42, 52, 29, 95, 17, 65, 63, 58, 34, 80, 46, 52, 12, 61, 86],26).
f([9, 60, 15, 77, 56],27).
f([59, 100, 54, 73, 16, 18, 77, 90, 35, 97, 59, 64, 4, 98, 55, 83, 48, 40, 47, 41, 49, 47, 98, 97, 66, 81, 33, 63, 6, 57, 91, 86, 12, 97, 10, 58],28).
f([91, 13, 90, 15, 27, 30, 83, 17, 66, 29, 72, 96, 92, 62, 58, 39, 32, 5, 70, 92, 100, 41, 99, 10, 74, 94, 39, 95, 48, 83, 25, 52, 100, 15, 29, 20, 16, 92, 51],49).
f([60, 35, 32, 88, 13, 18, 66, 15, 30, 46, 63, 32, 11, 68, 84, 77, 80, 91, 43, 34, 19, 99, 59, 44, 98, 59, 52, 71, 83, 1, 17, 92, 72, 85, 24, 2, 81, 71, 61, 84, 25, 101, 6, 55, 9, 82, 48, 4, 34],65).
f([32, 77, 83, 71, 34, 88, 52, 51, 47, 90, 43, 61, 41, 96, 39, 19, 49, 6, 99, 99, 68, 81, 12, 80, 20, 41, 44],10).
f([77, 85, 98, 19, 19, 35, 51, 76, 62, 79, 63, 10, 69, 90, 54, 86, 48, 83, 4, 79, 20, 41, 93, 46, 94, 51, 30, 76, 54, 61],36).
f([31, 77, 84, 15, 29, 51, 73, 74, 49, 69, 69, 34, 90, 85, 16, 43, 86, 2, 35, 98, 26, 46, 72, 96, 82, 76, 92, 23, 6, 29, 99, 53, 84, 51, 11, 96, 93, 14, 21],13).
f([42, 5, 101, 93, 65, 38, 96, 91, 98, 49, 49, 8, 68, 75, 77, 86, 101, 70, 58, 26, 64, 41, 58, 67, 90, 91, 68, 82, 37, 79, 16, 47, 77],40).
:-end_in_neg.
