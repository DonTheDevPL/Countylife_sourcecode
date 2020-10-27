/*
    File: fn_searchAction.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Starts the searching process.
*/
params [
    ["_unit",objNull,[objNull]]
];
if (isNull _unit) exitWith {};
hint localize "STR_NOTF_Searching";
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 3;
if (player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint localize "STR_NOTF_CannotSearchPerson"};
[player] remoteExec ["life_fnc_searchClient",_unit];
life_action_inUse = true;
["PersonSearched"] spawn mav_ttm_fnc_addExp;