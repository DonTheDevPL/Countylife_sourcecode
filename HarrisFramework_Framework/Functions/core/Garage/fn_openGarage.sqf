/*
	Author: Ben Harris
	Description: Opens Garage Dialog
*/

HRP_fnc_openGarage = {
	params ["_ct"];

	HRP_curGarage = _ct;

	createDialog "garage";

	[player] remoteExecCall ["Server_fnc_fetchGarage", 2];

	ctrlSetText [1000, "Garage"];
};