/*
	Author: Ben Harris
	Description: Receives Key
*/

HRP_fnc_getKey = {
	params["_car"];

	HRP_Keys pushBack _car;

	["Dodano klucz", "Klucz został dodany do twojego pęku kluczy", true] spawn HRP_fnc_Notifications;
};
