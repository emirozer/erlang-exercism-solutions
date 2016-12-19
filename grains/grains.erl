-module(grains).

-export([square/1, total/0]).

square(N) ->
    {Result, _Rest} = string:to_integer(float_to_list(math:pow(2, N - 1),[{decimals,0}])),
    Result.

total() ->
    Sequence  = lists:seq(1, 64),
    lists:sum(lists:map(fun(N) -> square(N) end, Sequence)).
