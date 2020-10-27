/*
	Author: Ben Harris
	Description; Gets tow drivers
*/
HRP_fnc_getTowDrivers = {
	_fetch = [];
	{
		if (_x getVariable "towTruckDriver") then {
			_fetch pushBack _x;
		};
	} forEach allPlayers;	

	_fetch;
};