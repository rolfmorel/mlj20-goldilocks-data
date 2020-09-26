:-[bk].

timeout(2).

a:-
    forall(
        (prog(Prog), pos(S1,S2)),
        loss(Prog,S1,S2)).


loss(Prog,S1,S2):-
    timeout(Timeout),
    catch(
        call_with_time_limit(Timeout,
            (f(Prog,S1,S3),!,format('~d-~p-~p-\n',[Prog,S3,S2]))),
        time_limit_exceeded,false),!.
loss(_Prog,_A,_B).
    %% format('~d-~p-~p-\n',[Prog,A,B]).