/*
	Author: Ben Harris
	Description: Initialises Query to remove Warrant then researches for name.
*/

params["_id", "_player"];


_searchstr = format ["deleteWarrant:%1", _id];
_search = [_searchstr, 2] call ExternalS_fnc_ExtDBasync;

[] remoteExecCall ["HRP_fnc_findWarrant", _player];