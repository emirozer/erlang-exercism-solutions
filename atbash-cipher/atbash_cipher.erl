-module(atbash_cipher).
-export([encode/1, decode/1]).

encode(Str) ->
    Normalized = normalizeString(Str),
    Encoded = encodeString(Normalized),
    Chunks = chunks(Encoded),
    string:join(Chunks, " ").

decode(Str) ->
    Normalized = normalizeString(Str),
    encodeString(Normalized).

encodeString(List) ->
    [encodeChar(X) || X <- List].


encodeChar(Char) when Char >= $a andalso Char =< $z ->
    $z - Char + $a;
encodeChar(Char) ->
    Char.


chunks(List) when length(List) > 5 ->
    {L1, L2} = lists:split(5, List),
    [L1] ++ chunks(L2);
chunks(List) ->
    [List].

normalizeString(Str) ->
    Lower = string:to_lower(Str),
    removeNonAlphanumeric(Lower).
removeNonAlphanumeric(Str) ->
    re:replace(Str, "[^A-Za-z0-9]", "", [global, {return, list}]).
