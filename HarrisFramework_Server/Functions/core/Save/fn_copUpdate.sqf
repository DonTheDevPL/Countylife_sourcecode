/*
	Author: Ben Harris
	Description: Updates cop whitelisting
*/

params ["_level", "_id"];

_insertstr = format ["updateCopWhitelist:%1:%2", _level,_id];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;