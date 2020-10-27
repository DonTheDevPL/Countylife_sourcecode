/*
	Author: Ben Harris
	Description: Signs the package off
*/

HRP_fnc_signPackage = {

	["Dostawa zakończona", "Bonus został dodany do twojej wypłaty, pamiętaj by zabrać ja z CenterLink'a", true] spawn HRP_fnc_Notifications;

	deleteWaypoint HRP_truckWayPoint;
	deleteMarkerLocal HRP_truckMarker;

	/*
	for "_i" from 0 to ((count HRP_activeTrailers) - 1) do {
		if (HRP_activeTrailers select _i == HRP_missionVehicle) then {
			HRP_activeTrailers deleteAt _i;
		};
	};

	deleteVehicle HRP_missionVehicle;
	*/

	deleteVehicle load1;
	deleteVehicle load2;
	deleteVehicle load3;

	vehicle player setVariable ["signOff", 0, true];

	_outstanding = player getVariable "outStandingPay";


	if (isNil {(vehicle player) getVariable "companyTruck"}) then {
		_value = (round (HRP_missionDistance / 8));
		_outstanding = _outstanding + _value;
		systemChat format ["Przyznano ci bonus w wysokości $%1, pamiętaj by zabrać ja z CenterLink'a", _value];
	} else {
		_value = (round (HRP_missionDistance / 5));
		_outstanding = _outstanding + _value; 
		systemChat format ["Przyznano ci bonus w wysokości $%1, pamiętaj by zabrać ja z CenterLink'a", _value];
	};

	player setVariable ["outStandingPay", _outstanding, true];

	if !(isNil "HRP_truckWayPoint") then {
		deleteWaypoint HRP_truckWayPoint;
	};
	if !(isNil "HRP_truckMarker") then {
		deleteMarkerLocal HRP_truckMarker;
	};

	player setVariable ["activeMission", nil, true];
	HRP_missionDistance = nil;
};