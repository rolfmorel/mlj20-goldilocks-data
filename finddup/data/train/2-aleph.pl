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
f([74, 66, 71, 92, 34, 65, 77, 74, 62, 35, 75, 74, 34, 83, 39, 27, 5, 36, 71, 5, 46, 46, 14, 86, 63, 50, 33, 16, 8, 72, 64, 42, 63, 53, 25, 16, 42, 61, 66, 26, 53, 25, 51, 56, 11, 10, 91, 8, 65, 23, 16],65).
f([31, 96, 73, 43, 51, 31, 72, 56, 58, 97, 57, 9, 79, 36, 84, 36, 52, 85, 99, 1, 60, 9, 60, 29, 4, 24, 52, 48, 13, 5, 21, 6],31).
f([54, 84, 95, 48, 84, 91, 99, 15, 12, 87, 74, 6],84).
f([65, 82, 11, 100, 19, 54, 70, 76, 88, 32, 8, 65, 74, 13, 12, 33, 89, 34, 68, 80],65).
f([46, 67, 79, 66, 95, 100, 8, 30, 51, 100, 59, 66, 50, 47, 25, 8, 88, 19, 87, 57, 41, 23, 70, 67, 56, 42, 82, 78, 34, 46, 83, 80, 49],67).
f([80, 38, 38, 41],38).
f([12, 31, 14, 31, 31, 27, 71, 85, 38, 11],31).
f([95, 86, 57, 44, 42, 100, 8, 30, 57, 83, 42, 13, 52, 49, 48, 9, 27, 8, 97, 86, 96],57).
f([22, 39, 78, 13, 5, 51, 60, 36, 15, 77, 38, 39, 36, 45, 15, 65, 9, 31, 30, 10, 91, 97, 34, 75, 45, 88, 40, 100, 45, 53, 23, 83, 13, 59, 67, 46, 45, 89, 6, 75, 68, 35, 48, 29, 5, 17, 22],39).
f([6, 8, 75, 75, 101, 8],75).
:-end_in_pos.
:-begin_in_neg.
f([28, 84, 76, 77, 69, 62, 30, 28, 39, 11, 18, 91, 28, 95, 24, 40, 4, 62, 32, 16, 81, 97, 24, 85, 2, 99, 5, 30, 10, 49, 44, 61, 64, 54, 19, 81, 36, 91, 3, 64, 85],16).
f([36, 17, 78, 89, 29, 89, 9, 92, 24, 69, 27, 40],92).
f([73, 54, 71, 85, 90, 49, 14, 71, 19, 41, 59, 78, 88, 64, 84, 11, 83, 5, 4, 39, 87, 31, 93, 77, 22, 69, 84, 90, 90, 3, 62, 20, 76, 31, 54, 41, 7, 26, 67],22).
f([18, 60, 100, 37, 15, 95, 44, 42, 8, 51, 55, 13, 79, 66, 98, 36, 74, 92, 101, 23, 73, 59, 24, 69, 51, 69, 85, 61, 73, 86, 73, 100, 13, 56, 19, 58, 69],74).
f([72, 64, 76, 72, 9, 42, 77, 61, 24, 61, 68, 60, 85, 19, 61, 8, 42, 36, 69, 23, 12, 15, 98, 98, 69, 57, 3, 49, 26, 58, 71, 59, 96, 38, 70, 26, 25, 80, 67, 17, 89, 100, 81, 10, 93, 18, 64],15).
f([50, 73, 52, 25, 54, 90, 71, 84, 85, 22, 84, 67, 52, 67, 93, 71, 77, 25, 83, 83, 57, 11, 17, 81, 1, 83, 12, 67, 42, 97, 54, 53, 67, 59, 34, 39, 51, 69, 96, 84, 36, 46, 44, 60, 2, 22, 51, 41, 5, 58, 90],81).
f([23, 10, 39, 5, 53, 15, 11, 68, 97, 10, 34, 46, 93, 95, 25, 48, 39, 46, 69, 5],15).
f([80, 78, 18, 14, 33, 51, 73, 3, 93, 75, 23, 54, 89, 93, 72, 6, 17, 67, 75, 40, 42, 88, 12, 22, 94, 71, 70, 9],9).
f([55, 22, 51, 44, 15, 56, 83, 84, 10, 27, 79, 10, 101, 17, 98, 75],79).
f([92, 10, 77, 97, 12, 55, 23, 43, 75, 37, 41, 91, 80],97).
:-end_in_neg.
