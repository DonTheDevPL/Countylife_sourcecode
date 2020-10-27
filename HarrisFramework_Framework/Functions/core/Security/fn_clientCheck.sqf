HRP_fnc_clientCheck = {
	_blackList = ((str (getPlayerUID player)) in HRP_blackListedUsers);

	if (_blackList) then {
		ctrlActivate ((finddisplay 0) displayctrl 101);
	};
};