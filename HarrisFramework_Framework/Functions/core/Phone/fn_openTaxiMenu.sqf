/*
	Author: Ben Harris
	Description: Opens the Taxi App
*/

HRP_fnc_openTaxiMenu = {
	createDialog "HRP_Phone_taxiScreen";
	HRP_TaxiDrivers = [];
	_data = 0;
	{	
		_driver = false;
		if (typeOf (vehicle _x) in HRP_Taxis) then {
			_driver = true;
		};
		if (_driver) then {
			_index = lbAdd [1501, (_x getVariable "playerName")];
			HRP_TaxiDrivers pushBack _x;
			lbSetData [1501, _index, str _data];
			_data = _data + 1;
			HRP_taxiMenu = true;
		};
	} forEach allPlayers;

	lbSetCurSel [1501, 0];
};
