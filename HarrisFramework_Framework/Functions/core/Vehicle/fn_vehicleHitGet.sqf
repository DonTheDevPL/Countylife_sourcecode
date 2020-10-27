/*
Author: Kerkkoh
First Edit: 19.5.2016
*/
HRP_fnc_vehicleHitGet = {
	params ["_vehicle"];
	_getHitPoints = getAllHitPointsDamage _vehicle;

	_parts = _getHitPoints select 0;
	_hits = _getHitPoints select 2;

	_return = [_parts, _hits];

	_return;
};