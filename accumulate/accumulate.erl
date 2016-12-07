-module(accumulate).

-export([accumulate/2]).

accumulate(Fn, Ls) ->   
    [Fn(X) || X <- Ls].
