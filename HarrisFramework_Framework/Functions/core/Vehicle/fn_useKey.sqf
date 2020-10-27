
HRP_fnc_useKey = {
	params ["_veh"];
	_locked = locked _veh;
	if(_locked == 2 || _locked == 3) then 
	{
		[player, "unlockCar"] remoteExecCall ["HRP_fnc_playSound", 0];
		["Sukces", "Pojazd otwarty", true] spawn HRP_fnc_quickNotifications;
		_veh lock 0;
	} 
		else 
	{
		[player, "unlockCar"] remoteExecCall ["HRP_fnc_playSound", 0];
		["Sukces", "Pojazd zamknięty", true] spawn HRP_fnc_quickNotifications;
		_veh lock 2;
	};
};