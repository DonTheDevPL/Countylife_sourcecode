/*
	Author: Ben Harris
	Description: Unflip Car
*/

HRP_fnc_unFlipCar = {
	params["_ct"];
	_ct setPosASL [getPosASL _ct select 0, getPosASL _ct select 1, (getPosASL _ct select 2) + 0.5]; closeDialog 0;
};