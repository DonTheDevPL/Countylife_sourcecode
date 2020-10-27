/*
	Author: Ben Harris
	Description:
*/

HRP_fnc_openSetName = {
	params["_ct"];

	createDialog "HRP_setName";
	
	_currentName = profileNamespace getVariable	[str (_ct getVariable "bankAccount"), "Unknown"];
	ctrlSetText	[1000, format ["Current Name: %1"], _currentName];

	HRP_toSetName = _ct;
};

