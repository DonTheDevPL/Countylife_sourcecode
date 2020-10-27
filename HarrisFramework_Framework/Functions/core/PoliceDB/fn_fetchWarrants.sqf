/*
	Author: Ben Harris
	Description: Adds a Warrant to the Police Database
*/

HRP_fnc_fetchWarrants = {
	_fetch = [0, "allWarrants"] call ExternalS_fnc_ExtDBquery;
	missionNamespace setVariable ["allWarrants", str _fetch, true];
};