/*
	Author: Ben Harris
	Description: Checks if the bus has been moved or not
*/

HRP_fnc_busCheck = {
	params["_cpos", "_pos"];
	
	[] spawn {
		sleep 300;

		if (_cpos == _pos) then {
			deleteVehicle GBus;
			HRP_currentBus = nil;
			["Odholowany", "Twoj autobus został odholowany z powodu braku aktywności kierowcy.", true] spawn HRP_fnc_Notifications;
		};
	};
};