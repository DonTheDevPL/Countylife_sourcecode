#include "..\..\script_macros.hpp"
//File: fn_bandagesA.sqf
private["_damage","_health"];

uiSleep 1.5;

hint "Zaczynasz sie czuc lepiej...";
sleep 3;
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