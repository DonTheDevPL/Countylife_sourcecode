/*
	Author: Ben Harris
	Description: Allows Police to 'Lock' an ATM after or in robbery
*/

HRP_fnc_lockATM = {
	params["_ct"];

	_ct setVariable ["beingRobbed", nil, true];
	_ct setVariable ["cashToPickup", nil, true];

	["Sukces", "Bankomat zabezpieczony.", true] spawn HRP_fnc_Notifications;	
};