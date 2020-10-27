/*
	Author: Ben Harris
	Description: Tow Driver Sign in
*/

HRP_fnc_towDriverSignIn = {
	
	["Sukces", "Pracujesz teraz jako mechanik", true] spawn HRP_fnc_Notifications;

	player setVariable ["towTruckDriver", true, true];
	player setVariable ["payCheque", HRP_towTruckDriverPay, true];
	player setVariable ["currentOccupation", "Tow Truck Driver", true];

	["Sukces", "Naprawiaj i holuj pojazdy swoich klientów.", true] spawn HRP_fnc_Notifications;
};

