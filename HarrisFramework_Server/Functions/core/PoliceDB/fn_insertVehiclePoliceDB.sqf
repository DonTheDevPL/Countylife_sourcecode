/*
	Author: Ben Harris
	Description: Saves Vehicle to Police Vehicle Database
*/

params ["_class", "_hit", "_player", "_plate", "_name"];

_uid = getPlayerUID _player;

_insertstr = format ["insertVehiclePoliceDB:%1:%2:%3:%4:%5", _class, _uid, _hit, _plate, _name];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;