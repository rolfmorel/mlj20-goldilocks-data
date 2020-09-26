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
f([64, 91, 77, 16, 22, 6, 55, 9, 56, 73, 54, 83, 14, 51, 52, 84, 33, 62, 16],16).
f([43, 43, 88],43).
f([23, 49, 75, 64, 82, 31, 1, 59, 46, 34, 46, 98, 18, 22, 27, 92, 65, 57, 40, 16, 50, 17, 1, 12, 54, 59, 44, 43, 44, 11, 40, 78, 88, 22, 82, 88, 82, 33, 4, 67, 87, 53, 80, 54, 4, 82, 18],82).
f([71, 71, 8, 12, 19],71).
f([89, 64, 27, 42, 50, 98, 4, 76, 37, 12, 9, 36, 52, 97, 11, 93, 3, 53, 100, 78, 101, 36, 92, 87, 59, 31, 68, 76, 83, 4, 34],76).
f([62, 93, 50, 34, 84, 58, 74, 73, 85, 84, 82, 28, 86, 15],84).
f([55, 4, 61, 87, 64, 69, 43, 10, 68, 56, 53, 34, 98, 47, 75, 43, 43, 55, 22, 25, 4, 44, 19, 54, 64, 31, 75, 6, 39, 75, 101, 42, 100, 19, 66, 31, 86, 53, 40, 23, 45, 32, 2, 67, 98],75).
f([79, 4, 5, 82, 28, 7, 7, 7, 98, 23, 49, 41, 64, 75, 79, 5, 66, 74, 7, 33, 101, 94, 18, 86, 10, 78],7).
f([84, 44, 84, 26, 44, 74, 96, 24, 79],84).
f([61, 19, 59, 52, 84, 23, 10, 46, 1, 43, 94, 60, 13, 85, 52, 16, 64, 29, 33, 14, 26, 20, 44, 20, 2, 8, 51, 34, 70, 11, 56, 69, 13, 56, 9, 34, 47, 33, 85, 19, 74, 51, 43, 43, 93, 79, 3, 82, 23, 12, 51, 23],56).
:-end_in_pos.
:-begin_in_neg.
f([76, 45, 73, 41, 29, 52, 78, 27, 99, 79, 94, 47, 48, 61, 4, 33, 98, 77, 70, 47, 83, 88, 36, 57, 3, 96, 73, 97, 1],57).
f([63, 67, 24, 17, 54, 63, 37, 72, 21, 71, 99, 60, 19, 68, 90, 18, 19, 11, 25, 97, 86, 82],37).
f([49, 37, 15, 12, 57, 8, 36, 93, 4, 38, 17, 1, 34, 2, 80, 8, 24, 87, 45, 86, 46, 34, 97, 70, 73, 30, 62, 95, 54, 33, 88, 74, 18, 49, 92, 38, 87, 59, 5, 31, 50],4).
f([18, 18, 32, 34, 27, 15, 97, 15, 50, 23, 79, 22, 93, 48, 77, 40, 87],79).
f([8, 62, 37, 92, 20, 14, 28, 32, 37, 89, 87, 6, 2, 85, 60, 96, 55, 61, 12, 90, 32, 90, 88, 94, 74, 14, 14, 12, 93, 51, 99, 33, 37, 21, 29, 90, 99, 64, 40, 75],60).
f([97, 68, 54, 63, 99, 37, 26, 36, 83, 56, 76, 23, 76, 31, 70, 76],31).
f([81, 76, 91, 64, 100, 8, 68, 80, 54, 35, 83, 39, 85, 95, 26, 4, 12, 78, 45, 8, 59, 20],80).
f([78, 83, 46, 99, 37, 84, 14, 68, 27, 69, 37, 1, 37, 23, 4, 83, 45, 92, 56, 34, 78, 10, 21, 70, 1],21).
f([12, 32, 79, 36, 55, 34, 94, 70, 29, 31, 43, 20, 54, 29, 70, 97, 54, 59, 93, 16, 20, 79, 9],9).
f([57, 53, 27, 28, 65, 65, 46, 74, 9, 70, 58, 98, 64, 86, 88, 2, 1, 21, 56, 95, 95, 4, 66, 65, 90, 22, 66, 100, 96, 49, 15, 86],49).
:-end_in_neg.
