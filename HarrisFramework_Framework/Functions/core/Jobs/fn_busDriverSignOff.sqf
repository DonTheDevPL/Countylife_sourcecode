/*
	Author: Ben Harris
	Description: Signs you off as a truck driver
*/

HRP_fnc_busDriverSignOff = {

	player setVariable ["payCheque", HRP_payCheque, true];
	player setVariable ["currentOccupation", "Unemployed", true];

	player setVariable ["busDriver", nil, true];

	deleteWaypoint HRP_busWayPoint;
	deleteMarkerLocal HRP_busMarker;

	if (!isNil "HRP_currentBus") then {
		deleteVehicle HRP_currentBus;
	};

	deleteVehicle GBus;

	player setVariable ["activeMission", nil, true];
	_lic = player getVariable "licenses";
	_lic = _lic - ["Bus_driver"];
	player setVariable ["licenses",_lic,true];

	["Wypisano", "Zakończyłeś pracę jako kierowca busa", true] spawn HRP_fnc_Notifications;
};	