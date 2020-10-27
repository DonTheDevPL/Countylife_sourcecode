/*
	Author: Ben Harris
	Function for getting distance
*/

HRP_fnc_Distance = {
	params ["_1", "_2"]

	_test = nearestObject [getMarkerPos _1, _2];
	_pos = getMarkerPos _1;
	HRP_distance = _pos distance _test;
};