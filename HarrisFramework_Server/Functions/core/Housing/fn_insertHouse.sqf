params ["_id", "_player", "_name"];

_uid = getPlayerUID _player;
_insertstr = format ["insertHouse:%1:%2:%3", _uid, _id, _name];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;