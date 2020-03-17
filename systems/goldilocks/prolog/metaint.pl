%head([Hd|_],Hd).

:- dynamic prog/2.

%prog((1,0,f,[List,Res]),[(1,1,head,[List,a]),(1,2,=,[List,[Res]])]).
%prog((2,0,f,[[Hd|Tl],Res]),[(2,1,head,[[Hd|Tl],a]),(2,2,head,[Tl,a]),(2,3,f,[Tl,Res])]).
%prog((1, 0, f, [V0,V1]),[(1, 1, move_down, [V0,V1])]).

pos_input(Orig,InpAtom)
:-
    Orig =.. [Pred|Args],
    modeh(Pred,Arity),
    findall(Arg,(between(0,LastArg,Idx),(direction(Pred,Idx,in)->nth0(Idx,Args,Arg);true)),InArgs),
    InpAtom =.. [Pred|InArgs].

%mode(prove(+[AnnotatedAtom],-[Failures]),det)
prove([],[success]).
prove([Atom|Atoms],Failures)
:-
    prove_aux(Atom,AuxFails),
    (AuxFails = [success] -> 
	prove(Atoms,Failures)
	;
        Failures = AuxFails
        ).

:- discontiguous prove_aux/2.

%mode(prove_aux(+AnnotatedAtom,-[Failures]),det)
prove_aux((ClId,LitId,f,Args),Failures)
:-
    !,
    findall(Fails,
            prove_aux_nondet((ClId,LitId,f,Args),Fails),
            ClauseFailures),
    (ClauseFailures = [] -> 
        Failures = [failureProg((ClId,LitId,f,Args))]
        ; 
        flatten(ClauseFailures,FlatFailures),
        (last(FlatFailures,success) -> 
            Failures = [success]
            ;
            Failures=FlatFailures)).

%mode(prove_aux_nondet(+AnnotatedAtom,-[Failures]),nondet)
prove_aux_nondet((_,_,f,Args),Failures)
:-  
    !,
%    writeln("prove_aux-invented"),
    prog((_,_,f,Args),Body),
%    writeln(body(Body)),
    prove(Body,Failures),
    (Failures = [success] ->
        !
        ;
        true).

prove_aux((ClId,LitId,Pred,Args),Failures)
:-
    Goal =.. [Pred|Args],
%    writeln("prove_aux-call"),
%    writeln(goal(Goal)),
    (call(Goal) *-> 
        Failures = [success]
        ;
        (
%        writeln(failureCall(ClId,LitId,Pred,Args)),
         Failures = [failureCall(ClId,LitId,Pred,Args)])).
