/*

	Author: Ben Harris
	Description: Initalises HUD
*/
HRP_fnc_initHUDLoop = {
	disableSerialization;


	2 cutRsc ["playerHUD","PLAIN"];

	update_running = false;
	sleep 0.75;
	update_running = true;

	while{update_running} do {
		[] spawn HRP_fnc_hudLoop;
		sleep 1;
	};
};