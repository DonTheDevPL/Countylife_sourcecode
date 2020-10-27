/*
	Author: Ben Harris
	Description: LegCuffs the Player and setVariable.
*/

HRP_fnc_LegCuffed = {
	params["_type"];

	if (_type == 1) then {
		player forceWalk true;
		["Zakuty", "Twoje nogi zostały zakute w kajdanki", true] spawn HRP_fnc_Notifications;
		player setVariable ["Shackled", true, true]; 
	} else {
		player forceWalk false;
		["Rozkuty", "Ściągnięto ci kajdanki z nóg", true] spawn HRP_fnc_Notifications;
		player setVariable ["Shackled", false, true];
	};
};