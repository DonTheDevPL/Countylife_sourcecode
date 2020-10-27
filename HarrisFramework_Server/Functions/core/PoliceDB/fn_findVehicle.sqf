/*
	Author: Ben Harris
	Description: Fetches Vehicle from Police DB
*/

params["_plate", "_player"];


_searchstr = format ["findVehicle:%1", _plate];
_search = [_searchstr, 2] call ExternalS_fnc_ExtDBasync;

[_search, _searchstr] remoteExecCall ["HRP_fnc_receiveVehicle", _player];