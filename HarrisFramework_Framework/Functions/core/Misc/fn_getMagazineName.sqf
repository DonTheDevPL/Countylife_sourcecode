HRP_fnc_getMagazineName = {
	params ["_class"];

	_return = getText(configFile >> "CfgMagazines" >> _class >> "displayName");

	_return;
};