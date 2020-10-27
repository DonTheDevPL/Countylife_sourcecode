#include "..\..\script_macros.hpp"
if (FETCH_CONST(life_adminlevel) < 1) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

private _unit = lbData[2902,lbCurSel (2902)];
if (isNil "_unit") exitWith {};
if (isNull _unit) exitWith {};
if (_unit == player) exitWith {hint localize "STR_ANOTF_Error";};

[player] remoteExecCall ["life_fnc_revived",_unit];