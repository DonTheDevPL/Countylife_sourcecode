#include "..\..\script_macros.hpp"
/*
    File: fn_knockedOut.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Starts and monitors the knocked out state.
*/
private "_obj";
params [
    ["_target",objNull,[objNull]],
    ["_who","",[""]]
];

if (isNull _target) exitWith {};
if !(_target isEqualTo player) exitWith {};
if (_who isEqualTo "") exitWith {};

titleText[format [localize "STR_Civ_KnockedOut",_who],"PLAIN"];
player playMoveNow "Incapacitated";
disableUserInput true;

_obj = "Land_ClutterCutter_small_F" createVehicle ASLTOATL(visiblePositionASL player);
_obj setPosATL ASLTOATL(visiblePositionASL player);

life_isknocked = true;
player setVariable ["isknocked",true,true];
player setVariable ["tf_voiceVolume", 0, true];
player setVariable ["tf_unable_to_use_radio", true];
player attachTo [_obj,[0,0,0]];
sleep 15;
player playMoveNow "AmovPpneMstpSrasWrflDnon";
disableUserInput false;
detach player;
deleteVehicle _obj;
life_isknocked = false;
player setVariable ["tf_voiceVolume", 1, true];
player setVariable ["tf_unable_to_use_radio", false];
false];
player setVariable ["isknocked",false,true];
player setVariable ["robbed",false,true];
