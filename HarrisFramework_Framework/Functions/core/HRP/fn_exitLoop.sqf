/*
	Author: Ben Harris
	Description: Loop to Check if Shop has been closed.
*/

HRP_fnc_exitLoop = {
	while {true} do { if (isNull (findDisplay 5002)) exitWith { clothing_cam cameraEffect ['TERMINATE','BACK'];  camDestroy clothing_cam; CShop_Open = false; deleteVehicle ShopCharacter; }; };
};