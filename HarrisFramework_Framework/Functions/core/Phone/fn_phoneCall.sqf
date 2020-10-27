/*
	Author: Ben Harris
	Description: Calls Person
*/


HRP_fnc_phoneCall = {
	if (HRP_Calling) exitWith { ["Error","You are already in a call", true] spawn HRP_fnc_Notifications;};

	HRP_Calling = true;
	_value = false;
	{
		_cell = _x getVariable "yourNumber";
		if (_cell isEqualTo HRP_numberToCall) then {
			HRP_playerToCall = _x;
			_value = true;
		}
	} foreach allPlayers;

	if (_value isEqualTo "911") then {
		_Police = [];

		{
			if (player getVariable "cop" > 0) then {
				_Police pushBack _x;
				_value = true;
			};
		} forEach allPlayers;

		if (count _Police == 0) exitWith { playSound "dialing_tone"; sleep 3; ["Error", "Noone is monitoring this emergency service number", true] spawn HRP_fnc_Notifications; };
		HRP_playerToCall = selectRandom _Police;
	};
	if !(_value) exitWith { [] spawn { for "_i" from 0 to 2 do { playSound "dialing_tone"; sleep 3;	}; playSound "notinservice_tone"; ["Invalid CallerID", "This Cell Phone Number is Invalid", true] spawn HRP_fnc_Notifications; HRP_Calling = false; }; };
	if (HRP_playerToCall isEqualTo player) exitWith { ["Failed", "You cannot call yourself", true] spawn HRP_fnc_Notifications; HRP_Calling = false; };
	if (HRP_playerToCall getVariable "inCurrentCall") exitWith { ["Failure","This person is already in a call", true] spawn HRP_fnc_Notifications; HRP_Calling = false; };
	if (damage HRP_playerToCall > 90) exitWith { [] spawn { for "_i" from 0 to 2 do { playSound "dialing_tone"; sleep 3;	}; playSound "unavailable_tone"; ["Invalid CallerID", "This Cell Phone Number is Unavailable", true] spawn HRP_fnc_Notifications; HRP_Calling = false; }; };

	_callFreq = getPlayerUID player;
	//_callFreq = str (round (random 10000)); //Tutaj jest poprzednia wersja

	if (player getVariable "anonymousCalling") then {
		cellNumber = "Anonymous Caller ID";
	} else {
		cellNumber = player getVariable "yourNumber";
	};
	test = cellNumber;
	[_callFreq, cellNumber, player] remoteExecCall ["HRP_fnc_receiveCall", HRP_playerToCall];

	HRP_Caller = HRP_playerToCall;

	HRP_inCall = "Calling";
	[] spawn { while {true} do 
		{
			if (HRP_inCall isEqualTo "Declined") exitWith {};
			if (HRP_inCall isEqualTo "Accepted") exitWith {};
			if (HRP_inCall isEqualTo "Cancelled") exitWith {};
			if (HRP_inCall isEqualTo "Blocked") exitWith { sleep 3; playSound "unavailable_tone"; };
			playSound "dialing_tone";
			sleep 3;
		};
	};

	[] call HRP_fnc_openPhoneInCalling;
};