/*
	Author: Ben Harris
	Description: Starts the robbery of the Bank Vault
*/

HRP_fnc_robBank = {
	params["_bank"];

	_count = 0;
	{
		if (_x getVariable "cop" > 0) then {
			_count = _count + 1;
		};
	} forEach allPlayers;

	if (_count < 5) exitWith { ["Error", "Zbyt mało oficerów na służbie.", true] spawn HRP_fnc_Notifications; };
	if !("RR_c4" in (items player)) exitWith { ["Error", "Potrzebujesz ładunku wybuchowego!", true] spawn HRP_fnc_Notifications; };
	if (_bank getVariable "recentlyRobbed") exitWith { ["Error", "Bank był napadany niedawno.", true] spawn HRP_fnc_Notifications; };
		
	_bank setVariable ["inRobbery", true];
	_pos = getPosAtl player;
	
	for "_i" from 0 to 5 do {
		["!!!NAPAD NA BANK W TOKU!!!"] remoteExecCall ["HRP_fnc_serverMsg", 0];
	};


	missionNamespace setVariable ["inRobbery", true, true];
	[_bank] spawn HRP_fnc_checkBank;
	sleep (HRP_bankRobberyTime * 60);

	if !(_bank getVariable "inRobbery") exitWith {};

	_bank allowDamage false;
	"R_60mm_HE" createvehicle _pos; 

	["Sukces", "Otworzyłeś sejf.", true] spawn HRP_fnc_Notifications;
	_bank setVariable ["inRobbery", false];
	_bank setVariable ["vaultUnlocked", true];

};