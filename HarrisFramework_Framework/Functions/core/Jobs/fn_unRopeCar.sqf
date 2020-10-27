/*
	Author: Ben Harris
	Description: De-ropes the car
*/

HRP_fnc_unRopeCar = {
	params["_car"];

	_towtruck = "A";
	{
		if (typeOf _x in HRP_towTrucks) then {
			_towTruck = _x;
		};
	} forEach nearestObjects [player, ["Car"], 10];

	_towTruck setVariable ["ropedTo", nil, true];
	_car setVariable ["roped", nil, true];	
};