//File: fn_test.sqf
closeDialog 0;

_unit = cursorTarget;
if (isNull _unit) exitWith {};
hint "Sprawdzam...";
sleep 3;

if((_unit getVariable "DrugOn") || (_unit getVariable "AlkoOn")) then {
	hint "Zatrzymany jest pod wpływem.";
}else {
	hint "Zatrzymany jest czysty.";
};