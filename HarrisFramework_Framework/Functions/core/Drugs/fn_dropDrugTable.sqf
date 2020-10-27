HRP_fnc_dropDrugTable = {
	if !(((player distance (nearestBuilding player)) > 15) || (count (nearestObjects [player, ["Land_Portable_generator_F"], 20]) > 0)) exitWith { ["Error", "Musisz być blisko jakiegoś budynku lub innego zródła zasilania.", true] spawn HRP_fnc_Notificiations; };
	detach Table;
	table1 = "Land_CampingTable_F" createVehicle position player;
	tank = "LandGasTank_01_blue_F" createVehicle position player;
	tank2 = "Land_GasCooker_F" createVehicle position player;
	bucket = "Land_PlasticBucket_01_closed_F" createVehicle position player;

	table1 attachTo [table, [0.1, -0.85, -0.2]];
	tank attachTo [table, [0.5, -0.9, -0.2]];
	tank2 attachTo [table, [0.5, -0.7, 0.3]];
	bucket attachTo [table, [-0.4, -0.9, 0.4]];
	["Sukces", "We need to cook Mr.White!", true] spawn HRP_fnc_Notifications;

	HoldingDrugTable = false;
	cooking = true;
	CookActionStart = Table addAction ["Zacznij Gotować", {
		[] spawn HRP_fnc_methcooking;
		totalSkill = 0;
		DrugValue = 0;
		Table removeAction CookActionStart;
		Action1 = Table addAction ["Rozpuść Pseudoefedryne", {["Pseudo"] call HRP_fnc_updateCooking;}];
		Action2 = Table addAction ["Dodaj Metyloamine", {["Metyl"] call HRP_fnc_updateCooking;}];
		Action3 = Table addAction ["Odkręć gaz", {["Heat"] call HRP_fnc_updateCooking;}];
		Action4 = Table addAction ["Zakręć gaz", {["Cool"] call HRP_fnc_updateCooking;}];
		Action5 = Table addAction ["Opróznij kolbę z gazu", {["Release"] call HRP_fnc_updateCooking;}];
		Action6 = Table addAction ["Dodaj wody", {["AddWater"] call HRP_fnc_updateCooking;}];
	}];
};
