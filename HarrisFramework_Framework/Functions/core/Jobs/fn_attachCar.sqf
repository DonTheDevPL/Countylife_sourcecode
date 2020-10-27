/*
	Author: Ben Harris
	Description: Attaches car to truck
*/

HRP_fnc_attachCar = {
	params["_towTruck"];

	_car = _towTruck getVariable "ropedTo";
	if (_towTruck distance _car > 20) exitWith { _towTruck setVariable ["ropedTo", nil, true];	};
	
	_car attachTo [_towTruck, [1.2,-5,2], "TrackFLL"];

	detach _car;

	sleep 2;

	_car attachTo [_towTruck];

	_towTruck setVariable ["ropedTo", nil, true];
	_towTruck setVariable ["attachedTo", _car, true];
	_car setVariable ["roped", nil, true];
	_car setVariable ["attached", true, true];
};