-module(rna_transcription).

-export([to_rna/1]).

-define(ADENINE, "A").
-define(CYTOSINE, "C").
-define(GUANINE, "G").
-define(THYMINE, "T").
-define(URACIL, "U").

to_rna(X) when length(X) == 1 -> 
    if
        X == ?ADENINE -> ?URACIL;
        X == ?CYTOSINE -> ?GUANINE;    
        X ==  ?GUANINE -> ?CYTOSINE;
        X == ?THYMINE -> ?ADENINE
    end;

to_rna(X) when length(X) > 1 ->
    lists:flatten(lists:map(fun(L) -> to_rna([L]) end, X)).
