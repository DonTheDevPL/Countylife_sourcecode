/*
	Author: Ben Harris
	Description: Views Contact Details
*/

HRP_fnc_viewContact = {
	params["_id"];

	createDialog "HRP_Phone_contactView";

	_contact = HRP_contactsList select _id;

	_cellNumber = _contact select 0;
	_contactName = _contact select 1;
	
	HRP_numberToCall = _cellNumber;


	_number = [_cellNumber] call HRP_fnc_phoneNumberText;

	ctrlSetText [2324, _contactName];
	ctrlSetText [9578, _number];

	HRP_dialNumber = _cellNumber;
	HRP_dialName = _contactName;
};