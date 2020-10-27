/*
	Author: Ben Harris
	Description: Loads the Warrant using lbData - Post Query
*/

HRP_fnc_loadWarrant = {

	data = lbData [ 1500, ( lbCurSel 1500 ) ];	

	finalData = call compile data;

	_id = finalData select 0;
	_name = finalData select 1;
	_arrestPri = finalData select 2;
	_crimes = finalData select 3;
	_desc = finalData select 4;
	_subOfficer = finalData select 5;

	createDialog "HRP_PoliceDB_viewWarrant";

	_idText = ctrlSetText [1001, str _id];
	_nameText = ctrlSetText [1002, _name];
	_arrestText = ctrlSetText [1006, _arrestPri];
	_subOfficerText = ctrlSetText [1003,  _subOfficer];
	_crimesText = ctrlSetText [1004, _crimes];
	_descText = ctrlSetText [1005, _desc];


};