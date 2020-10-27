/*
	Author: Ben Harris
	Description: Opens the Arrest Menu
*/

HRP_fnc_openArrestMenu = {
	params ["_ct"];

	HRP_toArrest = _ct;

	createDialog 'HRP_arrestMenu';
};
