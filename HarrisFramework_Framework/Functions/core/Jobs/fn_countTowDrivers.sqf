/*
	Author: Ben Harris
	Description: Counts tow drivers
*/
HRP_fnc_countTowDrivers = {
	_count = 0;
	{
		if (_x getVariable "towTruckDriver") then {
			_count = _count + 1;
		};
	} forEach allPlayers;	

	_count;
};