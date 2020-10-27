#include "..\..\script_macros.hpp"
//File: fn_medkitA.sqf
private["_damage","_health"];

uiSleep 1.5;

hint "Zaczynasz sie czuc lepiej...";
sleep 3;
enableCamShake true;

[]spawn {
	sleep 2;
	player setDamage 0;
};

resetCamShake;