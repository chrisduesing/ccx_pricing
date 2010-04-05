%% This is the application resource file (.app file) for the ccx_pricing,
%% application.
{application, ccx_pricing, 
  [{description, "Settlement Pricing Application For CCX Futures Markets"},
   {vsn, "0.1.0"},
   {modules, [
   	     ccx_irlpact_client,
   	     ccx_pricing,	
   	     ccx_pricing_app,
             ccx_pricing_sup
	     ]},
   {registered,[ccx_pricing_sup]},
   {applications, [kernel, stdlib, crypto, irlpact]},
   {mod, {ccx_pricing_app,[]}},
   {start_phases, []}]}.

