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
:- modeh(*,f(+list,-list)).
:- modeb(*,f(+list,-list)).
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
%% :- determination(f/2,increment/2).
%% :- determination(f/2,element/2).
:- determination(f/2,cons/3).
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
f([87, 17, 47, 4],[87, 87, 87, 87, 17, 47, 4]).
f([37, 17, 61, 13, 39, 22, 10, 39, 11, 15, 79, 69, 36, 62, 85, 4, 81, 14, 98, 14, 7, 44, 6, 97, 96, 37, 58, 16, 88, 35, 24, 70, 101, 7, 9, 33, 5, 83, 89, 73, 90],[37, 37, 37, 37, 17, 61, 13, 39, 22, 10, 39, 11, 15, 79, 69, 36, 62, 85, 4, 81, 14, 98, 14, 7, 44, 6, 97, 96, 37, 58, 16, 88, 35, 24, 70, 101, 7, 9, 33, 5, 83, 89, 73, 90]).
f([49, 44, 88, 13, 74, 24, 15, 28, 100, 20, 38, 60, 44, 53, 61, 47, 87, 87, 2, 60, 95, 80, 69, 22, 76, 41, 95, 30, 43, 93, 41, 91, 18, 51, 70, 16, 86, 24, 87, 95],[49, 49, 49, 49, 44, 88, 13, 74, 24, 15, 28, 100, 20, 38, 60, 44, 53, 61, 47, 87, 87, 2, 60, 95, 80, 69, 22, 76, 41, 95, 30, 43, 93, 41, 91, 18, 51, 70, 16, 86, 24, 87, 95]).
f([99, 91, 34, 68, 74, 8, 66, 15, 25, 24],[99, 99, 99, 99, 91, 34, 68, 74, 8, 66, 15, 25, 24]).
f([18, 3, 93, 93, 60, 99, 88, 15, 62, 14, 40, 11, 84, 21, 90, 5, 16, 63, 46, 75, 27, 35, 42, 18, 2, 55, 14, 1],[18, 18, 18, 18, 3, 93, 93, 60, 99, 88, 15, 62, 14, 40, 11, 84, 21, 90, 5, 16, 63, 46, 75, 27, 35, 42, 18, 2, 55, 14, 1]).
f([32, 17, 26, 97, 84, 98, 92, 99, 33, 11, 13, 16, 22, 25, 91, 32, 85, 67, 23, 74, 95, 47, 33, 42, 13, 59, 26, 4, 100, 60, 61, 19, 91, 74, 11, 18, 94, 50, 9, 43, 90, 36, 69, 46, 83, 100, 42, 11, 25, 73],[32, 32, 32, 32, 17, 26, 97, 84, 98, 92, 99, 33, 11, 13, 16, 22, 25, 91, 32, 85, 67, 23, 74, 95, 47, 33, 42, 13, 59, 26, 4, 100, 60, 61, 19, 91, 74, 11, 18, 94, 50, 9, 43, 90, 36, 69, 46, 83, 100, 42, 11, 25, 73]).
f([34, 22, 59, 100, 96, 92, 96, 89, 11, 10, 13, 5, 42, 100, 65, 6, 31, 11, 50, 52, 78, 52, 95, 18, 85, 59, 60, 61, 18, 12],[34, 34, 34, 34, 22, 59, 100, 96, 92, 96, 89, 11, 10, 13, 5, 42, 100, 65, 6, 31, 11, 50, 52, 78, 52, 95, 18, 85, 59, 60, 61, 18, 12]).
f([46, 65, 16, 92, 27, 30, 82, 68, 60, 26, 58, 40, 42, 66, 97, 15, 61, 74, 15, 66, 70, 41, 19, 48, 36, 69, 95, 29, 91, 89, 18, 32, 72, 7, 55, 19, 13, 38],[46, 46, 46, 46, 65, 16, 92, 27, 30, 82, 68, 60, 26, 58, 40, 42, 66, 97, 15, 61, 74, 15, 66, 70, 41, 19, 48, 36, 69, 95, 29, 91, 89, 18, 32, 72, 7, 55, 19, 13, 38]).
f([20, 4, 31, 34, 16, 24, 33, 46, 17, 74, 69, 15],[20, 20, 20, 20, 4, 31, 34, 16, 24, 33, 46, 17, 74, 69, 15]).
f([84, 76, 20],[84, 84, 84, 84, 76, 20]).
:-end_in_pos.
:-begin_in_neg.
f([18, 14, 2, 23, 96, 95, 28, 51, 22, 63],[18, 14, 2, 23, 96, 95, 28, 51, 22, 63]).
f([10, 42, 33, 31, 4, 97, 8, 40, 10, 56, 33, 29, 101, 52, 59, 37, 8, 18, 60, 28, 16, 98, 87, 39, 22, 3, 48, 41, 72, 44, 4, 19, 77, 47, 96, 25, 9, 49, 13, 27, 79, 88, 39],[10, 42, 33, 31, 4, 97, 8, 40, 10, 56, 33, 29, 101, 52, 59, 37, 8, 18, 60, 28, 16, 98, 87, 39, 22, 3, 48, 41, 72, 44, 4, 19, 77, 47, 96, 25, 9, 49, 13, 27, 79, 88, 39]).
f([98, 52, 20, 91, 34, 96, 21, 18, 68, 7, 50, 93, 15, 77, 36],[98, 52, 20, 91, 34, 96, 21, 18, 68, 7, 50, 93, 15, 77, 36]).
f([43, 40, 39, 60, 33, 64, 15, 92, 77],[43, 40, 39, 60, 33, 64, 15, 92, 77]).
f([12, 98, 2, 49, 59, 71, 21, 15, 45, 40, 92],[12, 98, 2, 49, 59, 71, 21, 15, 45, 40, 92]).
f([13, 65, 13, 17, 60, 77, 88, 42, 6, 37, 30, 46, 90, 24, 51, 38, 61, 75, 36, 21, 23, 23],[13, 65, 13, 17, 60, 77, 88, 42, 6, 37, 30, 46, 90, 24, 51, 38, 61, 75, 36, 21, 23, 23]).
f([35, 72, 71, 87, 64, 79, 82, 12],[35, 72, 71, 87, 64, 79, 82, 12]).
f([98, 19, 13, 79, 2, 40, 76, 87, 100, 83, 42, 40, 34, 15, 7, 9, 33, 7, 16, 77, 23, 31, 27, 30, 39, 26, 43, 90, 11, 24, 30, 2, 80, 98, 80, 95, 5, 49, 22, 90, 58, 99, 81, 10],[98, 19, 13, 79, 2, 40, 76, 87, 100, 83, 42, 40, 34, 15, 7, 9, 33, 7, 16, 77, 23, 31, 27, 30, 39, 26, 43, 90, 11, 24, 30, 2, 80, 98, 80, 95, 5, 49, 22, 90, 58, 99, 81, 10]).
f([24, 33, 39, 75, 95, 21, 19, 93, 54, 96, 87, 2, 50, 52, 95, 53, 55, 72, 33, 60, 31, 10, 67, 77, 75, 19, 94, 86, 6, 2, 80, 22, 84, 84, 76, 92, 21, 55, 48, 92, 5, 31, 8, 32, 36],[24, 33, 39, 75, 95, 21, 19, 93, 54, 96, 87, 2, 50, 52, 95, 53, 55, 72, 33, 60, 31, 10, 67, 77, 75, 19, 94, 86, 6, 2, 80, 22, 84, 84, 76, 92, 21, 55, 48, 92, 5, 31, 8, 32, 36]).
f([14, 16, 42, 82, 89, 49, 35, 41, 6, 81, 99, 3, 66, 59, 46, 36, 52, 64, 1, 49, 86, 99],[14, 16, 42, 82, 89, 49, 35, 41, 6, 81, 99, 3, 66, 59, 46, 36, 52, 64, 1, 49, 86, 99]).
:-end_in_neg.
