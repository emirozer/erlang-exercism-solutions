-module(sum_of_multiples).

-export([sumOfMultiplesDefault/1, sumOfMultiples/2]).

sumOfMultiplesDefault(_) ->
    0.

sumOfMultiples(Multiples, _) when Multiples == []->
    0;
    
sumOfMultiples(Multiples, Range) ->
    Sequence  = [X || X <- lists:seq(1, Range - 1)],
    DivisibleSequence = get_divisible_sequence(Sequence, Multiples, []),
    sum(DivisibleSequence).

get_divisible_sequence(Sequence, Multiples, Summables) ->
    [H | T] = Multiples,
    NewSequence  = [X || X <- Sequence, X rem H == 0 ],
    if
        T =/= [] -> get_divisible_sequence(NewSequence, T, Summables ++ NewSequence);
        true -> Summables ++ NewSequence
    end.


sum(L) -> 
    sum(L, 0).

sum([H|T], Acc) -> 
    sum(T, H + Acc); 

sum([], Acc) ->
    Acc.
