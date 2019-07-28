
#include "..\..\script_macros.hpp"
//File: fn_morphineA.sqf
private["_damage","_health"];

hint "Masz mdłości, ból powoli zanika...";

sleep 3;
player setVariable ["DrugOn",true,true];
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
		_damage = _damage - 0.05;        
		player setDamage (_damage);       
		[] call life_fnc_hudUpdate;      
		sleep 1;           
	};  
};

"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

"radialBlur" ppEffectEnable false;
resetCamShake;
player setVariable ["DrugOn",false,true];
