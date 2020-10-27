/*
	Author: Ben Harris
	Description: Removes plant pot
*/

HRP_fnc_removePot = {
	params["_ct"];

	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	deleteVehicle _ct;

	_plant = _ct getVariable "growingPlant";
	if !(isNil "_plant") then {
		deleteVehicle _plant;
	};

	player addItem "RR_Pot";
};