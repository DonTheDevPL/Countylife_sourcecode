#include "..\..\script_macros.hpp"
/*
    File: fn_restrainAction.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Retrains the target.
*/
private["_unit"];
_unit = cursorObject;
if(isNull _unit) exitWith {}; //Not valid
if((player distance _unit > 3)) exitWith {};
if((_unit getVariable "restrained")) exitWith {};
//if(side _unit isEqualTo west) exitWith {};
if(player isEqualTo _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
if (side player isEqualTo civilian) exitWith {
	if(life_inv_zipties < 1) exitWith { hint "You dont have any zipties"; };
	_unit setVariable["restrained",true,true];
    [player] remoteExec ["life_fnc_restrain",_unit];
    life_inv_zipties = life_inv_zipties - 1;
	hint "You have ziptied him";
};
if (side player isEqualTo west) exitWith {
    if(life_inv_handcuffs < 1) exitWith {hint "Nie masz kajdanek";};
    _unit setVariable["restrained",true,true];
    [player] remoteExec ["life_fnc_restrain",_unit];
    player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    hint "Skułeś gracza";
};
//Broadcast!
//_unit setVariable["restrained",true,true];
//[player] remoteExec ["life_fnc_restrain",_unit];
//[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]]remoteExecCall ["life_fnc_broadcast",west];