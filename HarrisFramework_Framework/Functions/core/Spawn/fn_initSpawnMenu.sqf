/*
	Author: Ben Harris
	Description: Initalises the Spawn Menu
*/

HRP_fnc_initSpawnMenu = {
	createDialog "HRP_SpawnSelect";

	waituntil {!isNull (findDisplay 5008);};
	(findDisplay 5008) displaySetEventHandler ["KeyDown","if((_this select 1) isEqualTo 1) then {true}"];
	_index = (findDisplay 5008) displayCtrl 2131;

	{
	_index = lbAdd [ 2131, ( _x select 0 ) ]; 
	lbSetData [ 2131, _index, ( str _x )];
	} forEach HRP_SpawnPoints;	
};