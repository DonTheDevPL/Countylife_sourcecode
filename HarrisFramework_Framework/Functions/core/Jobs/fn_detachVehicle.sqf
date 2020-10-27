/*
	Author: Ben Harris
	Description: Detaches vehicle from truck
*/

HRP_fnc_detachVehicle = {
	params["_ct"];

	_car = (_ct getVariable "attachedTo");
	_car attachTo [_ct, [1.2,-12,2], "TrackFLL"];

	detach _car;

	_ct setVariable ["attachedTo", nil, true];
	_car setVariable ["attached", nil, true];
};


