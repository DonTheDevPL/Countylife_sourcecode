/*
	Author: Ben Harris
	Description: Starts Fires
*/

HRP_fnc_fireStart = {
	params["_type"];

	_lamps = nearestObjects [getPos player, ["Land_LampStreet_F"], 9999];

	for "_i" from 0 to 1 step 0 do {
		//sleep 1200;
		sleep 180;

		_count = 0;
		{
			if ((_x getVariable 'ems' > 0) || (_x getVariable 'fd' > 0)) then {
				_count = _count + 1;
			};
		} forEach allPlayers;

		if (_count < 2) exitWith {};

		_toFlame = selectRandom _lamps;

		"R_60mm_HE" createvehicle (getPos _toFlame); 
		[_toFlame] call HRP_fnc_createFire;
	};
};