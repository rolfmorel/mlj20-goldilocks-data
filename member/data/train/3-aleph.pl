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
f([55, 63, 92, 7, 50, 92, 93],7).
f([93, 58, 48, 100, 93, 10, 11, 63, 35, 7, 53, 2, 64, 3, 49, 1, 2, 46, 26, 43, 3, 94, 44, 66, 100, 67, 36, 27, 80, 24, 79, 77, 22, 39, 57, 19, 15, 64, 12, 13, 19, 100, 75, 67, 18, 15, 96, 81, 17],35).
f([56, 26, 58, 94, 67, 34, 69, 59, 68, 72, 65, 27, 37, 76, 100, 69, 13, 94, 6, 98, 55, 46, 74, 34, 36, 76, 99, 31, 18, 75, 28, 6, 71, 56, 19, 78, 46, 29, 73, 45, 47, 57, 15, 38, 79, 95, 94, 23],98).
f([101],101).
f([45, 46, 96, 23, 11, 17, 78, 70, 92, 77, 90, 32, 3, 63, 36, 66],36).
f([33, 93, 50, 64, 74, 30, 24, 82, 26, 5, 60, 15, 84, 38, 17, 17, 30, 8, 65, 17, 59, 97, 90, 25, 60, 54, 27, 63, 8, 7, 42, 89, 98, 26, 66, 58, 10, 73, 68, 38, 77, 70, 5, 15, 81, 23, 44, 99, 9, 7],17).
f([1, 75, 43],75).
f([54, 38, 53, 3, 41, 14, 53, 42, 66, 59, 88, 26, 43, 28, 34, 33, 56, 96, 42, 50, 3, 19, 88, 95, 5, 36, 76, 15, 60, 86, 8, 40, 47, 88, 32, 58, 15, 83, 2],53).
f([84, 22, 10, 15, 3, 81, 52, 30, 21, 100, 21, 98, 68, 42, 70, 10, 47, 21, 78, 19, 89, 5, 19, 66, 43],47).
f([92, 26, 57, 20, 65, 73, 75, 100, 75, 68, 75, 100, 55, 30, 4, 49, 3, 42, 87, 90, 77, 67, 1, 23, 27],100).
:-end_in_pos.
:-begin_in_neg.
f([90, 34, 17, 97, 80, 34, 83, 93, 48, 8, 12, 65, 5, 46, 20, 71, 55, 52, 32, 8, 10, 39, 65, 46, 35, 14, 35, 98, 57, 72],28).
f([33, 74, 82, 24, 2, 67, 83, 72, 10, 33, 21, 55, 69, 73, 33, 73, 60, 94, 50, 30, 53, 52, 77, 67, 33, 63, 78, 65, 44, 62, 8, 61, 13, 51, 20, 27, 100, 51, 50, 68, 81, 1, 94, 81],98).
f([89, 19, 77, 35, 76, 101, 36, 63, 83, 70, 95, 14, 50, 31, 52, 4, 58, 60, 91, 98, 72, 8, 59, 89, 49, 8, 85, 82, 57, 46, 90, 60, 99, 85, 24, 28, 53, 49, 100, 76, 82, 13, 51, 7, 42, 51, 69, 33, 48, 69],74).
f([56, 42, 65, 82, 72, 41, 91, 11, 54, 80, 81, 32, 24, 80, 14, 23, 67, 87, 54, 70],78).
f([39, 38, 36, 63, 40, 100, 29, 91, 87, 36, 95, 90, 95, 18, 76, 95, 43],8).
f([46, 46, 61, 51, 18],77).
f([22, 46, 99, 99, 84, 71],98).
f([50, 70, 13, 52, 59, 15, 7, 76, 58, 30, 23, 46, 81, 67, 83, 25, 46],31).
f([54, 37, 59, 94, 70, 13, 70, 30, 79, 15, 82, 30, 36, 37, 97, 82, 68, 51, 66, 92, 43, 34, 4, 44, 20, 71, 10, 76, 41, 59, 68, 73, 11, 101, 83, 41],100).
f([56, 81, 89, 77, 15, 70, 80, 27, 100, 63, 60, 8, 68, 90, 1, 99, 93, 76, 50, 61, 93, 101, 83, 90],88).
:-end_in_neg.
