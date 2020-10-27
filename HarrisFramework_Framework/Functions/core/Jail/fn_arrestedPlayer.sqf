/*
	Author: Ben Harris
	Description: Arrests the Player
*/

HRP_fnc_arrestedPlayer = {
	params ["_timeLeft", "_notes", "_crimes"];

	player setVariable ["Arrested", true, true];
	player setVariable ["arrestCrimes", _crimes, true];
	player setVariable ["arrestTime", _timeLeft, true];


	123 cutRsc ["HRP_jailMenu","PLAIN"];
	_ui = uiNameSpace getVariable ["HRP_jailMenu",displayNull];
	_time = _ui displayCtrl 1023;
	_notes = _ui displayCtrl 1024;

	//_timeLeft = _timeLeft * 60;

	_time ctrlSetText format["%1",str (player getVariable "arrestTime")];
	_notes ctrlSetText format["%1",(player getVariable "arrestCrimes")];

	if (isNil {player getVariable "assignedCell"}) then {
		player setVariable ["assignedCell", (selectRandom HRP_cellNumbers), true];
	};

	while {true} do
	{
		if (player getVariable "Arrested") then {
			_timeLeft = _timeLeft - 1;
			player setVariable ["arrestTime", _timeLeft, true];
			_time ctrlSetText format["%1",str _timeLeft];
		};

		if (player distance (getMarkerPos "HRP_Prison") > 50) exitWith {
			player setVariable ["Arrested", false, true];
			player setVariable ["arrestTime", 0, true];
			player setVariable ["arrestNotes", nil, true];
			["Ucieczka", "Uciekłeś z więzienia", true] spawn HRP_fnc_Notifications;
			123 cutText	["", "PLAIN"];
		};

		if (_timeLeft <= 0) exitWith {
			["Wyszedłeś", "Opuściłeś zakład karny", true] spawn HRP_fnc_Notifications;
			player setVariable ["Arrested", false, true];
			player setVariable ["arrestTime", 0, true];
			player setVariable ["arrestNotes", nil, true];

			123 cutText	["", "PLAIN"];

			player setpos (getMarkerPos "HRP_Release");
		};

		uiSleep 1;
	};

	[] call HRP_fnc_syncSilent;
};