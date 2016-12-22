-module(dna).

-export([count/2, nucleotide_counts/1]).

-define(ADENINE, "A").
-define(CYTOSINE, "C").
-define(GUANINE, "G").
-define(THYMINE, "T").
-define(NUCLEOTIDE_SEQUENCE, [?ADENINE, ?CYTOSINE, ?GUANINE, ?THYMINE]).


count(Dna, Nucleotide) ->
    case lists:member(Nucleotide, ?NUCLEOTIDE_SEQUENCE) of
        true ->
            length(lists:filter(fun(X) -> [X] == Nucleotide end, Dna));
        false ->
            erlang:error("Invalid nucleotide")
    end.

nucleotide_counts(Dna) ->
    [{?ADENINE, count(Dna, ?ADENINE)}, {?THYMINE, count(Dna, ?THYMINE)},
     {?CYTOSINE, count(Dna, ?CYTOSINE)}, {?GUANINE, count(Dna, ?GUANINE)}].
