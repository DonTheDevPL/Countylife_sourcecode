/*
	Author: Ben Harris
	Description: Loads Person Lookup
*/

params["_Name", "_player"];


_searchstr = format ["findWarrant:%1", _Name];
_search = [_searchstr, 2] call ExternalS_fnc_ExtDBasync;
_searchstr2 = format ["findVehicleName:%1", _Name];
_search2 = [_searchstr2, 2] call ExternalS_fnc_ExtDBasync;


[_search, _search2, _Name] remoteExecCall ["HRP_fnc_receivePersonSearch", _player];