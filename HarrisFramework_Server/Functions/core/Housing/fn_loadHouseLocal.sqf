/*
	Author: Ben Harris
	Description: SQL Query for Local House Loading
*/

params["_player"];

_uid = getPlayerUID _player;

_fetchhousesstr = format ["fetchHousesLocal:%1", _uid];
_houses = [_fetchhousesstr, 2] call ExternalS_fnc_ExtDBasync;

[_houses] remoteExecCall ["HRP_fnc_LoadHouseLocal", _player];
