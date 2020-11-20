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
:- determination(f/2,element/2).
:- determination(f/2,increment/2).
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
f([51, 59, 30, 84, 60, 86, 86, 9, 30, 40, 70, 72, 17, 15, 11, 56, 89, 25, 17, 45, 25, 49, 51, 65, 64, 75, 18, 6, 39, 62, 16, 80, 6, 47, 34, 87, 96, 21, 79, 2, 45, 34, 86, 69, 96, 9],46).
f([48, 38, 57],3).
f([98, 51, 8, 10, 34, 20, 83, 34, 27, 5, 29, 14, 12, 31, 25, 19, 27, 25, 55, 85, 53, 19, 73, 16, 52, 8, 77, 12, 35, 83, 30],31).
f([51, 59, 73, 93, 56, 22, 53, 91, 41, 51, 12, 35, 79, 88, 89, 48, 43, 25, 61, 6, 101, 96, 31, 80, 4, 21, 8, 98, 68, 87, 59, 10],32).
f([97, 33, 45, 47, 42, 89, 79, 27],8).
f([85, 96, 71, 87, 28, 101],6).
f([51, 50, 65, 37, 2, 75, 4, 46, 36, 4, 17, 40, 46, 68],14).
f([87],1).
f([66, 86, 82, 71, 79, 45, 31, 28, 86, 72, 55, 63, 1, 42, 101, 87, 80, 43, 40, 42, 28, 23, 56, 54, 47, 16, 5, 39, 8, 85, 90, 1, 87, 65, 81, 99, 31, 71],38).
f([57, 15, 26, 34, 66, 91, 69, 24, 31, 99, 69, 43, 3, 36, 66, 59, 81, 1, 35, 89, 24, 81, 55, 82, 47, 37, 19, 41, 54, 7, 44, 72, 94, 3, 63, 77, 21, 34, 45, 69, 54, 66, 74, 69, 57],45).
:-end_in_pos.
:-begin_in_neg.
f([48, 38, 93, 25, 73, 56, 97, 23],73).
f([92, 64],88).
f([9, 95, 11, 85, 87, 8, 51, 63, 76, 25, 18, 13, 59, 28, 33, 12, 87, 27, 29, 23, 31, 39, 78, 48, 37, 46, 50, 61, 2, 89, 65, 20, 46, 74, 24, 21, 2, 49, 91, 77, 20, 32, 49, 51, 6, 91],23).
f([99, 66, 57, 42, 69, 12, 55, 21, 64, 36, 15, 80, 99, 94, 21, 2, 37, 98, 6, 46, 67, 24, 72, 11, 80, 81, 32, 66, 38, 93, 88, 33, 36, 18, 15],86).
f([31, 78, 50, 10, 96, 8, 28, 51, 22, 28, 3, 10, 4, 11, 8, 12, 63, 40, 34, 13, 57, 10, 30, 81, 7, 74, 27, 1, 57, 70, 4, 89, 49, 74],13).
f([58, 76, 28],31).
f([71, 20, 44],37).
f([99, 51, 60, 54, 2, 96],29).
f([83, 17, 18, 92, 88, 41, 75, 99, 6, 76, 27, 95, 22],78).
f([39, 4, 46, 9, 3, 62, 63, 2, 6, 91, 101],33).
:-end_in_neg.
