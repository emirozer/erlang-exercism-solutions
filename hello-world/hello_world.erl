-module(hello_world).

-export([greet/0, greet/1]).

greet(Entity) ->
    "Hello, " ++ Entity ++ "!".

greet() ->
    "Hello, World!".
