/*
	Author: Ben Harris
	Description: Fetches Warrant Information from the Database
*/

params["_Name", "_player"];


_searchstr = format ["findWarrant:%1", _Name];
_search = [_searchstr, 2] call ExternalS_fnc_ExtDBasync;

[_search] remoteExecCall ["HRP_fnc_receiveWarrant", _player];