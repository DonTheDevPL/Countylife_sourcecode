HRP_fnc_serverInit = {
	["HarrisFramework", "SQL_CUSTOM", "HarrisFramework.ini"] spawn ExternalS_fnc_ExtDBinit; // Need to Update on Server
	sleep 3;
	[] call Server_fnc_handleDisconnect;
	[] spawn Server_fnc_statSaveLoop;
	[] call HRP_fnc_shopConfig;
	HRP_Side = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Side Channel", "%UNIT_NAME", player];

	[] spawn HRP_fnc_fetchFelons;
	[] spawn HRP_fnc_fetchWarrants;
	missionNamespace setVariable ["threatLevel", "Green", true];


	missionNamespace setVariable ["firstLoad", true, true];

	[] remoteExecCall ["Server_fnc_fetchNews", 2];

	// [] spawn HRP_fnc_initTrafficLights;

	missionNamespace setVariable ["inRobbery", false, true];

	missionNamespace setVariable ["fires", [], true];

	[] spawn HRP_fnc_initOreLoop;

	[] spawn HRP_fnc_fireStart;

	/*
	[] spawn {
		sleep 50;
		_bank = (nearestObjects [[8722.78,6841.09,0.00143909],["building"],5]) select 0;
		_bank animate ["Vault_Door",0]; 
		_bank setVariable ['vaultUnlocked', false, true];
	};
	*/

	//[false] spawn HRP_fnc_serverRestart; // True/False - Server will auto restart

};