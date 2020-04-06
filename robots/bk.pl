move_right(w(X1,Y,Size),w(X2,Y,Size)):-
    X1 < Size,
    X2 is X1+1.

move_left(w(X1,Y,Size),w(X2,Y,Size)):-
    X1 > 1,
    X2 is X1-1.

move_up(w(X,Y1,Size),w(X,Y2,Size)):-
    Y1 < Size,
    Y2 is Y1+1.

move_down(w(X,Y1,Size),w(X,Y2,Size)):-
    Y1 > 1,
    Y2 is Y1-1.