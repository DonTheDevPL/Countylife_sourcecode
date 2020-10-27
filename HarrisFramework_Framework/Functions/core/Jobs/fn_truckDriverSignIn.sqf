/*
	Author: Ben Harris
	Description: Truck Driver Sign Up
*/

HRP_fnc_truckDriverSignIn = {
	
	["Sukces", "Wsiądź do swojej ciężarówki", true] spawn HRP_fnc_Notifications;
	Sleep 1;
	["Podpowiedź","Używając firmowej cięzarówki dostaniesz wieksze wynagrodzenie (bot -> ciężarówka)", true] spawn HRP_fnc_Notifications;

	player setVariable ["truckDriverStart", true, true];

	waitUntil {(typeOf (vehicle player)) in HRP_Trucks};

	player setVariable ["truckDriverStart", nil, true];
	player setVariable ["truckDriver", true, true];
	player setVariable ["payCheque", HRP_truckDriverPay, true];
	player setVariable ["currentOccupation", "Truck Driver", true];
	player setVariable ["activeMission", nil, true];
	_lic = player getVariable "licenses";
	_driverLic = ["Truck_Driver"];
	_lic = _lic + _driverLic;
	player setVariable ["licenses",_lic,true];
	deleteWaypoint HRP_truckWayPoint;
	deleteMarkerLocal HRP_truckMarker;

	Sleep 0.8;
	["Sukces", "Zostałeś kurierem, (tab -> Weź zlecenie)", true] spawn HRP_fnc_Notifications;
};