/*
	Author: Ben Harris
	Description: Receives Vehicle Data from Query and Lists // Post Query
*/

HRP_fnc_receiveVehicle = {
	params ["_search", "_test"];

	test2 = _search;
	test = _test;
	lbClear 1500;

	{
		_car = _x select 0;
		_carname = [_car] call HRP_fnc_getVehicleName;
		_title = format ["%1 - %2",_carname, _x select 1];
		_vehicle = lbAdd [1500, _title];
		_data = str _x;
		lbsetData [1500, _vehicle, _data];
	} foreach _search;
};