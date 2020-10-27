/*
	Author: Ben Harris
	Description: Spread of Fire
*/

HRP_fnc_fireSpread = {
	params["_object"];

	_objects = nearestObjects [_object, [], 10];

	_toFlame = [];
	{
		if (round (random 1) == 1) then {
			if !(_toFlame isKindOf "Man") then {
				_toFlame pushBack _x;
			};
		};
	} forEach _objects;

	{
		[_x] remoteExecCall ["HRP_fnc_createFire", selectRandom allPlayers];
	} forEach _toFlame;
};