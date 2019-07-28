/*
	File: fn_untieb.sqf
*/
private["_unit"];
_unit = cursorTarget;

if((life_action_inUse) || (player getVariable ["tied", false]) || (player getVariable ["restrained", false])) exitWith { 
hint "Nie mozesz tego zrobic";
//titleFadeOut 5;
}; 

if(isNull _unit || !(_unit getVariable ["blindfolded", false])) exitWith {};

_unit setVariable["blindfolded", nil, true];
