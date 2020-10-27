#include "..\..\script_macros.hpp"
/*
    File: fn_knockoutAction.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Knocks out the target.
*/
private "_target";
_target = param [0,objNull,[objNull]];

_pos = (getPosASL player);

_degrees = getDir player; 
_degreesu = getDir _target;
_totald = _degrees - _degreesu;

if(_totald >= -90 && _totald < 1 || _totald <= 90 && _totald > -1 || _totald >= 270 || _totald <= -270) then {


	if(surfaceIsWater _pos) exitwith {};
	if(isNull _target) exitWith {};
	if(!isPlayer _target) exitWith {};
	if(player distance _target > 4) exitWith {};
	life_knockout = true;
	[player,"AwopPercMstpSgthWrflDnon_End2"] remoteExecCall ["life_fnc_animSync",RCLIENT];
	hint "Powaliles gracza";
	uiSleep 0.08;
	[_target,profileName] remoteExecCall ["life_fnc_knockedOut",_target];

	uiSleep 3;
	life_knockout = false;

} else {
	hint "Musisz byc za Twoim celem aby go powalic!";
};

/*
//Error checks
if (isNull _target) exitWith {};
if (!isPlayer _target) exitWith {};
if (player distance _target > 4) exitWith {};
life_knockout = true;
[player,"AwopPercMstpSgthWrflDnon_End2"] remoteExecCall ["life_fnc_animSync",RCLIENT];
sleep 0.08;
[_target,profileName] remoteExec ["life_fnc_knockedOut",_target];

sleep 3;
titleText[format [""],"PLAIN"];
life_knockout = false;
*/
