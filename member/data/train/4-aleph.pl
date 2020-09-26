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
f([96, 37, 83, 40, 90, 87, 25, 7, 84, 78, 11, 26, 32, 58, 17, 83, 22, 76, 14, 65, 34, 96, 13, 35, 55, 101, 33, 3, 46, 62, 55, 30, 60, 70, 28, 80, 71, 70, 80, 42, 98, 17, 7, 50, 47, 44, 65, 9, 26],44).
f([94, 5, 83, 88, 44, 34, 92, 57, 74, 72, 40, 94, 26, 32, 4, 58, 74, 39, 25, 53, 37],58).
f([92, 97, 8, 62, 65, 45, 90, 52, 85, 1, 27, 66, 60, 36, 49, 18, 19, 56, 96, 24, 70, 41, 101, 32, 91, 57, 99, 88, 77, 5, 71, 47, 2, 89, 75, 59, 78, 93, 45, 79, 11, 48, 97, 15, 76, 47, 99, 91, 64, 68],60).
f([50, 54, 58, 93, 101, 66, 21, 97, 39, 70, 62, 27, 52, 51, 92, 15, 30, 54, 89, 19, 52, 5, 70, 15, 12, 14, 34, 90, 12, 78, 8, 57, 8, 78, 46, 27, 95, 60, 24, 97],89).
f([68, 79, 61, 85, 18, 81, 78, 66, 96, 59],81).
f([18, 39, 94, 19, 24, 19, 18, 75, 69, 37, 98, 46, 68, 31, 11, 93, 2, 64, 71, 8, 33, 66, 70],2).
f([66, 44, 7, 96, 32, 34, 98, 18, 99, 27, 14, 9, 75],14).
f([93, 52, 12, 55, 36, 57, 67, 58, 73, 5, 86, 98, 73, 38, 86, 36, 38, 69, 53, 36, 52, 12, 47, 90, 67, 50, 89, 78, 33, 14, 86, 78, 22, 82, 54, 17, 97, 89, 78, 77, 21, 10, 71, 91, 4, 63],17).
f([92],92).
f([70, 25, 40, 50, 17, 80, 59, 73, 4, 94, 93, 49, 82, 85, 74, 15, 57, 49, 100, 5, 98, 34, 46, 30, 13, 24, 95, 5, 96, 42, 94, 92, 100, 67, 4, 92, 52, 69],50).
:-end_in_pos.
:-begin_in_neg.
f([8, 21, 96, 45, 23, 83, 60, 11, 93, 81, 27, 79, 83, 37, 33, 38, 23, 38, 70, 84, 98, 39, 35, 15, 80, 35, 8, 18, 44, 8, 68, 83, 26, 32, 58, 75, 53, 77, 44, 41, 78, 8, 46, 76, 18],56).
f([37, 11, 44, 50, 56, 6, 75, 76, 83],55).
f([50],10).
f([73, 4, 26, 22, 41, 61, 61],78).
f([76, 20, 73, 97, 80, 52, 51, 6, 3, 28, 4, 5, 26, 52, 85, 93, 2, 36],29).
f([66, 89, 97, 59, 99, 91, 76, 100, 99, 51, 34, 100, 76, 77, 50, 97, 72, 94, 8, 78, 74, 80, 97, 56, 71, 56, 33, 7, 44, 50, 32, 52, 80, 75, 22, 18, 11, 50, 97, 30, 70, 41, 67],36).
f([90, 20, 101, 2, 31, 34, 75, 12, 9, 32, 32, 28, 45, 46, 26, 3, 41, 13, 66, 92, 101, 54, 21, 54, 101, 6, 26, 62, 40, 79, 77, 6, 94, 37, 41, 25, 48, 28, 43, 43, 88, 12],59).
f([92, 77, 28, 14, 16, 39, 24, 2, 86, 35, 37, 50, 48, 100, 86, 93, 36, 11, 66, 32, 65, 25, 56, 88, 64, 18, 8, 80, 56, 61, 41, 19, 38, 84, 17, 35, 61, 41, 16, 55, 74],85).
f([46, 9, 5, 65, 76, 45, 54, 4, 3, 97, 64, 88, 31, 59, 77, 30, 41, 19, 31, 10, 95, 98, 45, 56, 96, 60, 9, 94, 32, 80, 12, 32, 64, 81, 44, 97, 95, 11, 71, 92],52).
f([12, 72, 67, 88, 25, 54, 59, 15, 38, 71, 98, 60, 17, 88, 23, 61, 27, 98, 84, 81, 71, 88, 16, 84, 5, 45, 93, 60, 57, 28, 62, 100, 37, 87, 48, 75, 94, 60, 17, 8, 31, 30, 6, 87, 17],99).
:-end_in_neg.
