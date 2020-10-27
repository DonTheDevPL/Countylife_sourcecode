/*
	Author: Ben Harris
	Description: Adds a Warrant to the Police Database
*/

HRP_fnc_fetchFelons = {
	_fetch = [0, "fetchFelons"] call ExternalS_fnc_ExtDBquery;

	missionNamespace setVariable ["wantedFelons", (_fetch select 0) select 0, true];
};