/*
	Author: Ben Harris
	Description: Starts ATM Robbery
*/

HRP_fnc_robATM = {
	params["_ct"];

	if !(isNil {_ct getVariable "recentlyRobbed"}) exitWith { ["Error", "Ten bankomat nie ma już pieniędzy.", true] spawn HRP_fnc_Notifications; };
	_count = 0;
	{
		if (_x getVariable "cop" > 0) then {
			_count = _count + 1;
		};
	} forEach allPlayers;

	if (_count < 5) exitWith { ["Error", "Zbyt mało oficerów na służbie.", true] spawn HRP_fnc_Notifications; };
	player removeWeapon "A3L_Jackhammer";

	_ct setVariable ["beingRobbed", true, true];
	_value = false;
	_sleepTime = HRP_atmRobTime / 100;
	for "_i" from 1 to HRP_atmRobTime step _sleepTime do {
		if (isNil {_ct getVariable "beingRobbed"}) exitWith { _value = true; _ct setVariable ["robbingBlocked", nil, true]; _ct setVariable ["beingRobbed", nil, true];};
		playSound3D ["HarrisFramework_Sounds\Sounds\mine3.ogg", _ct, false, getpos _ct, 1, 1, 50];
		sleep _sleepTime;
	};

	if !(_value) then {
		if (round (random 10) < 3) then {
			_cops = [];
			{
				if ((_x getVariable "cop") > 0) then {
					[_ct] remoteExec ["HRP_fnc_atmAlertCops", _x];
				};
			} forEach allPlayers;

			["Sukces", "Włamałeś się do bankomatu uruchamiając czujniki...", true] spawn HRP_fnc_Notifications;
		} else {
			["Sukces", "Włamałeś się do bankomatu niewykrywalnie...", true] spawn HRP_fnc_Notifications;
		};

		_ct setVariable ["beingRobbed", nil, true];
		_ct setVariable ["cashToPickup", (400 + (round (random HRP_atmRobCash))), true];

		_ct setVariable ["recentlyRobbed", true, true];

		sleep 500;

		_ct setVariable ["recentlyRobbed", nil, false];
	};
};