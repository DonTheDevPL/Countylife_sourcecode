/*
	Author: Ben Harris
	Description: Loop to Check if Shop has been closed.
*/

HRP_fnc_exitLoopV = {
	while {true} do { if (isNull (findDisplay 5003)) exitWith { veh_cam cameraEffect ['TERMINATE','BACK'];  camDestroy veh_cam; VShop_Open = false; deleteVehicle VehShop; }; };
};