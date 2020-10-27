/*
	Author: Ben Harris
	Description: Assigns a bus driver a task
*/

HRP_fnc_busAssignTask = {
	//params["_taskID"];

	_taskID = 0;
	_route = call compile (HRP_busRoutes select _taskID);
	player setVariable ["activeMission", true, true];

	["Sukces", (format ["Zadanie przydzielone, Pierwsze miejsce docelowe: %1", (_route select 0) select 1]), true] spawn HRP_fnc_Notifications;

	HRP_currentRouteCount = 0;

	for "_i" from 0 to count _route -1 do {
		if (isNil {player getVariable "activeMission"}) exitWith {};

		if (!isNil "HRP_busWayPoint") then {
			deleteWaypoint HRP_busWayPoint;
		};
		if (!isNil "HRP_busMarker") then {
			deleteMarkerLocal HRP_busMarker;
		};

		_destination = getMarkerPos (format ["busMarker_%1", (_route select _i) select 0]);
		_distance = round (player distance _destination);

		HRP_currentBus setVariable ["nextDestination", [(_route select _i) select 1, (format ["busMarker_%1", (_route select _i) select 0])]];

		HRP_busWayPoint = (group player) addWaypoint [_destination, 0 ];
		HRP_busWayPoint setWaypointType "MOVE";
	    HRP_busWayPoint setWaypointBehaviour "AWARE";
	    HRP_busWayPoint setWaypointSpeed "FULL";
	    HRP_busWayPoint setWaypointCombatMode "RED";

	    HRP_busMarker = createMarkerLocal ["HRP_busMarker", _destination]; 
		HRP_busMarker setMarkerShapeLocal "ICON"; 
		HRP_busMarker setMarkerTypeLocal "HRP_icon_goKart"; 
		HRP_busMarker setMarkerSizeLocal [1,1]; 
		HRP_busMarker setMarkerTextLocal "Delivery Location";

		["Sukces", "Kolejne miejsce docelowe zostało przypisane.", true] spawn HRP_fnc_Notifications;

		waitUntil {((vehicle player) distance (getMarkerPos HRP_busMarker)) < 10};
		if (isNil {player getVariable "activeMission"}) exitWith {};

		//["Sukces", "Dojechałeś na miejsce, pamiętaj by zabrać swoją wypłatę z ceterLink'a.", true] spawn HRP_fnc_Notifications;

		_outstanding = player getVariable "outStandingPay";

		//_outstanding = _outstanding + (round ((player distance (getMarkerPos HRP_busMarker)) / 4));
		_outstanding = _outstanding + 200;
		player setVariable["outStandingPay",_outstanding,true];
		systemChat "Dostałeś bonus w wyskokości $200, pamiętaj by zabrać swoją wypłatę z ceterLink'a";
		["Proszę czekać", "Zatrzymaj się i daj pasażerom wejść na pokład.", true] spawn HRP_fnc_Notifications;
		//sleep 5;
		waitUntil {speed (vehicle player) < 5 && ((vehicle player) distance (getMarkerPos HRP_busMarker)) < 10};
	};

	["Sukces", "Zakończyłeś kurs, możesz kontynuować pracę.", true] spawn HRP_fnc_Notifications;
};