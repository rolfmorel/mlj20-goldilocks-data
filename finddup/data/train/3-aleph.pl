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
f([69, 2, 101, 17, 18, 95, 56, 1, 56, 20, 17, 56, 52, 23, 95, 64, 7, 98, 88, 2, 101, 42, 6, 20, 62, 20, 62, 30, 1, 40, 26],20).
f([38, 58, 35, 19, 26, 101, 36, 37, 4, 64, 97, 53, 94, 58, 78, 100, 83, 69, 31, 26, 79, 74, 38, 12, 94, 78, 64, 42, 98, 38, 11, 59, 53, 56, 62, 67, 3, 16, 89, 66, 94, 38],26).
f([88, 23, 27, 46, 43, 26, 82, 93, 14, 11, 28, 56, 26, 12, 51, 23, 94, 62, 66, 34],26).
f([13, 78, 83, 78, 83, 20, 40, 88, 1, 73, 57, 52, 72, 6, 48, 20, 16, 84, 60, 53, 69, 91, 17],20).
f([58, 100, 86, 58, 100, 1, 3],100).
f([88, 18, 95, 65, 59, 4, 24, 94, 4, 80, 42, 17, 75, 70, 46, 24, 24, 37, 47, 71, 31, 51, 21, 13, 100, 29, 56, 13, 37, 18, 71, 85, 57, 70, 85, 90, 49, 67, 87, 51, 57, 47, 13, 59, 1, 66, 91, 97],24).
f([61, 97, 44, 21, 95, 95, 31, 72, 74, 59, 99, 93, 99, 97, 96, 16, 34, 13, 91, 76, 62, 1, 101, 51],97).
f([81, 78, 85, 14, 44, 4, 86, 75, 85, 78, 70, 71, 43, 73, 44, 43, 52, 47, 2, 35, 16, 14, 72, 82, 31, 13, 53, 16, 46, 40, 54, 93, 89, 72, 1, 13, 1, 71, 12, 28, 73, 6, 2, 24, 42, 40, 6, 20, 16, 26, 99],1).
f([91, 1, 76, 33, 65, 38, 44, 11, 66, 64, 56, 20, 14, 51, 44, 18, 81, 82, 10, 31, 48, 54, 88, 65, 96, 10, 79, 13, 42, 26, 12],10).
f([6, 87, 26, 62, 8, 29, 2, 8, 83, 76, 68, 12],8).
:-end_in_pos.
:-begin_in_neg.
f([20, 87, 40, 16, 56, 25, 60, 91, 71, 15, 16, 86, 87, 48, 14, 88, 6, 85],20).
f([50, 84, 21, 29, 41, 64, 58, 19, 9, 65, 53, 37, 62, 8, 6, 7, 28, 87, 78, 80, 43, 99, 97, 50, 52, 92, 68, 20, 43, 18, 74, 42, 5, 64, 93, 38, 89, 98, 11, 37, 61, 32, 46, 57, 1, 88, 23, 24, 85, 6],84).
f([58, 15, 80, 9, 76, 4, 98, 39, 94, 16, 66, 5, 13, 60, 59, 74, 18, 28, 60, 101, 36, 3, 24, 72, 25, 67, 26, 69, 9, 42, 84],80).
f([100, 22, 51, 58, 11, 11, 90, 67, 80, 14, 57, 59, 63, 61, 72, 60, 70, 61],22).
f([15, 31, 82, 20],31).
f([79, 43, 71, 74, 31, 57, 74],31).
f([23, 95, 70, 4, 54, 3, 96],70).
f([42, 96, 85, 20, 97],42).
f([3, 60, 76, 37, 24, 86, 41, 80, 45],37).
f([86, 46, 3, 47, 71, 15, 83, 13, 32, 4, 67, 41, 101, 38, 46, 19, 98, 39, 39, 79, 73],83).
:-end_in_neg.
