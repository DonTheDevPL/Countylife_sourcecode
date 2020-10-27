/*
	Author: Ben Harris
	Description: Plants Weed
*/

HRP_fnc_plantWeed = {
	params["_ct"];

	if !(((player distance (nearestBuilding player)) > 15) || (count (nearestObjects [player, ["Land_Portable_generator_F"], 20]) > 0)) exitWith { ["Error", "Musisz być blisko jakiegoś budynku lub innego zródła zasilania.", true] spawn HRP_fnc_Notificiations; };
	player removeItem "W_weedSeeds";
	_plant = "JDMarijuana" createVehicle getPosATL _ct;
	_plant setPosAtl (getPosATL _ct);
	test = _plant;
	_ct setVariable ["growingPlant", _plant, false];
	_plant setVariable ["grownWeed", false, true];
	_plant setVariable ["pot", _ct, true];

	_plant attachTo [_ct, [0,0,-0.5]];

	[_plant, _ct] spawn HRP_fnc_growWeed;

	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
};