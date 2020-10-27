/*
	Author: Ben Harris
	Description: Sign in for security guards
*/	

HRP_fnc_securityGuardSignIn = {
	
	if (missionNamespace getVariable "inRobbery") exitWith {
		["Error", "Bank był napadany niedawno.", true] spawn HRP_fnc_Notifications;
	};
	
	player setVariable ["payCheque", HRP_securityPay, true];
	player setVariable ["currentOccupation", "Security Guard", true];

	player setVariable ["securityGuard", true, true];


	[] spawn {
		while {true} do {
			if !(player getVariable "securityGuard") exitWith {};
			if (player distance (getMarkerPos "bankLocation") > 100) exitWith { 
			  	["Error", "Odeszłeś za daleko od banku", true] spawn HRP_fnc_Notifications; 
			  	[] call HRP_fnc_securityGuardSignOff;
			};
			if (missionNamespace getVariable "inRobbery") exitWith {
				["Failure", "Nie obroniłeś banku przed napadem i zostałeś zwolniony.", true] spawn HRP_fnc_Notifications;
				[] call HRP_fnc_securityGuardSignOff;
			};
			sleep 5;
		 };
	};

	  ["Sukces", "Jesteś teraz Ochroniażem - Patroluj okolice banku i współpracuj z Sheriff Office.", true] spawn HRP_fnc_Notifications;
};
