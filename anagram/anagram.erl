-module(anagram).

-export([find/2]).

find(AnagramTarget, Y) ->
    UnfilteredResult = [determine_anagram(AnagramTarget, X) || X <- Y],
    lists:filter(fun(X) -> X =/= [] end, UnfilteredResult).

is_anagram(X, Y) ->
    ExactSame = X =:= Y orelse string:to_lower(X) =:= string:to_lower(Y),
    AnagramTest = lists:sort(string:to_lower(X)) =:= lists:sort(string:to_lower(Y)),
    if
        ExactSame -> "";
        true -> AnagramTest
    end.

determine_anagram(X, Y) ->
    Result = is_anagram(X,Y),
    if
        Result =:= true -> Y;
        true -> ""
    end.
