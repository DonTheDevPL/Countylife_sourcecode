/*
	Author: Ben Harris
	Description: Heals you at a Hospital
*/

HRP_fnc_healHospital = {
	_EMT = 0;	

	{
		if (_x getVariable "ems" > 0) then{
			_EMT = _EMT + 1;
		};
	} forEach allPlayers;

	if (_EMT >= 4) exitWith { ["Error", "Nasze usługi są obecnie nie dostępne", true] spawn HRP_fnc_Notifications; };

	_check = [1, HRP_healPrice] call HRP_fnc_checkMoney;

	if !(_check) exitWith { ["Error", "Masz za mało funduszy", true] spawn HRP_fnc_Notifications; };

	[HRP_healPrice] call HRP_fnc_removeCash;

	player setDamage 0;
};