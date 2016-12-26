-module(phone).

-export([number/1, pretty_print/1, areacode/1]).

number(Number) ->
    OnlyDigits = lists:filter(fun(X) -> re:run([X], "^[0-9]*$") =/= nomatch  end, Number),
    PhoneNumberLength = length(OnlyDigits),
    [FirstCode | _] = OnlyDigits,
    if
        PhoneNumberLength == 11 andalso [FirstCode] ==  "1" ->
            lists:subtract(OnlyDigits, "1");
        PhoneNumberLength == 10 -> OnlyDigits;
        true -> "0000000000"
    end.
    
areacode(Number) ->
    ProcessesedNumber = number(Number),
    lists:sublist(ProcessesedNumber, 3).

pretty_print(Number) -> 
    ProcessesedNumber = number(Number),
    {AreaCode, Tel} = lists:split(3, ProcessesedNumber),
    {Tel1, Tel2} = lists:split(3, Tel),
    "(" ++ AreaCode ++ ") " ++ Tel1 ++ "-" ++ Tel2.    
