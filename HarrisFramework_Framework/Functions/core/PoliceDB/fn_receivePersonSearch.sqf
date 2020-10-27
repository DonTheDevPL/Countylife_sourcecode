/*
	Author: Ben Harris
	Description: Applies the Person's Data to Dialog // Post Query
*/

HRP_fnc_receivePersonSearch = {
	
	params["_data","_data2", "_name"];

	_ammountWarrants = count _data;
	test = _data2;
	test55 = _data2;
	_vehicleAmmount = count _data2;


	_idText = ctrlSetText [1001, str _name];
	_warrantText = ctrlSetText [1002, str _ammountWarrants];
	_vehicleText = ctrlSetText [1003, str _vehicleAmmount];

	lbClear 1500;

	{
	_car = _x select 0;
	_carname = [_car] call HRP_fnc_getVehicleName;
	_title = format ["%1 - %2",_carname, _x select 1];
	_vehicle = lbAdd [1500, _title];
	_data = str _x;
	lbsetData [1500, _vehicle, _data];
	} foreach _data2;

};