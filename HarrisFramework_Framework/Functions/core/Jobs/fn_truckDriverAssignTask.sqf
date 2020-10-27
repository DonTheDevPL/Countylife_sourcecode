/*
	Author: Ben Harris
	Description: Assigns a task to a truck driver
*/

HRP_fnc_truckDriverAssignTask = {
	
	player setVariable ["activeMission", true, true];
	HRP_missionDistance = 0;

	_pickupLocation = selectRandom HRP_truckMarkersPickup;
	HRP_truckTaskPosition = (getMarkerPos (format ["truckMarkerPickup_%1", _pickupLocation select 0]));
	HRP_truckTaskLocation = _pickupLocation select 1;

	/*
	HRP_missionVehicle = "Jonzie_Curtain" createVehicle [0,0,0];
	HRP_missionVehicle setVariable ["Commercial", true, true];
	HRP_missionVehicle setPos HRP_truckTaskPosition;
	HRP_missionVehicle setDir (markerDir (format ["truckMarkerPickup_%1", _pickupLocation select 0]));
	HRP_activeTrailers pushBack HRP_missionVehicle;
	*/

	HRP_truckWayPoint = (group player) addWaypoint [HRP_truckTaskPosition, 0 ];
	HRP_truckWayPoint setWaypointType "MOVE";
    HRP_truckWayPoint setWaypointBehaviour "AWARE";
    HRP_truckWayPoint setWaypointSpeed "FULL";
    HRP_truckWayPoint setWaypointCombatMode "RED";

    HRP_truckMarker = createMarkerLocal ["HRP_truckMarker", HRP_truckTaskPosition]; 
	HRP_truckMarker setMarkerShapeLocal "ICON"; 
	HRP_truckMarker setMarkerTypeLocal "HRP_icon_Truck"; 
	HRP_truckMarker setMarkerSizeLocal [1,1]; 
	HRP_truckMarker setMarkerTextLocal "Pickup Location";

	HRP_truckWayPoint = (group player) addWaypoint [HRP_truckTaskPosition, 0 ];
	HRP_truckWayPoint setWaypointType "MOVE";
    HRP_truckWayPoint setWaypointBehaviour "AWARE";
    HRP_truckWayPoint setWaypointSpeed "FULL";
    HRP_truckWayPoint setWaypointCombatMode "RED";

	Sleep 1;    
	["Zadanie przydzielone", "Dojedź do punktu podjęcia ładunku", true] spawn HRP_fnc_Notifications;	

	HRP_missionDistance = (round (player distance (getMarkerPos HRP_truckMarker)));

	waitUntil {((vehicle player) distance (getMarkerPos HRP_truckMarker)) < 15};
	if (isNil {player getVariable "truckDriver"}) exitWith {};
	/*
	if (isNull HRP_missionVehicle) exitWith {
		["Zadanie nieudanie", "Przyczepa została zniszczona", true] spawn HRP_fnc_Notifications;
		if !(isNil "HRP_truckWayPoint") then {
		deleteWaypoint HRP_truckWayPoint;
		};
		if !(isNil "HRP_truckMarker") then {
			deleteMarkerLocal HRP_truckMarker;
		};
	};
	*/

	deleteWaypoint HRP_truckWayPoint;
	deleteMarkerLocal HRP_truckMarker;

	["Dotarłeś na miejsce", "Poczekaj na załadunek i dostarcz ładunek do punktu docelowego.", true] spawn HRP_fnc_Notifications;

	if(typeOf vehicle player == "Jonzie_Box_Truck") then {
		_load1p = selectRandom HRP_load;
		_load2p = selectRandom HRP_load;
		_load3p = selectRandom HRP_load;

		load1 = _load1p createVehicle [0,0,0];
		load2 = _load1p createVehicle [0,0,0];
		load3 = _load1p createVehicle [0,0,0];

		_vehPos = getpos vehicle player;
		_vehDir = getDir vehicle player;

		if (typeOf load1 == "plp_cts_CartonDarkBig") then {
			load1 attachTo [vehicle player,[0,-0.5,1.8]];
		} else {
			load1 attachTo [vehicle player,[0,-0.5,1.9]];
		};

		if (typeOf load2 == "plp_cts_CartonDarkBig") then {
			load2 attachTo [vehicle player,[0,-2.4,1.8]];
		} else {
			load2 attachTo [vehicle player,[0,-2.4,1.9]];
		};

		if (typeOf load3 == "plp_cts_CartonDarkBig") then {
			load3 attachTo [vehicle player,[0,-4.3,1.8]];
		} else {
			load3 attachTo [vehicle player,[0,-4.3,1.9]];
		};
	};

	if(typeOf vehicle player == "Jonzie_Flat_Bed") then {
		_load1p = selectRandom HRP_loadCont;

		load1 = _load1p createVehicle [0,0,0];

		_vehPos = getpos vehicle player;
		_vehDir = getDir vehicle player;

		if (typeOf load1 == "plp_cts_HighSecContRed") then {
			load1 attachTo [vehicle player,[0,-3.5,2.1]];
		} else {
			load1 attachTo [vehicle player,[0,-2.5,2.1]];
		};
	};

	if(typeOf vehicle player == "Jonzie_Log_Truck") then {
		load1 = "Land_WoodPile_large_F" createVehicle [0,0,0];
		load2 = "Land_WoodPile_large_F" createVehicle [0,0,0];
		load3 = "Land_WoodPile_large_F" createVehicle [0,0,0];

		_vehPos = getpos vehicle player;
		_vehDir = getDir vehicle player;

		load1 attachTo [vehicle player,[0,-1.8,1.5]];
		load2 attachTo [vehicle player,[0,-4.5,1.5]];
		load3 attachTo [vehicle player,[0,-3.2,2]];
	};

	_dropOffLocation = selectRandom HRP_truckMarkersDeliver;
	HRP_truckTaskPosition = (getMarkerPos (format ["truckMarkerDeliver_%1", _dropOffLocation select 0]));
	HRP_truckTaskLocation = _dropOffLocation select 1;

	HRP_truckWayPoint = (group player) addWaypoint [HRP_truckTaskPosition, 0 ];
	HRP_truckWayPoint setWaypointType "MOVE";
    HRP_truckWayPoint setWaypointBehaviour "AWARE";
    HRP_truckWayPoint setWaypointSpeed "FULL";
    HRP_truckWayPoint setWaypointCombatMode "RED";

    HRP_truckMarker = createMarkerLocal ["HRP_truckMarker", HRP_truckTaskPosition]; 
	HRP_truckMarker setMarkerShapeLocal "ICON"; 
	HRP_truckMarker setMarkerTypeLocal "HRP_icon_Truck"; 
	HRP_truckMarker setMarkerSizeLocal [1,1]; 
	HRP_truckMarker setMarkerTextLocal "Delivery Location";

	HRP_missionDistance = (round (player distance (getMarkerPos HRP_truckMarker)));

	waitUntil {(vehicle player distance (getMarkerPos HRP_truckMarker)) < 15};
	if (isNil {player getVariable "truckDriver"}) exitWith {};
		
	vehicle player setVariable ["signOff", 1, true];

	["Dostawa zakończona", "Wysiadz i podpisz ladunek", true] spawn HRP_fnc_Notifications;
};