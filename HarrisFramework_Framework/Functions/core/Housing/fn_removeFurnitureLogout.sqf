/*
	Author: Ben Harris
	Description: Removes furniture when u logout
*/
HRP_fnc_removeFurnitureLogout = {
	params["_unit"];

	{
		deleteVehicle (_x select 0);
	} forEach (_unit getVariable "furniture");
};