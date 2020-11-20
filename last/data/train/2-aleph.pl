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
f([36, 17, 88, 20],20).
f([73, 70, 47, 22, 72, 2, 92, 80, 63, 26, 55, 92, 18, 96, 51, 7, 84, 84, 48, 9, 19, 20, 9, 34, 27, 66, 54],54).
f([53, 68, 34, 32, 5, 82, 101, 46, 63, 46, 68],68).
f([31, 68, 35, 97, 75, 64, 48, 86, 78, 44, 2, 45, 68, 20, 1, 65, 81, 21, 83, 42, 81, 91, 81, 25, 64, 65, 101, 33, 24, 94, 9, 36, 2, 25, 81],81).
f([53, 89, 89, 56, 40, 3, 49, 55, 81, 60, 7, 60, 49, 45, 10, 73, 21, 81, 69, 62, 94, 38, 52, 15, 32, 36, 37, 43, 4, 20, 59, 76, 35, 1, 30, 47, 20, 41, 63, 80, 33, 67],67).
f([34, 14, 94, 17, 86, 87, 71, 17, 54, 12, 78, 16, 31, 86, 59, 72, 19, 57, 98, 78, 36, 1, 38, 7, 46, 53, 10, 18, 67, 11, 2, 55, 11, 49, 67],67).
f([37, 51],51).
f([45],45).
f([89, 84, 1, 47, 62, 2, 44, 57, 97, 32, 43, 70, 63, 57, 19, 73, 53, 22, 11],11).
f([9, 13, 2, 59, 47, 27, 55, 13, 22, 84, 3, 15, 73],73).
:-end_in_pos.
:-begin_in_neg.
f([40, 101, 40, 92, 87, 74, 82, 26, 1, 101, 44, 101, 74, 26, 78, 14, 83, 12, 94, 4, 74, 98, 100, 92, 37, 36],12).
f([43, 68, 5, 71, 31, 11, 77, 87, 95, 73, 93, 84, 58, 11, 79, 9, 45, 99, 55, 62, 6, 82, 30, 98, 80, 62, 63, 5, 91, 63, 64, 73, 93, 73, 72, 24, 1, 94, 80, 90, 85, 51, 49, 80, 84, 82, 91, 80, 57, 84, 43],57).
f([98, 64, 93, 35, 11, 7, 64, 8, 37, 80, 85, 17, 96, 82, 53, 73, 65, 6, 2, 23, 71, 50, 86],65).
f([51, 96, 4, 49, 35, 26, 27, 16, 29, 55, 63, 40, 47, 61, 19],51).
f([30, 42, 44, 59, 87, 25, 90, 99, 56, 82, 67, 96, 66, 82, 79, 48, 67, 65, 68, 27, 23, 89],79).
f([57, 84, 72, 28, 70, 63, 16, 66, 33, 82, 61, 65, 84, 65, 45, 88, 45, 77, 28, 41, 93, 73, 73, 25, 18, 16, 42, 86, 100, 1, 43, 17, 41, 91, 79],1).
f([17, 6, 87],17).
f([6, 44, 31, 10, 1, 7, 51, 15, 34, 32, 88, 12, 20, 45, 27, 95, 67, 83, 55, 40, 54, 74, 39, 63, 78, 46, 25, 80, 92, 47, 99, 58, 99, 15, 23, 26, 23],92).
f([1, 27, 68, 27, 72, 2, 56, 69, 2, 71, 14, 72, 48, 80, 31, 30, 90, 98, 81, 74, 61, 74, 31, 76, 4, 65, 52, 96, 18, 81, 6],52).
f([35, 30, 21, 6, 57, 56, 39, 93, 56, 74, 95, 45, 7, 99, 42, 89, 26, 34, 26, 20, 10, 54, 24, 54, 35, 33, 29, 50, 40, 88, 18, 79, 64, 15, 13, 56, 91, 91, 44, 66, 82, 4, 7, 98, 23, 66, 92, 68, 9],50).
:-end_in_neg.
