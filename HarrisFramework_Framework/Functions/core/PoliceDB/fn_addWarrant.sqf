/*
	Author: Ben Harris
	Description: Adds a Warrant to the Police Database
*/

HRP_fnc_addWarrant = {
	_Name = ctrlText 1400;
	_Priority = ctrlText 1403;
	_Crimes = ctrlText 1401;
	_Description = ctrlText 1402;
	_submittingOfficer = player getVariable "playerName";

	HRP_Warrant = [_Name, _Priority, _Crimes, _Description, _submittingOfficer];
	[_Name, _Priority, _Crimes, _Description, _submittingOfficer] remoteExecCall ["Server_fnc_warrantAdd", 2];

	_count = missionNamespace getVariable "wantedFelons";
	_count = _count + 1;
	missionNamespace setVariable ["wantedFelons", _count, true];

	_allWarrants = call compile (missionNamespace getVariable "allWarrants");

	_toPush = [(count _allWarrants + 1), _Name, _Priority, _Crimes, _Description, _submittingOfficer];

	_allWarrants pushBack _toPush;

	missionNamespace setVariable ["allWarrants", str _allWarrants, true];
};