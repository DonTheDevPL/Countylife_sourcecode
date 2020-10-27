/*
	Author: Ben Harris
	Description: Opens Keys Menu
*/

HRP_fnc_openGiveKeys = {
	params["_ct"];

	createDialog "HRP_giveKeys";

	toGiveKey = _ct;
	{
		if (_x in HRP_Cars || _x in HRP_Keys) then {
			_name = getText(configFile >> "CfgVehicles" >> (typeOf _x) >> "displayName");
			_index = lbAdd [2100, _name];
			lbSetData [2100, _index, str _x];
		};
	} forEach (nearestObjects [player, ["Car", "Air", "Sea"], 10]);
};