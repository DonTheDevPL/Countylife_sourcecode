HRP_fnc_getVehicleName = {
	params ["_class"];

	_return = getText(configFile >> "CfgVehicles" >> _class >> "displayName");

	_return;
};