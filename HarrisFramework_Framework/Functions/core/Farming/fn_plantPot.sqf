/*
	Author: Ben Harris
	Description: Creates a plant pot
*/

HRP_fnc_plantPot = {
	
	if (HRP_carryingPot) exitWith {};
	
	closeDialog 0;
	player removeItem "RR_Pot";

	HRP_carryingPot = true;
	_pot = "JDPot" createVehicle position player;

	_pot attachTo [player, [0,1.5,0.21]];

	_pot allowDamage false;

	player setVariable ["carryingPot", _pot];

	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
};