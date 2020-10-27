/*
	Author: Ben Harris
	Description: Creates a bus under government pay
*/
HRP_fnc_createGovernmentBus = {
	params["_ct"];

	spawnPos = cursorObject getVariable "busDepot";
	sleep 0.8;
	_objects = nearestObjects [getMarkerPos spawnPos, ["LandVehicle", "Air", "Sea"], 5];
	if (count _objects > 0) exitWith {
		["Error", "Miejsce spawnu jest zajęte", true] spawn HRP_fnc_Notifications;
	};

	//_pos = getMarkerPos spawnPos;
	//_dir = markerDir spawnPos;

	GBus = HRP_gvtBus createVehicle [0,0,0];

	GBus setDir (markerDir spawnPos);
	GBus setPos (getMarkerPos spawnPos);
	//GBus setDir _dir;
	GBus setVariable ["isBus", true, true];

	_cpos = getPos GBus;

	[_cpos, _pos] call HRP_fnc_busCheck;

	GBus;
};