%%%-------------------------------------------------------------------
%%% @author Chris Duesing <chrisduesing@Chris-Duesings-MacBook-Pro.local>
%%% @copyright (C) 2010, Chris Duesing
%%% @doc
%%%
%%% @end
%%% Created :  5 Apr 2010 by Chris Duesing <chrisduesing@Chris-Duesings-MacBook-Pro.local>
%%%-------------------------------------------------------------------
-module(ccx_pricing).

-export([start/0, stop/0]).


ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.
        
%% @spec start() -> ok
%% @doc Start the simmoa server.
start() ->
    ensure_started(crypto),
    ensure_started(irlpact),
    application:start(ccx_pricing).

%% @spec stop() -> ok
%% @doc Stop the simmoa server.
stop() ->
    Res = application:stop(ccx_pricing),
    application:stop(irlpact),
    application:stop(crypto),
    Res.

