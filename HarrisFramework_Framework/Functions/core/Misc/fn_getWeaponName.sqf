HRP_fnc_getWeaponName = {
	params ["_class"];

	_return = getText(configFile >> "CfgWeapons" >> _class >> "displayName");

	_return;
};