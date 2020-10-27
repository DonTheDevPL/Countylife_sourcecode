HRP_fnc_patDown = {
	params["_ct","_type"];
	HRP_patDownCoolDown = true;

	if (_type == 1) then {
		["Przeszukanie", "Przeszukuje podejrzanego...", false] spawn HRP_fnc_quickNotifications;
		[] remoteExecCall ["HRP_fnc_pattedDown", _ct];
	} else {
		["Rewizja", "Przeszukuje podejrzanego...", false] spawn HRP_fnc_quickNotifications;
		[] remoteExecCall ["HRP_fnc_strippedDown", _ct];
	};

	sleep 30;

	HRP_patDownCoolDown = false;
};