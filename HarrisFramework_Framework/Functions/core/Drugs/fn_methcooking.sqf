HRP_fnc_methcooking = {
	PseudoArr = ["Substancja robi się czysta jak szklo!", "Substancja zmienila kolor!", "Substancja robi się jaśniejsza!", "PH substancji jest bliskie 1!"];
	MetylArr = ["Substancja robi się ciemniejsza!", "Substancja jest zanieczyszczona!","W substancji zaczynają się tworzyć grudki!","Substancja jest prawie czarna!","To nie wygląda dobrze..."];
	HeatArr = ["Substancja robi się gęsta!", "Substancja płynie za wolno!","Pojawia się piana!","Nic się nie dzieje..."];
	CoollArr = ["Substancja płynie za szybko!","Substancja robi się rzadka!","Substancja pachnie jak proszek do prania!","To się gotuje!","Kurła, chyba coś się przypala!"];
	ReleaseArr = ["Substancja płynie za szybko!","Zaczyna śmierdzieć!","Kolby są prawie puste!", "Nic nie widzę, za dużo pary!", "Pachnie zgniłym jajem..."];
	AddWaterArr = ["Substancja robi się strasznie gęsta!", "Wyczuwam charakterystyczny zapach octu..."];

	_count = 0;
	while {_count < 10 && cooking} do {
		sleep 20;
		_random = round(random 6);

		if(_random == 1 || _random == 0) then { requiredInput = "Pseudo"; _msg = PseudoArr call BIS_fnc_selectRandom; ["UWAGA", _msg, true] spawn HRP_fnc_Notifications;};
		if(_random == 2) then { requiredInput = "Metyl"; _msg = MetylArr call BIS_fnc_selectRandom; ["UWAGA", _msg, true] spawn HRP_fnc_Notifications;};
		if(_random == 3) then { requiredInput = "Heat"; _msg = HeatArr call BIS_fnc_selectRandom; ["UWAGA", _msg, true] spawn HRP_fnc_Notifications;};
		if(_random == 4) then { requiredInput = "Cool"; _msg = CoollArr call BIS_fnc_selectRandom; ["UWAGA", _msg, true] spawn HRP_fnc_Notifications;};
		if(_random == 5) then { requiredInput = "Release"; _msg = ReleaseArr call BIS_fnc_selectRandom; ["UWAGA", _msg, true] spawn HRP_fnc_Notifications;};
		if(_random == 6) then { requiredInput = "AddWater"; _msg = AddWaterArr call BIS_fnc_selectRandom; ["UWAGA", _msg, true] spawn HRP_fnc_Notifications;};

		checkFinish = false;
		//sleep 15;
		//Jesli nic nie zrobi przez 15 sec ma losowanie... i traci 10 pkt
		/*
		if (!checkFinish) then {
			DrugValue = DrugValue - 10;
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
				deleteVehicle tank2;
				deleteVehicle bucket;
			} else {
				["UWAGA", "To chyba cudem nie wybuchło...", true] spawn HRP_fnc_Notifications;
			};
		};
		*/
		_count = _count + 1;
	};

	//DrugValue = DrugValue - totalSkill;
	player removeAction Action1;
	player removeAction Action2;
	player removeAction Action3;
	player removeAction Action4;
	player removeAction Action5;
	player removeAction Action6;

	if (isNull Table) exitWith {};

	//_randomV = round(random 5) + 1;
	if (DrugValue <= 10) then { DrugValue = 10;};
	_randomV = DrugValue / 10;
	_item = "W_methBag";
	_msg2 = format["Ugotowałeś %1 worków mety", _randomV];
	["Sukces", _msg2, true] spawn HRP_fnc_Notifications;
	player additem "W_drugTable";
	while {_randomV > 0} do {
		player additem _item;
		_randomV = _randomV -1;
	};
	cooking = false;
	deleteVehicle Table;
	deleteVehicle Table1;
	deleteVehicle tank;
	deleteVehicle tank2;
	deleteVehicle bucket;
};