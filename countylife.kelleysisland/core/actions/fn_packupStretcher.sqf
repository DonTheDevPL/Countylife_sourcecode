//File: fn_packupStretcher.sqf
if(typeOf cursorObject == "brancardch") then {
	[true,"stretcher",1] call life_fnc_handleInv;
	deleteVehicle cursorObject;
} else {
	exitWith {};
};