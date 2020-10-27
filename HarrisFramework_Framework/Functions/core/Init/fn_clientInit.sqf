HRP_fnc_clientInit = {

	HRP_loadedIn = false;
	player setVariable ["tf_unable_to_use_radio", true]; // Self Explanitory
	player setVariable ["tf_voiceVolume", 0, true]; // Self Explanitory

	[] call HRP_fnc_Configuration; // Item Configuration



	waitUntil {sleep 0.1; !(isNil {player}) && player == player && alive player && !isNull (findDisplay 46)};

	_text = format ["Fetching player information for [%1]", getPlayerUID player];
	cutText [_text,"BLACK",1];

	player setVariable ["cash", nil];
	[] call HRP_fnc_Configuration;

	HRP_startCar = selectRandom HRP_startingCars;
	[player] remoteExecCall ["Server_fnc_initStats", 2]; // Self Explanitory
	sleep 1;
	[player] remoteExecCall ["Server_fnc_fetchGarageImmigration", 2];

	sleep 1;
	HRP_firstTime = player getVariable["firstTime", true];

	sleep 1;
	
	if (HRP_firstTime) then {
		createDialog "HRP_immigrationMemo";
		waitUntil {!isNull (findDisplay 5040)};
		(findDisplay 5040) displaySetEventHandler ["KeyDown","if((_this select 1) isEqualTo 1) then {true}"];
		HRP_loadedIn = true;
		player setVariable["firstTime", nil, true]
	};

	waitUntil {!(isNil {player getVariable "cash"})};

	if !(HRP_firstTime) then {
		[] call HRP_fnc_listIdentities;
		HRP_loadedIn = true;
	};
	[] spawn {

		for "_i" from 0 to 10 do {
			if !(HRP_loadedIn) then {
				if (isNil "player getVariable 'identity'") then {
					[] call HRP_fnc_listIdentities;
					HRP_loadedIn = true;
				};
				sleep 1;
			};
		};
	};

	waitUntil {!(isNil {player getVariable "identity"})};
	_text = format ["Player information received, loading in..."];
	cutText [_text,"BLACK",1];
	sleep 1;

	cutText ["", "BLACK",1];
	[] spawn HRP_fnc_initHudLoop;
	
	[] call HRP_fnc_initInteractions;


	player addEventHandler ["InventoryOpened", { _this call HRP_fnc_inventoryOpened; }];
	
	player setVariable ["cuffed", false, true];

	RPF_Hunger = 0;
	RPF_Thirst = 0;

	[] call HRP_fnc_initHouseLocal;

	HRP_Holstered = 0;
	HRP_Keys = [];
	HRP_Containers = [];
	HRP_Dead = false;


	player addEventHandler["Fired", {_this call HRP_fnc_mineObject; _this call HRP_fnc_chopTree; _this call HRP_fnc_fireExtinguisher}];
	
	[] spawn HRP_fnc_initSurvivalLoop;

	[] call HRP_fnc_shopConfig;

	if !((player getVariable "arrestTime") > 0) then {
		[] call HRP_fnc_initSpawnMenu;

	} else {
		[] spawn HRP_fnc_jailInit;
	};

	[] spawn HRP_fnc_payChequeLoop;


	[] call HRP_fnc_clientCheck;
	[] call HRP_fnc_disableCheatMenu;

	[] call HRP_fnc_addDeathEVH;

	[] remoteExecCall ["Server_fnc_fetchNews", 2];

	[] call HRP_fnc_spawnFurniture;
	
	[] call HRP_fnc_initLoadHouses;

	[] call HRP_fnc_playerTags;
};

