/*
	Authpr: Ben Harris
	Description: Initalises Gear Loading - House, Pre QUERY
*/

HRP_fnc_initLoadGear = {
	params["_ct"];

	_Owner = _ct getVariable "OwnerUID";
	[_Owner, player, cursorObject] remoteExecCall ["Server_fnc_loadHouseGear", 2];
};
