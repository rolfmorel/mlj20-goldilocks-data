%% size(5).
%% position(1..5).
%% f(V1) :- at_top(V1).
%% %time,43.11402916908264
%% #show f/1.

%% at_top(w(X,Y)):-
%%     position(X),
%%     size(Y).

%% move_right(w(Rx1,Ry),w(Rx2,Ry)):-
%%     position(Rx1),
%%     position(Rx2),
%%     position(Ry),
%%     Rx2 = Rx1 + 1.

%% move_left(w(Rx1,Ry),w(Rx2,Ry)):-
%%     position(Rx1),
%%     position(Rx2),
%%     position(Ry),
%%     Rx2 = Rx1 - 1.

%% move_up(w(Rx,Ry1),w(Rx,Ry2)):-
%%     position(Rx),
%%     position(Ry1),
%%     position(Ry2),
%%     Ry2 = Ry1 + 1.

%% move_down(w(Rx,Ry1),w(Rx,Ry2)):-
%%     position(Rx),
%%     position(Ry1),
%%     position(Ry2),
%%     Ry2 = Ry1 - 1.

%% at_top(w(X,Y)):-
%%     position(X),
%%     size(Y).

%% at_bottom(w(X,1)):-
%%     position(X).

%% at_left(w(1,Y)):-
%%     position(Y).

%% at_right(w(X,Y)):-
%%     position(Y),
%%     size(X).
