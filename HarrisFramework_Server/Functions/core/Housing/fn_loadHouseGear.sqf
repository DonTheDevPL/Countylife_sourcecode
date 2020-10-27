/*
	Author: Ben Harris
	Description: Loads House Gear from DB
*/

params ["_uid", "_player", "_ct"];


_insertstr = format ["loadHouseGear:%1", _uid];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;
[_insert, _player, _ct] remoteExecCall ["HRP_fnc_loadGear", _player];