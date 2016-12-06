-module(leap).

-export([leap_year/1]).

leap_year(Year) ->
    if  
        (Year rem 4 == 0) and (Year rem 100 == 0) -> Result = (Year rem 400 == 0);   
        Year rem 4 == 0 -> Result = Year rem 100 =/= 0 ;
        true -> Result = false
    end,
    Result.

