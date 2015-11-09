-module(f008_for_loop).
-compile(export_all).

%If function for is called with first two arguments which are
%equal then call Function1 with that argument and return return
%value as a list.
for(Start, Start, Function1) -> [Function1(Start)];

%If Start and End are different and Start < End then call
%Function1 with Start and loop from Start+1 to End
for(Start, End, Function1) when Start < End -> [Function1(Start) | for(Start+1, End, Function1)];

% when followed by condition is called Guard. We can use guard to specify condition which must
% be satisfied for function part to be evaluated. If guard fails then next part of function
% body (if present) is tested against arguments and guard of next part is evaluated.

%If Start > End (We have already covered =, < above)
%then return error and ignore all the three parameters
for(_, _, _) -> {error, "Start should be less than End"}.

% We can also write last statement as
%  for(Start, End, _Function1) when Start > End -> {error, "Start should be less than End"}.
