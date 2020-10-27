HRP_fnc_removeDrugTable = {
	deleteVehicle Table;
	deleteVehicle Table1;
	deleteVehicle tank;
	deleteVehicle tank2;
	deleteVehicle bucket;
	cooking = false;
	HoldingDrugTable = false;
	cooking = false;
	detach table;
	player removeaction Action1;
	player removeaction Action2;
	player removeaction Action3;
	player removeaction Action4;
	player removeaction Action5;
	player removeaction Action6;
	["Sukces","Zebrałeś swój stół",true] spawn HRP_fnc_Notifications;
};