/*
	Author: Ben Harris
	Description: Receives SQL Query and adds to ListBox
*/

HRP_fnc_receiveWarrant = {
	params ["_search"];
	test = _search;

	lbClear 1500;

	{
		_title = format ["%1 - %2", _x select 1, _x select 2];
		_warrant = lbAdd [1500, _title];
		_data = str _x;
		lbsetData [1500, _warrant, _data];
	} foreach _search;
};
