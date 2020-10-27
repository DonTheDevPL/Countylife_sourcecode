//medkit
//Author: TheWolek
private["_damage","_health"];
_type = _this select 0;
switch _type do {
	case 0: { 
		if (vehicle player != player) exitWith { hint "You cannot use it in a vehicle.";};
		if (life_inv_medkit < 1) exitWith { hint "You do not have any morphine.."; };

		closeDialog 0;
		life_action_inUse = true;
		player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
		uiSleep 1.5;
		waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
		life_action_inUse = false;

		hint "You used medkit, you are starting to feel better.";
		sleep 3;
		enableCamShake true;

		player setDamage 0;
		[] call life_fnc_hudUpdate;

		resetCamShake;
	};
	case 1: { 
		hint "You are starting to feel better.";
		enableCamShake true;

		player setDamage 0;
		[] call life_fnc_hudUpdate;

		resetCamShake;
	};
};