#include "..\..\script_macros.hpp"
//File: fn_ItemsMenu.sqf
private ["_mstatus","_near_units"];
disableSerialization;
createDialog "cl_phone_money";

_near = CONTROL(9993,2022);
_mstatus = CONTROL(9993,2015);
lbClear _near;

//Near players
_near_units = [];
{ if (player distance _x < 10) then {_near_units pushBack _x};} forEach playableUnits;
{
    if (!isNull _x && alive _x && player distance _x < 10 && !(_x isEqualTo player)) then {
        _near lbAdd format ["%1 - %2",_x getVariable ["realname",name _x], side _x];
        _near lbSetData [(lbSize _near)-1,str(_x)];
    };
} forEach _near_units;

_mstatus ctrlSetStructuredText parseText format ["<img size='1.3' image='\CL_Client\icons\ico_bank.paa'/> <t size='0.8px'>$%1</t><br/><img size='1.2' image='\CL_Client\icons\ico_money.paa'/> <t size='0.8'>$%2</t>",[BANK] call life_fnc_numberText,[CASH] call life_fnc_numberText];