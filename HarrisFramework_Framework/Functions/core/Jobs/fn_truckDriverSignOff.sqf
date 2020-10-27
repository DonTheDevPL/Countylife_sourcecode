/*
	Author: Ben Harris
	Description: Signs a person off as a truck driver	
*/

HRP_fnc_truckDriverSignOff = {

	deleteWaypoint HRP_truckWayPoint;
	deleteMarkerLocal HRP_truckMarker;
	HRP_truckTaskLocation = nil;
	HRP_truckTaskPosition = nil;

	player setVariable ["payCheque", HRP_payCheque, true];
	player setVariable ["currentOccupation", "Unemployed", true];
	player setVariable ["activeMission", nil, true];
	player setVariable ["truckDriver", nil, true];

	player setVariable ["hasCompanyTruck", nil, true];
	deleteVehicle Ctruck;
	_lic = player getVariable "licenses";
	_lic = _lic - ["Truck_Driver"];
	player setVariable ["licenses",_lic,true];
	Sleep 0.8;
	["Wypisano", "Opuściłeś pracę kuriera", true] spawn HRP_fnc_Notifications;
};	