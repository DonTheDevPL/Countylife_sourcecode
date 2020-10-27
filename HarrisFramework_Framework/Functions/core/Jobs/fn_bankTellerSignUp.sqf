/*
	Author: Ben Harris
	Description: Signs a person is as bank teller
*/

HRP_fnc_bankTellerSignUp = {
	
	player setVariable ["payCheque", HRP_bankTellerPay, true];
	player setVariable ["currentOccupation", "Bank Teller", true];

	player setVariable ["bankTeller", true, true];

	["Skukces", "Zaczołeś pracę jako kasjer, możesz teraz pomagać ludziom wypłacać i wpłacać gotówkę", true] spawn HRP_fnc_Notifications;
	[] spawn {
		while {true} do {
		  if !(player getVariable "bankTeller") exitWith {};
		  if (player distance (getMarkerPos "bankLocation") > 30) exitWith { 
		  	["Error", "Wyszedłeś z banku", true] spawn HRP_fnc_Notifications; 
		  	[] call HRP_fnc_bankTellerSignOff;
		  };
		};
		sleep 5;
	};
};
