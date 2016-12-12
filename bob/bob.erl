
-module(bob).

-export([response_for/1]).

response_for([]) -> "Fine. Be that way!";

response_for(Statement) ->
    [LastCharacter | _] = lists:reverse(Statement),
    UpperCaseResult = is_uppercase(Statement),
    StrippedResult = string:strip(Statement) =:= [],
    
    if
        StrippedResult -> "Fine. Be that way!";
        [LastCharacter] == "?" -> "Sure.";
        UpperCaseResult == true -> "Whoa, chill out!";
        true -> "Whatever."
    end.

is_uppercase(Statement) ->
    (string:to_upper(Statement) == Statement) andalso is_re_match(re:run(Statement, "[A-Z]+")).

is_re_match({match,_}) -> true;
is_re_match(_) -> false.
    
