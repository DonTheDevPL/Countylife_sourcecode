_required = _this select 0;
player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";

if(requiredInput == _required) then {
	hint "Cos zrobilem...wydaje sie stabilne";
	DrugValue = DrugValue + 10;

	if (_required == "Pseudo") then {	playSound3D ["CG_Jobs\sounds\meth\drugCool.ogg", player, false, getPosasl player, 2, 1, 15]; [false,"Pseudo",1] call life_fnc_handleInv; Smoke = "SmokeShellYellow" createVehicle position table; sleep 5; deleteVehicle smoke;};
	if (_required == "Amfetamina") then { playSound3D ["CG_Jobs\sounds\meth\drugAdd.ogg", player, false, getPosasl player, 2, 1, 15]; [false,"Amfetamina",1] call life_fnc_handleInv; Smoke = "SmokeShellYellow" createVehicle position table; sleep 5; deleteVehicle smoke; };
	if (_required == "Cool") then {	playSound3D ["CG_Jobs\sounds\meth\drugCool.ogg", player, false, getPosasl player, 2, 1, 15]; };
	if (_required == "Heat") then {	playSound3D ["CG_Jobs\sounds\meth\drugBoil.ogg", player, false, getPosasl player, 2, 1, 15]; };
	if (_required == "Release") then {	playSound3D ["CG_Jobs\sounds\meth\drugPressure.ogg", player, false, getPosasl player, 2, 1, 15]; Smoke = "SmokeShellYellow" createVehicle position table; sleep 10; deleteVehicle smoke; };
	checkFinish = true;
} else {
	Smoke = "SmokeShellRed" createVehicle position table;
	sleep 10;
	deleteVehicle Smoke;
	hint "Miejmy nadzieje ze nic sie nie stanie";
	_chance = random 100;
	playSound3D ["CG_Jobs\sounds\meth\drugBoil.ogg", player, false, getPosasl player, 5, 1, 15];
	sleep 3;
	if(_chance <= 50) exitWith {
		_bomb = "Bo_GBU12_LGB_MI10" createVehicle position player;
		hint "Walterem to ty nie zostaniesz";
		cooking = false;
		player removeaction Action1;
		player removeaction Action2;
		player removeaction Action3;
		player removeaction Action4;
		player removeaction Action5;
		deleteVehicle Table;
		deleteVehicle tank;
		deleteVehicle bucket;
	} else {
		hint "To chyba cudem nie wybuchlo";
	};
};