HRP_fnc_takeMoney = {
	params ["_ct"];
	_amount = _ct getVariable "money";

	_ct setVariable ["money", nil, true];
	deleteVehicle _ct;

	[_amount]call HRP_fnc_addCash;
};
