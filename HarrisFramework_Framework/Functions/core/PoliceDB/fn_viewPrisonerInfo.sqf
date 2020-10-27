/*
	Author: Ben Harris
	Description: Views Prisoner Information
*/
HRP_fnc_viewPrisonerInfo = {
	params["_toSelect"];

	createDialog "HRP_PoliceDB_inMateInfo";

	_inMate = HRP_prisonerDetails select _toSelect;

	ctrlSetText [1001, (_inMate getVariable "playerName")];
	ctrlSetText [1002, (_inMate getVariable "assignedCell")];
	ctrlSetText [1003, str (_inMate getVariable "arrestTime")];
	ctrlSetText [1004, (_inMate getVariable "arrestReason")];
	ctrlSetText [1005, (_inMate getVariable "arrestNotes")];
};