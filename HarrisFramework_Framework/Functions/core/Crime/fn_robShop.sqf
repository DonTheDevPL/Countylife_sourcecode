/*
	Author: Ben Harris
	Description: Starts Shop Robbery
*/

HRP_fnc_robShop = {
	params["_target"];

	_target setVariable ["robbing", true, true];

	["Zaczynamy...", "Remember, no mercy...", true] spawn HRP_fnc_Notifications;

	HRP_robbing = true;
	{[_target] remoteExec ["HRP_fnc_AlertCops",_x];}forEach allPlayers;

	for "_i" from 0 to (HRP_robTime * 60) do {

		if ((player distance _target) > 10) exitWith { HRP_robbing = false; ["Robbery Failed", "You moved too far away", true] spawn HRP_fnc_Notifications; _target setVariable ["robbing", nil, true]; };
		sleep 1;
	};


	if (HRP_robbing) then {
		HRP_robbing = false;
		_target setVariable ["robbing", nil, true];

		[_target] call HRP_fnc_robShopFinish;
		["Sukces", "Ukradłeś przedmioty i pieniądze.", true] spawn HRP_fnc_Notifications;
	};
	
};