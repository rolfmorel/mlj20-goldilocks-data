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
:- modeh(*,f(+list)).
:- modeb(*,f(+list)).
%% :- modeb(*,cons(+element,+list,-list)).

:- determination(f/1,head/2).
:- determination(f/1,tail/2).
:- determination(f/1,geq/2).
:- determination(f/1,empty/1).
:- determination(f/1,even/1).
:- determination(f/1,odd/1).
:- determination(f/1,one/1).
:- determination(f/1,zero/1).
:- determination(f/1,decrement/2).
:- determination(f/1,f/1).
%% :- determination(f/1,increment/2).
%% :- determination(f/1,element/2).
%% :- determination(f/1,cons/3).
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
f([86, 38, 12, 42, 70, 88, 36, 96, 42, 68, 38, 28, 60, 38, 44, 50, 22, 60, 92, 14, 62, 92, 84, 56, 74, 16, 38, 98, 50, 90, 24, 80, 92, 24, 100, 6, 48]).
f([14, 92, 56, 60, 52, 76, 42, 68, 92, 88, 84, 100, 4, 68, 92, 46, 48, 68, 50, 36, 30, 84]).
f([2, 92, 72, 52, 10, 50, 54, 42, 90, 90, 100, 54, 36, 56, 2, 64, 42, 26, 26, 62, 16, 42, 76, 4, 92, 78, 46, 80, 12, 10, 84, 50, 86, 80, 68, 58, 54, 86, 6, 64, 42, 98]).
f([98, 62, 76, 86, 42, 86, 84, 20, 36, 8, 66, 14, 48, 12, 88, 76, 20, 44, 6, 86, 58, 94, 22, 64, 28, 6, 38, 40, 94, 56, 18, 62, 10, 34, 34, 12, 76, 80, 52, 48]).
f([18, 58, 46, 52, 82, 92, 44, 36, 100, 4, 96, 14, 86, 92]).
f([36, 70, 28, 60, 74, 20, 38, 82, 66, 30, 72, 42, 86, 54]).
f([48, 34, 66, 18, 4, 2, 22, 6, 86, 86, 50, 72, 74, 86]).
f([98, 60, 26, 32, 10, 52, 16, 50, 46, 24, 54, 88, 38, 38, 24, 22, 28, 44, 80, 66, 62, 4, 72, 52, 14, 44, 76, 18, 56, 72, 74]).
f([50, 16, 4, 72, 50, 16, 20, 56, 94, 58, 24, 84, 50, 68, 16, 32, 54, 20, 62, 76, 2, 82, 70, 88, 10, 10, 100, 40, 14, 44, 36, 50, 62, 4, 76, 98, 70, 36, 60, 24, 68, 24]).
f([76, 90, 62, 84, 96, 2, 60, 34, 52, 12, 66, 70, 68, 38, 90, 18, 6, 16, 20, 52, 84, 24, 8, 90, 46, 22, 58, 12, 78, 62, 88, 52, 24, 42, 52, 42, 68, 88, 70, 82, 78, 66, 60, 30, 92, 24, 92]).
:-end_in_pos.
:-begin_in_neg.
f([34, 22, 1, 66, 48, 96, 82, 16, 82, 89, 34, 70, 14, 78, 10, 92, 54, 88, 53, 74, 40, 64, 16, 38, 34, 92, 16, 44, 20, 62, 69, 12, 84, 90]).
f([33, 99, 89, 17, 77, 47, 37, 5, 65, 33, 85, 37, 35, 47, 55, 73, 71, 5, 13, 77, 9, 47, 31, 93, 97, 13, 59, 53, 1, 27, 1, 57, 99, 83, 5, 13, 21, 19, 91, 31, 33, 8, 27, 73]).
f([30, 28, 16, 64, 78, 66, 39, 20, 74, 62, 54, 16, 68, 94, 86, 76, 66, 86, 96]).
f([5, 7, 39, 79, 21, 85, 53, 67, 14, 23, 41, 37, 99, 23, 89, 29, 5, 67, 1, 90, 11, 99, 5, 85, 15, 51, 79, 77, 59, 53, 15, 83, 45, 59, 95, 21, 3, 47, 56, 3, 15, 27]).
f([73, 47, 3, 39, 31, 93, 59, 5, 77, 13, 99, 57, 65, 63, 83, 39, 93, 51, 91, 11, 53, 9, 49, 79, 71, 81, 19, 75, 73, 47, 5, 81, 33, 97, 99, 95, 67, 57, 7, 9, 69, 61, 15]).
f([76, 92, 98, 78, 62, 28, 94, 14, 83, 55, 30, 55, 43, 11, 8, 49, 67, 96, 95, 64, 49]).
f([24, 17, 21, 39, 13, 37, 68, 59, 70, 71, 97, 81, 55, 46, 89, 61, 36, 81, 37, 93, 75, 11, 81, 45, 57, 23, 15, 4, 39, 53, 37, 41, 45, 12, 15, 17, 35, 95, 98, 54, 44, 1, 63, 97, 55]).
f([76, 90, 75, 76, 25, 73, 47, 3, 83, 41, 76]).
f([93, 77, 72, 14, 55, 17, 83, 49, 63, 43, 77, 1, 87, 33, 13, 30, 85]).
f([40, 68, 97, 9, 19, 89, 19, 63, 59, 1, 71, 93, 19, 73, 29, 31, 19, 89, 17, 21, 93, 73, 68, 45, 56, 85, 53, 61, 37, 27, 27, 63, 11, 85, 51, 81, 88, 93, 21, 23]).
:-end_in_neg.
