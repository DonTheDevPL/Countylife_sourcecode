/*
	Author: Ben Harris
	Description: Initalises finding the Vehicle from DB
*/

HRP_fnc_findVehicle = {
	HRP_plate = ctrlText 1400;
	[HRP_plate, player] remoteExecCall ["Server_fnc_findVehicle", 2];
};