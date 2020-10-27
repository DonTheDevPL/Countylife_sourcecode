/*
	Author: Ben Harris
	Description: Whitelists for SERT
*/

HRP_fnc_sertWhitelist = {
	_licenses = HRP_toWhitelist getVariable "licenses";

	_licenses pushBack "SERT_License";

	HRP_toWhitelist setVariable ["licenses", _licenses, true];
};