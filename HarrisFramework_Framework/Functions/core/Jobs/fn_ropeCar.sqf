/*
	Author: Ben Harris
	Description: Ropes car to vehicle
*/

HRP_fnc_ropeCar = {
	params["_car"];

	if (locked _car == 2 && isNil {_car getVariable 'iconID'}) exitWith { ["Error", "Ten pojazd nie może być holowany", true] spawn HRP_fnc_Notifications; systemChat "Zamknięte pojazdy musza być zautoryzowane przez SO przez odholowaniem"; };

	_towtruck = "A";
	{
		if (typeOf _x in HRP_towTrucks) then {
			_towTruck = _x;
		};
	} forEach nearestObjects [player, ["Car"], 10];

	_towTruck setVariable ["ropedTo", _car, true];	
	_car setVariable ["roped", true, true];
};

