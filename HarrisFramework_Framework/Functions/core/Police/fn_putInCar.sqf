/*
Author: Kerkkoh
First Edit: 28.11.2015
*/
HRP_fnc_putInCar = {
	params ["_targetVehicle"];

	_target = (attachedObjects player) select 0;

	[] call HRP_fnc_escortStop;
	[_targetVehicle] remoteExecCall ["HRP_fnc_putInCarTarget", _target];
};