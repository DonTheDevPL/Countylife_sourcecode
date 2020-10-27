/*
	Author: Ben Harris
	Description: Function for being hung up on
*/

HRP_fnc_hungUp = {
	
	if ("tf_anprc152" in (items player) && HRP_hadRadio) then {
		player unassignItem "RR_CellPhone";
		player assignItem "tf_anprc152";
		HRP_hadRadio = false;
	};

	[(call TFAR_fnc_activeSwRadio), 1, HRP_oldFrequency] call TFAR_fnc_SetChannelFrequency;
	player setVariable ["tf_unable_to_use_radio", true];
	["Rozłączono", "Rozłączyłeś połączenie", false] spawn HRP_fnc_Notifications;
	HRP_inCurrentCall = false;
	HRP_Calling = false;

	if (!isNull (findDisplay 5040)) then {
		closeDialog 0;
	};
};