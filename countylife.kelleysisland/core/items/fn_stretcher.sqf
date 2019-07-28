#include "..\..\script_macros.hpp"
/*
    File: fn_stretcher.sqf

    Description:
    Creates a stretcher.
*/
private ["_Stretcher"];
if (!isNil "life_action_spikeStripPickup") exitWith {hint localize "STR_ISTR_SpikesDeployment"};    // avoid conflicts with addactions allowing duplication.
_Stretcher = "brancardch" createVehicle [0,0,0];
_Stretcher attachTo[player,[0,0.5,0]];
detach _Stretcher;
_Stretcher allowDamage false;
