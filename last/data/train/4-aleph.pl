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
f([33, 2, 40, 70],70).
f([87, 6, 59, 32, 60, 56, 80, 73, 50, 66, 36],36).
f([92],92).
f([84, 42, 2, 49, 75, 7, 26],26).
f([88, 58, 27, 12, 42, 76, 73, 58, 73, 76, 45, 4, 89, 74, 33, 17, 79, 2, 38, 12, 70, 70, 2, 8, 74, 52, 65, 3, 57, 34, 20, 92, 82, 100, 25, 74, 49, 86, 14, 12, 57, 45, 12, 29, 70, 19, 81, 61, 94, 59],59).
f([58, 38, 70, 19, 41, 91, 68, 62, 42, 6, 86, 82, 23, 11, 3, 99, 71, 73, 29, 65, 98, 94, 96, 89, 25, 21, 20, 39, 14],14).
f([61, 69, 98, 58, 59, 60],60).
f([59, 12, 10, 23, 51, 2, 86, 20, 83, 71, 100, 100, 2, 54, 57, 31, 15, 11, 92, 33, 70, 77, 78, 38, 20, 96, 10, 29, 5, 84, 46, 65, 79, 14, 50, 31, 56, 59, 40, 82, 6, 38],38).
f([18, 67, 1, 34, 92, 67, 99, 61, 49, 53, 89],89).
f([18, 27, 81, 40, 13, 67, 39, 21, 68, 66, 97, 41, 49, 23, 95, 44, 62, 86, 70, 7, 85, 94, 71, 33, 42, 70, 30, 33, 65, 90, 95, 76, 84, 27, 73, 22, 64, 57, 52, 41, 31, 14, 72, 14, 9, 48, 76, 17, 75, 93, 89],89).
:-end_in_pos.
:-begin_in_neg.
f([19, 21, 24, 35, 66],35).
f([88, 74, 60, 37, 3, 44, 50, 2, 86, 64, 27, 22, 45, 95, 63, 85, 24, 95, 73, 84, 54, 96, 24, 98, 49, 95, 30, 11, 59, 35, 51, 19, 66, 91, 40, 90, 41, 55, 47, 27, 75, 29, 81, 16, 50, 85],45).
f([93, 88, 15, 38, 4, 51, 101, 81, 82, 50, 79, 89, 11, 68],93).
f([19, 55, 79, 59, 50, 8, 12, 66, 69, 11, 27, 20, 98, 72, 8, 38, 68, 45, 26, 1, 25, 38, 15, 69, 20, 34, 29, 91, 61, 82, 89, 16, 14, 29, 30, 22, 92, 28, 90, 6],72).
f([57, 48, 69, 82, 8, 86, 80, 24, 43, 40, 28, 92, 19, 36, 85, 76, 54, 51, 31, 43, 61],43).
f([83, 2, 68, 52, 13, 53, 45, 19, 11, 45, 43, 64, 14, 82, 41, 93, 80, 1],83).
f([65, 7, 62, 82, 64, 70, 63, 32, 90, 40, 9, 7, 11, 3, 13, 56, 95, 17, 12, 87, 7, 11, 7, 41, 80, 43, 27, 66, 51, 44, 65, 65, 94, 85],41).
f([75, 32, 85, 44, 50, 6, 64, 30, 72, 34, 1, 89, 60, 17, 38, 54, 44, 91, 61, 26, 78, 85, 60, 19, 47, 74, 19, 39, 70, 3, 38, 55, 23, 58, 69, 62, 93, 82, 10, 42, 72, 3, 21, 16],42).
f([47, 23, 40, 57, 84, 74, 12, 22, 75, 48, 67],47).
f([40, 1, 1, 83, 89, 99, 7, 90, 10, 26, 81, 97],1).
:-end_in_neg.
