/*
	Author: Ben Harris
	Description: Assigns a person a company truck
*/

HRP_fnc_createCompanyTruck = {
	params["_ct"];

	if (isNil "_ct") exitWith {};
	if !(isNil {player getVariable "hasCompanyTruck"}) exitWith {
		["Error", "Masz już przypisaną firmową ciężarówkęYou already have a company vehicle", true] spawn HRP_fnc_Notifications;
	};

	HRP_Position = _ct getVariable "truckSpawnPosition";

	_objects = nearestObjects [getMarkerPos HRP_Position, ["LandVehicle", "Air", "Sea"], 5];
	if (count _objects > 0) exitWith {
		["Error", "Miejsce spawnu jest zajęte", true] spawn HRP_fnc_Notifications;
	};

	_companyTruck = selectRandom HRP_Trucks;
	Ctruck = _companyTruck createVehicle [0,0,0];
	Ctruck setPos (getMarkerPos HRP_Position);
	Ctruck setDir (markerDir HRP_Position);

	Ctruck setVariable ["companyTruck", true, true];
	player setVariable ["hasCompanyTruck", true, true];
	Ctruck lock 2;
	HRP_Cars pushBack Ctruck;
	["Sukces", "Twoja firmowa cięzarówka jest gotowa i czeka na ciebie", true] spawn HRP_fnc_Notifications;

	//waitUntil {((player getVariable "currentOccuption") == "Truck Driver")};
	waitUntil {((player getVariable "currentOccuption") != "Truck Driver")};

	deleteVehicle Ctruck;
	["Ciężarówka odholowana", "Opuściłeś swoją pracę więc twoja cięzarówka została odholowana.", true] spawn HRP_fnc_Notifications;
	player setVariable ["hasCompanyTruck", nil, true];
};