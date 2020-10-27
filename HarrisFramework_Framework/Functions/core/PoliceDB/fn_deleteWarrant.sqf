/*
	Author: Ben Harris
	Description: Deletes & Clears Warrant
*/

HRP_fnc_deleteWarrant = {
	_data = lbData [ 1500, ( lbCurSel 1500 ) ];	

	_finalData = call compile _data;

	_id = _finalData select 0;
	_name = _finalData select 1;

	[_id, player] remoteExecCall ["Server_fnc_deleteWarrant", 2];

	_msg = format ["%1 Just Removed a Warrant for %2", (player getVariable "playerName"), _name];
	[_msg] remoteExecCall ["HRP_fnc_serverMsg", 0];

	_count = missionNamespace getVariable "wantedFelons";
	_count = _count - 1;
	missionNamespace setVariable ["wantedFelons", _count, true];


	_allWarrants = call compile (missionNamespace getVariable "allWarrants");

	_count = 0;
	{
		if ((_x select 0) isEqualTo _id) then {
			_allWarrants deleteAt _count;
		};
		_count = _count + 1;
	} forEach _allWarrants;

	missionNamespace setVariable ["allWarrants", str _allWarrants, true];

	[false] call HRP_fnc_loadWarrantsPage;

};