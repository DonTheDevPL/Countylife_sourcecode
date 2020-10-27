/*
	Author: Ben Harris
	Description: Opens the Trunk
*/

HRP_fnc_openTrunk = {
	params["_target"];

	createDialog "HRP_Trunk";

	if (isNil {_target getVariable "trunkItems"}) then {
		_target setVariable ["trunkItems", []];
	};

	_trunkItems = _target getVariable "trunkItems";

	{
		_vehicle = getText(configFile >> "CfgVehicles" >>  _x >> "displayName");
		_index = lbAdd [1500, _vehicle];
		lbSetData [1500, _index, _x];
	} forEach _trunkItems;

	HRP_Trunk = _target;
};