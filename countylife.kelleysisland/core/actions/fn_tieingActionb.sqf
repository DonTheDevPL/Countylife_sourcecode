/*
    File: fn_tieingActionb.sqf
*/

private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable ["blindfolded", false])) exitWith {};

if((life_action_inUse) || (player getVariable ["tied", false]) || (player getVariable ["restrained", false])) exitWith { 
	hint "Nie mozesz tego zrobic";
}; 

if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

hint "Zakldam worek...";
//playSound3D ["cg_sndimg\sounds\blindfold.ogg", cursortarget, false, getPosASL player, 1, 1, 125];
_cme = 1;
_myposy = getPos player;

while {true} do {
life_action_inUse = true;
	if( player distance _myposy > 2.5 ) exitwith { 
			hint "Cel jest za daleko";
	};
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	_cme = _cme + 1;
	if(_cme > 3) exitwith {
		cursorTarget setVariable["blindfolded", true, true];
		[player] remoteExecCall ["life_fnc_tieingb", cursorTarget];
		//["Remove",10] call fnc_karma;
	};
};
life_action_inUse = false;

