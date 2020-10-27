HRP_fnc_destroyCrate = {
	params ["_ct"];

	deleteVehicle _ct;	
	["Sukces", "Skrzynia zniszczona.", true] spawn HRP_fnc_Notifications;
};