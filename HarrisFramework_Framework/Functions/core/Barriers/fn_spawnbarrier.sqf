HRP_fnc_spawnbarrier = {
	selection = _this select 0;
	closeDialog 0;
	dropbarrier = player addaction [("Drop Barrier"),{detach barrier; barrier setVectorUP (surfaceNormal [(getPosATL barrier) select 0,(getPosATL barrier) select 1]); barrier = nil; player removeaction dropbarrier;},[""],0.1,false,true,"","vehicle player isequalto player"];
	Barrier_Spawn = 
	{
		selectedbarrier = _this select 0;
		detach barrier;
		barrier = selectedbarrier createVehicle position player;
		if (selection == "Bargate") then 
		{ 
				barrier attachTo [player, [0, 4, 4.3]];
				barrier allowdamage false;
				dropbarrier;
		} 
		else
		{
				barrier attachTo [player, [0, 2, 0.35]];
				dropbarrier;
		};
	};
	switch selection do
	{       
				case "Duża barierka":
				{
					["plp_up_WoodBarrierLongPolice"] call Barrier_Spawn;
				};
				case "Mała barierka":
				{
					["plp_upm_WoodBarrierShortPoliceLightOn"] call Barrier_Spawn;
				};             
				case "Plastikowa barierka":
				{
					["plp_up_PlasticBarrierRed"] call Barrier_Spawn;
				};             
				case "Pachołek":
				{
					["plp_upm_TrafficConeRed"] call Barrier_Spawn;
				};             
				case "Słupek":
				{
					["plp_up_BarrierBollardRed"] call Barrier_Spawn;
				};                         
				case "Taśma 4m":
				{
					["plp_up_BarrierTapePolice4m"] call Barrier_Spawn;
				};              
				case "Taśma 8m":
				{
					["plp_up_BarrierTapePolice8m"] call Barrier_Spawn;
				};
	};
};