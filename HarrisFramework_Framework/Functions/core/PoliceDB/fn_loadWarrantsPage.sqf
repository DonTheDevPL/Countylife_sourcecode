/*
	Author: Ben Harris
	Description: Loads all active warrants in a list
*/

HRP_fnc_loadWarrantsPage = {
	params["_bool"];

	if (isNil "_bool") then {
		_bool = true;
	};

	if (_bool) then {
		createDialog "HRP_PoliceDB";
	};

	HRP_Warrants = call compile (missionNamespace getVariable "allWarrants");	

	{
		_title = format ["%1 - %2", _x select 1, _x select 2];
		_warrant = lbAdd [1500, _title];
		lbsetData [1500, _warrant, str _x];
	} forEach HRP_Warrants;	
};