-module(strain).

-export([keep/2, discard/2]).

keep(Pred, Collection) ->
    [X || X <- Collection, Pred(X)].

discard(Pred, Collection) ->
    [X || X <- Collection, Pred(X) == false].
