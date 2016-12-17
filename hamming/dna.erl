-module(dna).

-export([hamming_distance/2]).

hamming_distance(X, Y) when X == Y andalso 
                            length(X) =/= length(Y)->
    0;

hamming_distance(X,Y) ->
    calc_mutations(X, Y, 0).

calc_mutations([XH|XT], [YH|YT], Acc) ->
    if 
        XH =/= YH ->
            calc_mutations(XT, YT, Acc + 1);
        true -> calc_mutations(XT, YT, Acc)
    end;

calc_mutations([], [], Acc) ->
    Acc.
