HRP_fnc_pullOut = {
	params ["_vehicle"];

	{
		_x action ["eject", _vehicle];
	} forEach crew _vehicle;
};