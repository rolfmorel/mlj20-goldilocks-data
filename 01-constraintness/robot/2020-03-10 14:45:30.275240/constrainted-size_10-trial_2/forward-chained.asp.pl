%%%%%%%%%%%%%%%%%%%%%%%%
% Enforce forward-chaining langauge bias
%%%%%%%%%%%%%%%%%%%%%%%%

% variables in a literal are exact successors
:- LitIdx>1,var(ClIdx,LitIdx,VarPos1,Var1),var(ClIdx,LitIdx,VarPos2,Var2),VarPos2 > VarPos1,Var2 > Var1 + 1,NextLit = LitIdx + 1,literal(ClIdx,NextLit,_,_).
:- LitIdx>1,var(ClIdx,LitIdx,VarPos1,Var1),var(ClIdx,LitIdx,VarPos2,Var2),VarPos2 > VarPos1,Var2 = Var1,NextLit = LitIdx + 1,literal(ClIdx,NextLit,_,_).
:- LitIdx>1,var(ClIdx,LitIdx,VarPos1,Var1),var(ClIdx,LitIdx,VarPos2,Var2),VarPos2 > VarPos1,Var2 < Var1 - 1,NextLit = LitIdx + 1,literal(ClIdx,NextLit,_,_).

% this hard codes binary chaining
:- LitIdx1>0,var(ClIdx,LitIdx1,1,Var1),var(ClIdx,LitIdx2,0,Var2),Var1 != Var2,LitIdx2 = LitIdx1 + 1.
