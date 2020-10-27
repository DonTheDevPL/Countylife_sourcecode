//File: fn_bandagesAction.sqf
params [
    ["_unit",objNull,[objNull]]
];
closeDialog 0;
if (isNull _unit) exitWith {};
hint "Bandażuje";
player playMoveNow "AinvPknlMstpSnonWnonDnon_medicUp1";
[false,"bandages",1] call life_fnc_handleInv;
sleep 3;
if (player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Jestes zbyt daleko."};
[player] remoteExec ["life_fnc_bandagesA",_unit];