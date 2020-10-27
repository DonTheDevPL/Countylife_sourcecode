#include "..\..\script_macros.hpp"

private["_damage","_health"];
_type = _this select 0;
switch _type do {
	case 0: { 
		if (vehicle player != player) exitWith { hint "You cannot apply bandages in a vehicle.";};
		if (life_inv_bandages < 1) exitWith { hint "You do not have any morphine.."; };

		closeDialog 0;
		life_action_inUse = true;
		player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
		uiSleep 1.5;
		waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
		life_action_inUse = false;

		hint "You applied the bandage, you are starting to feel better.";
		sleep 3;
		[false,"bandages",1] call life_fnc_handleInv;
		enableCamShake true;

		_random = random 0.5;
		_hp = damage player;
		_toDeal = (_hp) - _random;
		player setDammage _toDeal;
		[] call life_fnc_hudUpdate;

		resetCamShake;
	};
	case 1: { 
		hint "You are starting to feel better.";
		enableCamShake true;

		_random = random 0.5;
		_hp = damage player;
		_toDeal = (_hp) - _random;
		player setDammage _toDeal;
		[] call life_fnc_hudUpdate;

		resetCamShake;
	};
};
