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
f([10, 10, 20, 82, 77, 39, 22, 54, 85, 15, 99, 26, 101, 91, 17, 42, 2, 77, 35, 13, 91, 1, 37, 97, 58, 23, 69, 34, 67, 67, 84, 101, 44, 101, 27, 100, 29, 21, 89, 54, 100, 97, 7, 36],10).
f([63, 92, 52, 96, 14, 2, 83, 23, 27, 86, 15, 28, 55, 16, 92, 36, 82, 73, 49, 65, 80, 91, 59, 67, 94, 37, 36, 85, 83, 30, 9, 13, 12, 45, 79, 62, 59, 37, 28, 64, 43, 49, 78, 80, 47, 14, 62, 9, 84, 85, 66],66).
f([67, 42, 49, 15],15).
f([20, 81, 81, 34, 12, 81, 89, 57, 14, 83, 98, 3, 50, 77, 88, 55, 54, 23, 40, 68, 98, 25, 6, 67, 55],55).
f([81, 68, 32],32).
f([70, 72, 98, 29, 34, 17, 82, 98, 10, 74, 76, 83, 98, 43, 47, 100],34).
f([16, 24, 82, 21, 41, 25, 85, 66, 67, 76, 27, 13, 14, 56, 98, 46, 41, 18, 29, 17, 26, 24],29).
f([27, 65, 76, 97, 82, 6, 54, 26, 66, 40, 101, 96, 90, 23, 88, 91, 15, 4, 99, 23, 22, 62, 13, 12, 48, 60, 62, 24, 72, 78, 42, 41, 26, 87, 7, 89, 77, 26, 45, 30, 97, 81, 71],23).
f([79, 22, 80, 15, 19, 10, 2, 18, 30, 56, 100, 1, 88, 1, 13, 32, 14, 4],30).
f([57, 15, 57, 33, 92, 19, 16, 56, 30, 97, 33, 34, 49, 60, 43, 60, 40, 69, 58, 45, 39, 8, 39, 20, 81, 43, 3],57).
:-end_in_pos.
:-begin_in_neg.
f([66, 27, 66, 50, 39, 29, 96, 10, 78, 14, 2, 31, 10, 4, 2, 11, 17, 88, 50, 97, 37, 68, 24, 71, 21, 44],22).
f([8, 53, 34, 56, 54, 57, 46, 77, 100, 73, 63, 8, 70, 10, 13],68).
f([50, 47, 43, 1, 98, 17, 14, 19, 20, 9, 76, 87, 70, 99, 42, 84, 89, 12, 98, 80, 57, 19, 44, 30],82).
f([54],24).
f([27, 23, 28, 16, 23, 53, 14, 12, 5, 46, 75, 40, 63, 71, 35, 87, 70, 14, 84, 32, 23, 21, 93, 55, 21, 90, 84, 77, 49, 72, 89, 98, 13, 69],24).
f([49, 11, 69, 23, 64, 69, 43, 47, 51, 63, 68, 71, 34, 38, 48, 86, 58, 40, 67, 78, 46, 4, 20, 61, 43, 23, 55, 77, 23, 23, 58, 43, 5, 70, 40],14).
f([17],4).
f([46, 31, 52, 25, 49, 10, 4, 58, 22, 28, 45, 46, 47, 59, 58, 17, 45, 90, 45, 92, 12, 82],53).
f([28, 22, 69, 39, 39, 86, 16, 80, 60, 88, 54],34).
f([15, 25, 59, 76, 78, 56, 38, 42, 6, 22, 43, 49, 55, 66, 1, 59, 60, 88, 23, 93, 25, 56, 27, 97, 90, 90, 28, 51, 55, 93, 49, 33, 97, 38, 41, 59, 88, 80],26).
:-end_in_neg.
