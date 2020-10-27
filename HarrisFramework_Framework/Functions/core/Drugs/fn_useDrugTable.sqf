HRP_fnc_useDrugTable = {
	player removeItem "W_drugTable";
	table = "Land_Sink_F" createVehicle position player;
	/*table1 = "Land_CampingTable_F" createVehicle position player;
	tank = "LandGasTank_01_blue_F" createVehicle position player;
	tank2 = "Land_GasCooker_F" createVehicle position player;
	bucket = "Land_PlasticBucket_01_closed_F" createVehicle position player;

	table1 attachTo [table, [0.1, -0.85, -0.2]];
	tank attachTo [table, [0.5, -0.9, -0.2]];
	tank2 attachTo [table, [0.5, -0.7, 0.3]];
	bucket attachTo [table, [-0.4, -0.9, 0.4]];
	*/
	Sleep 0.4;
	table attachTo [player, [0, 1.5, 0.5]];
	//player setVariable ["DrugTable", "holding", true];
	HoldingDrugTable = true;
};
