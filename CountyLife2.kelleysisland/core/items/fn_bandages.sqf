#include "..\..\script_macros.hpp"

private["_damage","_health"];
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

for "_health" from 0 to 29 do
{
	while {damage player > 0.1} do  {
		_damage = damage player;          
		_damage = _damage - 0.05;        
		player setDamage (_damage);       
		[] call life_fnc_hudUpdate;      
		sleep 1;           
	};  
};

resetCamShake;