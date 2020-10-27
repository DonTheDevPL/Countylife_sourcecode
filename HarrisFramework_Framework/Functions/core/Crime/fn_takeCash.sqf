/*
	Author: Ben Harris
	Description: Take Cash from the bank vault
*/

HRP_fnc_takeCash = {
	params["_ct"];
	_ammount = round(random HRP_maxBankCash);

	_ct setVariable ["recentlyRobbed", true, true];

	[_ct] spawn HRP_fnc_checkBankCash;

	for "_i" from 0 to 10 do {
		player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
		sleep 4;
	};
	
	[_ammount] call HRP_fnc_addCash;

	_msg = format ["Ukradłeś %1", _ammount];
	["Sukces", _msg, true] spawn HRP_fnc_Notifications;
};