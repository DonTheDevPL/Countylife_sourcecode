/*
	Author: Ben Harris
	Description: Response to Call being Accepted
*/
HRP_fnc_acceptedCall = {
	params["_freq", "_callerID", "_caller"];

	HRP_Calling = false;
	closeDialog 5038;
	createDialog "HRP_Phone_inCall";
	HRP_Caller = _caller;
	HRP_CallerID = _callerID;

	HRP_inCall = "Accepted";

	HRP_oldFrequency = [(call TFAR_fnc_activeSwRadio), 1] call TFAR_fnc_GetChannelFrequency;
	if ("tf_anprc152" in (assignedItems player)) then {
		player unassignItem "tf_anprc152";
		
		if !("RR_CellPhone" in items player) then {
			player addItem "RR_CellPhone";
		};
		player assignItem "RR_CellPhone";
		HRP_hadRadio = true;
	};
	

	[(call TFAR_fnc_activeSwRadio), 1, _freq] call TFAR_fnc_SetChannelFrequency;
	player setVariable ["tf_unable_to_use_radio", false];
	HRP_inCurrentCall = true;

	_contacts = player getVariable "contactList";
	{
		if ((_x select 0) isEqualTo _callerID) then {
			ctrlSetText [2131, (_x select 1)];
			_bool = true;
		};
	} forEach _contacts;

	_number = [_callerID] call HRP_fnc_phoneNumberText;
	ctrlSetText [2134, _number];

	["Ktoś odebral połączenie", "Twoje połączenie zostało odebrane.", true] spawn HRP_fnc_Notifications; 
};