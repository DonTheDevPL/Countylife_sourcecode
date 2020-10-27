/*
	Author: Ben Harris
	Description: Unlocks your house.
*/

HRP_fnc_unlockHouse = {
	params["_ct"];

	_doors = getNumber(configFile >> "CfgVehicles" >> (typeOf _ct) >> "numberOfDoors");

	for "_i" from 1 to _doors do {
	_ct setVariable[format["bis_disabled_Door_%1",_i],0,true];
	};

	_ct setVariable["locked",false,true];
};