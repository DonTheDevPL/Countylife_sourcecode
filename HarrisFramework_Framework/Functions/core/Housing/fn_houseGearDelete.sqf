/*
	Author: Ben Harris
	Description: Deletes Object after Time and Saves to DB // Todo add to inventoryOpened EVH
*/

HRP_fnc_houseGearDelete = {
	params["_ct"];	
	sleep 5; // 5 for Testing
	[_ct] call HRP_fnc_saveGear;
	deleteVehicle _ct;
};