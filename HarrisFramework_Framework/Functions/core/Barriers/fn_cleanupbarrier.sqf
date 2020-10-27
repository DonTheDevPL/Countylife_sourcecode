HRP_fnc_cleanupbarrier = {
	_barriertodel = _this select 0;
	_actionid = _this select 1;
	barrierarray = ["plp_up_WoodBarrierLongPolice","plp_upm_WoodBarrierShortPoliceLightOn","plp_up_PlasticBarrierRed","plp_upm_TrafficConeRed","plp_up_BarrierTapePolice4m","plp_up_BarrierTapePolice8m"];
	switch _actionid do 
	{

		case 1:
		{
			switch _barriertodel do
			{
				case "Duża barierka":
				{
					_barrier = position player nearObjects ["plp_up_WoodBarrierLongPolice", 8];
					deleteVehicle (_barrier select 0);	
				};
				case "Mała barierka":
				{
					_barrier = position player nearObjects ["plp_upm_WoodBarrierShortPoliceLightOn", 3];
					deleteVehicle (_barrier select 0);
				};             
				case "Plastikowa barierka":
				{
					_barrier = position player nearObjects ["plp_up_PlasticBarrierRed", 3];
					deleteVehicle (_barrier select 0);
				};             
				case "Pachołek":
				{
					_barrier = position player nearObjects ["plp_upm_TrafficConeRed", 3.5];
					deleteVehicle (_barrier select 0);
				};             
				case "Słupek":
				{
					_barrier = position player nearObjects ["plp_up_BarrierBollardRed", 3];
					deleteVehicle (_barrier select 0);
				};              
				case "Taśma 4m":
				{
					_barrier = position player nearObjects ["plp_up_BarrierTapePolice4m", 3];
					deleteVehicle (_barrier select 0);
				};                 
				case "Taśma 8m":
				{
					_barrier = position player nearObjects ["plp_up_BarrierTapePolice8m", 3];
					deleteVehicle (_barrier select 0);
				};
			};
		};   
		case 2:
		{
			{   
				deleteVehicle _x; 
			}foreach nearestObjects [player,barrierarray,10];
		};
	};
};