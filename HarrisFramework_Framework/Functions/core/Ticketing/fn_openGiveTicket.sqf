/*
	Author: Ben Harris
	Description: Opens the 'Give Ticket' Menu
*/

HRP_fnc_openGiveTicket = {
	params["_ct"];

	HRP_ticketTarget = _ct;

	createDialog "HRP_giveCitation";

	_playerInfo = _ct getVariable "identity";

	HRP_first = _playerInfo select 0;
	HRP_second = _playerInfo select 1;
	HRP_middle = _playerInfo select 2;
	HRP_dob = _playerInfo select 5;


	ctrlSetText [1000, HRP_first];
	ctrlSetText [1001, HRP_second];
	ctrlSetText [1002, HRP_middle];
	ctrlSetText [1003, HRP_dob];
	ctrlSetText [1005, "Lakeside Isles"];

	if ("Driver_License" in (_ct getVariable "licenses")) then {
		ctrlSetText [1004, "Yes"];
	} else  {
		ctrlSetText [1004, "No"];
	};

	_toAdd = ["True", "False"];

	{
		_index = lbAdd [2100, _x];
		lbSetData [2100, _index, _x];
	} forEach _toAdd;

	lbSetCurSel [2100, 0];

	ctrlSetText [1006, (player getVariable "playerName")];

};