-module(sum_of_multiples).

-export([sumOfMultiplesDefault/1, sumOfMultiples/2]).

sumOfMultiplesDefault(_) ->
    0.

sumOfMultiples(Multiples, _) when Multiples == []->
    0;
    
sumOfMultiples(Multiples, Range) ->
    Sequence  = [X || X <- lists:seq(1, Range - 1)],
    DivisibleSequence = get_divisible_sequence(Sequence, Multiples, []),
    %% This solution with removing duplicates before summing works fine
    %% should make it that there are no duplicates, in the second iteration
    lists:sum(remove_duplicates_from_list(DivisibleSequence)).

get_divisible_sequence(Sequence, Multiples, Summables) ->
    [H | T] = Multiples,
    NewSequence  = [X || X <- Sequence, X rem H == 0 ],
    if
        T =/= [] -> get_divisible_sequence(Sequence, T, Summables ++ NewSequence);
        true -> Summables ++ NewSequence
    end.

remove_duplicates_from_list(X) ->
    sets:to_list(sets:from_list(X)).
