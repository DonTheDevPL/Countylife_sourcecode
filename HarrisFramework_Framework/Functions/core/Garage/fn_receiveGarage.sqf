HRP_fnc_receiveGarage = {
	params ["_garage"];
	{
		_vehName = [_x select 1] call HRP_fnc_getVehicleName;
		_veh = lbAdd [1500, _vehName];
		lbSetData [1500, _veh, str _x];
	}forEach _garage;

	lbSetCurSel [1500, 0];
};