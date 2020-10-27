//File: fn_morphineAction.sqf
params [
    ["_unit",objNull,[objNull]]
];
if (isNull _unit) exitWith {};
hint "Podaje morfine.";
player playMoveNow "AinvPknlMstpSnonWnonDnon_medicUp1";
[false,"morphine",1] call life_fnc_handleInv;
sleep 3;
if (player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Jestes zbyt daleko."};
[player] remoteExec ["life_fnc_morphineA",_unit];