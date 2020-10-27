/*
	Author: Ben Harris
	Description: Locks your House
*/

HRP_fnc_lockHouse = {
	params["_ct"];

	_doors = getNumber(configFile >> "CfgVehicles" >> (typeOf _ct) >> "numberOfDoors");

	for "_i" from 1 to _doors do {
		_ct animate[format["door_%1_rot",_i],0];
		_ct setVariable[format["bis_disabled_Door_%1",_i],1,true];
	};

	_ct setVariable["locked",true,true];
	["Success", "Zamknąłeś swój dom.", true] spawn HRP_fnc_Notifications;
}