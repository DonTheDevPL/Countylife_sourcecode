/*
	Author: Ben Harris
	Description: Accepts a Phone Call
*/
HRP_fnc_acceptCall = {

	HRP_oldFrequency = [(call TFAR_fnc_activeSwRadio), 1] call TFAR_fnc_GetChannelFrequency;
	if ("tf_anprc152" in (assignedItems player)) then {
		player unassignItem "tf_anprc152";
		
		if !("RR_CellPhone" in items player) then {
			player addItem "RR_CellPhone";
		};
		player assignItem "RR_CellPhone";
		HRP_hadRadio = true;
	};

	[(call TFAR_fnc_activeSwRadio), 1, HRP_CallerFreq] call TFAR_fnc_SetChannelFrequency;
	player setVariable ["tf_unable_to_use_radio", false];

	[HRP_CallerFreq, (player getVariable "yourNumber"), player] remoteExecCall ["HRP_fnc_acceptedCall", HRP_Caller];
	HRP_inCurrentCall = true;
	HRP_receivingCall = false;

	[] call HRP_fnc_openPhoneInCall;
	
	HRP_receivingCall = false;;
};