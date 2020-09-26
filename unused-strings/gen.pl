max_vars(3).
max_body(2).
max_clauses(2).

modeh(f,2).
modeb(drop,2).
modeb(right,2).
%% modeb(left,2).
modeb(make_uppercase,2).
modeb(make_lowercase,2).
modeb(is_letter,1).
%% modeb(not_letter,1).
modeb(is_uppercase,1).
%% modeb(not_uppercase,1).
modeb(is_space,1).
%% modeb(not_space,1).
modeb(is_number,1).
%% modeb(not_number,1).
modeb(at_start,1).
modeb(at_end,1).
modeb(f,2).

%% b35_0(A,B):-right(A,C),drop(C,B).
%% b35_1(A,B):-is_space(A),right(A,B).
%% b35_1(A,B):-drop(A,C),b35_1(C,B).
%% b35(X0,X1):-b35_0(X0,X2),b35_1(X2,X1).



pred(P):-
    modeh(P,_).
pred(P):-
    modeb(P,_).
type(P,0,list):-
    pred(P).
type(P,1,list):-
    pred(P).

%% type_(P,list,list).
%% type_(P,list).

%% irreflexive(head).
%% irreflexive(tail).
%% irreflexive(last).
%% irreflexive(dropLast).
%% irreflexive(make_uppercase).
%% irreflexive(make_lowercase).
%% irreflexive(word_to_list).

%% functional(head).
%% functional(tail).
%% functional(last).
%% functional(dropLast).
%% functional(make_uppercase).
%% functional(make_lowercase).
%% functional(word_to_list).

%% #show type/3.
%% :-
    %% literal(Clause,Literal1,f,2),


:-
    literal(0,Literal1,_,1),
    Literal1 > 0,
    not clause(1).

%% %% %% force tail recursion
:-
    clause(Clause),
    literal(Clause,Literal1,f,2),
    Literal1 > 0,
    literal(Clause,Literal2,_,_),
    Literal2 > Literal1.

:-
    clause(Clause1),
    literal(Clause1,Literal1,f,2),
    Literal1 > 0,
    clause(Clause2),
    Clause1 != Clause2,
    not clause(Clause2).

:-
    literal(0,Literal1,f,2),
    Literal1 > 0.

:-
    var(Clause,_,_,Var),
    #count{Literal:
        literal(Clause,Literal,_,2),
        var(Clause,Literal,_,Var)
    } != 2.