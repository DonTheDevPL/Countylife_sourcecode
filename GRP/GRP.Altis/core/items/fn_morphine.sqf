
#include "..\..\script_macros.hpp"

private["_damage","_health"];
_type = _this select 0;

switch _type do {
	//self action
	case 0: { 
		if (vehicle player != player) exitWith { hint "You cannot apply morphine in a vehicle" };
		if (life_inv_morphine < 1) exitWith { hint "You do not have any morphine.." };

		closeDialog 0;
		life_action_inUse = true;
		player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
		uiSleep 1.5;
		waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
		life_action_inUse = false;

		hint "You suddenly feel very nauseous, yet your pains are fading.";

		sleep 3;
		[false,"morphine",1] call life_fnc_handleInv;
		"radialBlur" ppEffectEnable true;
		enableCamShake true;

		for "_i" from 0 to 19 do
		{  
			"radialBlur" ppEffectAdjust  [random 0.06,random 0.06,0.25,0.25];
			"radialBlur" ppEffectCommit 1;
			addcamShake[random 3, 1, random 3];
			sleep 1;
		};

		for "_health" from 0 to 29 do
		{
			while {damage player > 0.1} do  {
				_damage = damage player;          
				_damage = _damage - 0.02;        
				player setDamage (_damage);       
				[] call life_fnc_hudUpdate;      
				sleep 2;           
			};  
		};

		"radialBlur" ppEffectAdjust  [0,0,0,0];
		"radialBlur" ppEffectCommit 5;
		sleep 6;

		"radialBlur" ppEffectEnable false;
		resetCamShake;
	};
	//3rd person
	case 1: {
		hint "You suddenly feel very nauseous, yet your pains are fading.";
		"radialBlur" ppEffectEnable true;
		enableCamShake true;

		for "_i" from 0 to 19 do
		{  
			"radialBlur" ppEffectAdjust  [random 0.06,random 0.06,0.25,0.25];
			"radialBlur" ppEffectCommit 1;
			addcamShake[random 3, 1, random 3];
			sleep 1;
		};

		for "_health" from 0 to 29 do
		{
			while {damage player > 0.1} do  {
				_damage = damage player;          
				_damage = _damage - 0.1;        
				player setDamage (_damage);       
				[] call life_fnc_hudUpdate;      
				sleep 5;           
			};  
		};

		"radialBlur" ppEffectAdjust  [0,0,0,0];
		"radialBlur" ppEffectCommit 5;
		sleep 6;

		"radialBlur" ppEffectEnable false;
		resetCamShake;
	};
};

