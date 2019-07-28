//File: fn_medkitAction.sqf
params [
    ["_unit",objNull,[objNull]]
];
closeDialog 0;
if (isNull _unit) exitWith {};
hint "Używam apteczki";
player playMoveNow "AinvPknlMstpSnonWnonDnon_medicUp1";
//[false,"bandages",1] call life_fnc_handleInv;
sleep 3;
if (player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Jestes zbyt daleko."};
[player] remoteExec ["life_fnc_medkitA",_unit];