/*
	Author: Ben Harris
	Description: Whitelists a player
*/
HRP_fnc_openWhiteListMenu = {
	params["_ct"];

	HRP_toWhitelist = _ct;

	createDialog "HRP_whiteList";

	for "_i" from 0 to 16 do {
		lbAdd [2100, str _i];
	};	
};
