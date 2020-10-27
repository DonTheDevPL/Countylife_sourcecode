HRP_fnc_updateCooking = {
	_required = _this select 0;
	player playmovenow "";

	if (requiredInput == _required) then {
		["Sukces", "Coś zrobiłem... Wydaje się stabilne...", true] spawn HRP_fnc_Notifications;
		DrugValue = DrugValue + 10;
		//totalSkill = totalSkill - 10;
		if (_required == "Pseudo" || _required == "Metylo") then { playSound3D ["CG_Jobs\sounds\meth\drugAdd.ogg", player, false, getPosasl player, 2, 1, 15]; Smoke = "SmokeShellYellow" createVehicle position table; sleep 4; deleteVehicle smoke; };
		if (_required == "Cool") then {	playSound3D ["CG_Jobs\sounds\meth\drugCool.ogg", player, false, getPosasl player, 2, 1, 15]; };
		if (_required == "Heat") then {	playSound3D ["CG_Jobs\sounds\meth\drugBoil.ogg", player, false, getPosasl player, 2, 1, 15]; };
		if (_required == "Release") then {	playSound3D ["CG_Jobs\sounds\meth\drugPressure.ogg", player, false, getPosasl player, 2, 1, 15]; };
		if (_required == "AddWater") then {	playSound3D ["CG_Jobs\sounds\meth\drugAdd.ogg", player, false, getPosasl player, 2, 1, 15]; Smoke = "SmokeShellYellow" createVehicle position table; sleep 4; deleteVehicle smoke; };
		checkFinish = true;
	} else {
		DrugValue = DrugValue - 10;
		Smoke = "SmokeShellRed" createVehicle position table;
		sleep 4;
		deleteVehicle smoke;
		["UWAGA", "Miejmy nadzieje że nie jebnie...", true] spawn HRP_fnc_Notifications;
		_chance = random 20;
		playSound3D ["CG_Jobs\sounds\meth\drugBoil.ogg", player, false, getPosasl player, 5, 1, 15];
		sleep 3;
		if(_chance < 5) exitWith {
			"R_60mm_HE" createVehicle (getPosasl player);
			["UWAGA", "Walterem to ty nie zostaniesz...", true] spawn HRP_fnc_Notifications;
			cooking = false;
			player removeaction Action1;
			player removeaction Action2;
			player removeaction Action3;
			player removeaction Action4;
			player removeaction Action5;
			player removeaction Action6;
			deleteVehicle Table;
			deleteVehicle Table1;
			deleteVehicle tank;
			deleteVehicle tank1;
			deleteVehicle bucket;
		} else {
			["UWAGA", "To chyba cudem nie wybuchło...", true] spawn HRP_fnc_Notifications;
		};
	};
};