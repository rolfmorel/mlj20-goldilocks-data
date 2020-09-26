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
f([90, 27, 5, 85, 39, 17, 92, 52, 71, 62, 93, 16, 41, 29, 11, 10, 5, 53, 99, 42, 31, 62, 35, 27, 56, 66, 83, 32, 85, 73, 96, 5, 54, 49, 26, 27, 63, 69, 65],9,[62, 93, 16, 41, 29, 11, 10, 5, 53, 99, 42, 31, 62, 35, 27, 56, 66, 83, 32, 85, 73, 96, 5, 54, 49, 26, 27, 63, 69, 65]).
f([66, 93, 81, 33, 96, 41, 70, 59, 52, 73, 24],1,[93, 81, 33, 96, 41, 70, 59, 52, 73, 24]).
f([11, 91, 59, 24, 45, 61, 99, 91, 7, 81, 82, 80, 60, 3, 83, 13, 34, 82, 69, 11, 3, 83, 76, 62, 29, 64, 65, 101, 4, 63, 73, 17, 60, 75, 101, 45, 65, 13, 28, 4, 85, 31, 68, 46, 21, 98, 67],30,[73, 17, 60, 75, 101, 45, 65, 13, 28, 4, 85, 31, 68, 46, 21, 98, 67]).
f([44, 38, 76, 57, 67, 49, 10, 38, 95, 31, 34, 71, 56, 91, 73, 18, 22, 48, 50, 36, 96, 99, 56, 24, 18, 65, 28, 68, 40, 30, 58, 77, 46, 94, 15, 93, 92, 98, 64, 62, 8, 85, 23, 32, 6, 25, 34, 90],14,[73, 18, 22, 48, 50, 36, 96, 99, 56, 24, 18, 65, 28, 68, 40, 30, 58, 77, 46, 94, 15, 93, 92, 98, 64, 62, 8, 85, 23, 32, 6, 25, 34, 90]).
f([8, 6, 27, 66, 96, 20, 46, 56, 73, 69, 17, 45, 36, 31, 88, 84, 33, 74, 94, 21, 42, 65],8,[73, 69, 17, 45, 36, 31, 88, 84, 33, 74, 94, 21, 42, 65]).
f([79, 42, 90, 50, 25, 6, 64, 96, 75, 42, 39, 56, 98, 33, 55, 52, 68, 21, 92, 97, 93, 97, 79, 9, 19, 75, 29, 38, 95, 95, 47, 27, 66, 72, 46, 52, 3, 39, 13, 85, 21, 89, 15, 24],16,[68, 21, 92, 97, 93, 97, 79, 9, 19, 75, 29, 38, 95, 95, 47, 27, 66, 72, 46, 52, 3, 39, 13, 85, 21, 89, 15, 24]).
f([14, 81, 6, 52, 61, 73, 96, 52, 76, 50, 45, 3, 15, 32, 47, 24, 10, 72, 40, 71, 91, 24, 10, 59, 78, 1, 4, 83, 35, 12, 3, 77, 96, 35, 88, 63, 97, 14, 21, 90, 61, 57, 85, 77, 72],27,[83, 35, 12, 3, 77, 96, 35, 88, 63, 97, 14, 21, 90, 61, 57, 85, 77, 72]).
f([12, 81, 83, 38, 82, 69, 75, 83, 7, 91, 74, 84, 30, 53, 94, 12, 1, 3, 75, 77, 24, 4, 33, 7, 41, 69, 3, 40, 97, 16, 34, 47, 32, 38, 11, 23, 63, 42, 55, 85, 76, 42, 3, 64, 86, 81],11,[84, 30, 53, 94, 12, 1, 3, 75, 77, 24, 4, 33, 7, 41, 69, 3, 40, 97, 16, 34, 47, 32, 38, 11, 23, 63, 42, 55, 85, 76, 42, 3, 64, 86, 81]).
f([49, 92, 54, 68, 43, 55, 86, 57, 42, 45, 39, 44, 93, 58, 28, 67, 76, 38, 1, 41, 74, 38, 83, 50, 64, 33],7,[57, 42, 45, 39, 44, 93, 58, 28, 67, 76, 38, 1, 41, 74, 38, 83, 50, 64, 33]).
f([77, 67, 37, 38, 99, 28, 48, 5, 10, 8, 27, 1, 71, 18, 16, 63, 8, 86, 36, 43, 62, 10, 9],5,[28, 48, 5, 10, 8, 27, 1, 71, 18, 16, 63, 8, 86, 36, 43, 62, 10, 9]).
:-end_in_pos.
:-begin_in_neg.
f([91, 17, 59, 62, 44, 41, 66, 98, 59, 79, 15, 1, 4, 67, 60, 28, 91, 70, 8, 8, 83, 13, 62, 48, 52, 85, 55, 39, 66, 91, 87, 96, 75, 14, 35, 96, 99, 51, 80, 11, 2, 95, 83, 31, 6, 65],24,[41, 66, 98, 59, 79, 15, 1, 4, 67, 60, 28, 91, 70, 8, 8, 83, 13, 62, 48, 52, 85, 55, 39, 66, 91, 87, 96, 75, 14, 35, 96, 99, 51, 80, 11, 2, 95, 83, 31, 6, 65]).
f([92, 100, 27, 55, 10, 22, 82, 81, 13, 46, 47, 27, 99, 8, 96, 38, 54],8,[81, 13, 46, 47, 27, 99, 8, 96, 38, 54]).
f([28, 5, 68, 52, 73, 85, 73, 11, 18, 80, 96, 37, 59, 77, 95, 94, 71, 95, 70, 20, 56, 46, 43, 66, 26, 60, 31, 86, 93, 32, 89, 21, 66, 2, 81, 56],29,[60, 31, 86, 93, 32, 89, 21, 66, 2, 81, 56]).
f([22, 79, 71, 34],2,[22, 79, 71, 34]).
f([85, 61, 75, 77, 44, 61, 73, 48, 6, 39, 96, 4, 50, 17, 65, 90, 67, 74, 31, 81, 6, 54, 53, 97, 46, 84, 45, 24, 66, 55, 53, 55, 73, 92, 50, 13, 75, 53],17,[17, 65, 90, 67, 74, 31, 81, 6, 54, 53, 97, 46, 84, 45, 24, 66, 55, 53, 55, 73, 92, 50, 13, 75, 53]).
f([63, 19, 66, 46, 55, 42, 5, 16, 97, 4, 23, 72, 31, 24, 16, 70, 18, 69, 97, 42, 11, 61, 98, 30],0,[5, 16, 97, 4, 23, 72, 31, 24, 16, 70, 18, 69, 97, 42, 11, 61, 98, 30]).
f([82, 4, 2, 30, 86, 47, 82, 90, 93, 51, 71, 58, 30, 80, 92, 5, 15, 19, 46, 53],8,[92, 5, 15, 19, 46, 53]).
f([56, 89, 42, 13, 91, 32, 94, 62, 95, 90, 101, 41, 62, 17, 63, 49, 22, 81, 90, 34, 68, 16, 66, 28, 4, 51, 46, 74, 34, 38, 81, 52, 40, 40, 100, 23, 1],11,[101, 41, 62, 17, 63, 49, 22, 81, 90, 34, 68, 16, 66, 28, 4, 51, 46, 74, 34, 38, 81, 52, 40, 40, 100, 23, 1]).
f([39, 78, 21, 68, 5, 34, 59, 70, 75, 10, 67, 31, 40, 44, 14, 60, 39, 95, 7, 19, 57, 49, 60, 36, 34, 43, 55, 57, 73, 83, 19, 87, 1, 76, 74, 37, 23, 23, 63, 79, 32, 48, 17, 86, 26],31,[83, 19, 87, 1, 76, 74, 37, 23, 23, 63, 79, 32, 48, 17, 86, 26]).
f([57, 72, 57, 99, 83, 56, 87, 56, 60, 14, 56, 7, 92, 5, 90, 91, 34, 67, 51, 54],2,[57, 72, 57, 99, 83, 56, 87, 56, 60, 14, 56, 7, 92, 5, 90, 91, 34, 67, 51, 54]).
:-end_in_neg.
