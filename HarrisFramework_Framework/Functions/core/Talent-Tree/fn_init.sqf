/*--------------------------------------------------------------------
scriptName "fn_init";
	Author: Maverick (ofpectag: MAV)
    File: fn_init.sqf

	<Maverick Applications>
    Written by Maverick Applications (www.maverick-apps.de)
    You're not allowed to use this file without permission from the author!
--------------------------------------------------------------------*/
#define __filename "fn_init.sqf"
HRP_fnc_init = {
	[] spawn {
		diag_log "fn_init.sqf 1";
		if (isServer && !hasInterface) exitWith {};

		diag_log "fn_init.sqf 2";
		life_perksInitialized = false;
		life_currentExpPerks = (0 call HRP_fnc_generateBasePerks);
		life_currentExpLevel = 0;
		life_currentExp = 0;
		life_currentPerkPoints = 0;

		diag_log "fn_init.sqf 3";

		// Wait until player is ready
		waitUntil {player == player};

		// Request data from server
		diag_log "Requesting experience data from server";
		[player] remoteExecCall ["HRP_fnc_loadFromDatabase", 2];

		// Create auto-retry thread
		[] spawn {
			while {!life_perksInitialized} do
			{
				sleep 5;
				if (life_perksInitialized) exitWith {};
				diag_log "Requesting experience data from server (RETRY)";
				[player] remoteExecCall ["HRP_fnc_loadFromDatabase", 2];
			};
		};

		// Load key bindings
		HRP_keybindings_code = getNumber (missionConfigFile >> "Maverick_TTM" >> "Config" >> "keyCode");
		HRP_keybindings_shift = getNumber (missionConfigFile >> "Maverick_TTM" >> "Config" >> "shift");
		HRP_keybindings_ctrl = getNumber (missionConfigFile >> "Maverick_TTM" >> "Config" >> "ctrl");

		// Add handler to display
		waitUntil {!isNull (findDisplay 46)};
		(findDisplay 46) displayAddEventHandler ["KeyDown", {
			params [
				"_display",
				"_code",
				"_shift",
				"_ctrl",
				"_alt"
			];

			if (HRP_keybindings_code != _code) exitWith {};
			if ((HRP_keybindings_shift == 1) && !_shift) exitWith {};
			if ((HRP_keybindings_ctrl == 1) && !_ctrl) exitWith {};

			if (!dialog && (diag_tickTime - (missionNamespace getVariable ["HRP_lastOpenTime", 0]) > 3)) then {
				HRP_lastOpenTime = diag_tickTime;
				createDialog "TTM_GUI_RscDisplayTalentOverview";
			};
		}];
	};
};