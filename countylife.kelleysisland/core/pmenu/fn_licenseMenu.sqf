#include "..\..\script_macros.hpp"
//File: fn_licenseMenu.sqf
private ["_lic","_side","_struct"];
disableSerialization;
createDialog "cl_phone_license";
_side = switch (playerSide) do {case west:{"cop"}; case civilian:{"civ"}; case independent:{"med"};};

_lic = CONTROL(9996,2014);
_money = CONTROL(9996,1000);
_struct = "";

{
    _displayName = getText(_x >> "displayName");

    if (LICENSE_VALUE(configName _x,_side)) then {
        _struct = _struct + format ["%1<br/>",localize _displayName];
    };
} forEach (format ["getText(_x >> 'side') isEqualTo '%1'",_side] configClasses (missionConfigFile >> "Licenses"));

if (_struct isEqualTo "") then {
    _struct = "No Licenses";
};

_lic ctrlSetStructuredText parseText format ["
<t size='0.8px'>
%1
</t>
",_struct];
_money ctrlSetStructuredText parseText format ["<t size='0.8px'>$%1</t><br/>",[CASH] call life_fnc_numberText];