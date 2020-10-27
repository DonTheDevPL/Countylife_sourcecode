/*
	Author: Ben Harris
	Description: Hangs up a Call
*/

HRP_fnc_hangUp = {

	if ("tf_anprc152" in (items player) && HRP_hadRadio) then {
		player unassignItem "HRP_CellPhone";
		player assignItem "tf_anprc152";
		HRP_hadRadio = false;
	};

	[] remoteExecCall ["HRP_fnc_hungUp", HRP_Caller];
	
	[(call TFAR_fnc_activeSwRadio), 1, HRP_oldFrequency] call TFAR_fnc_SetChannelFrequency;
	_cop = player getVariable "cop";
	_ems = player getVariable "ems";
	if ((_cop > 0) || (_ems > 0)) then
	{
	player setVariable ["tf_unable_to_use_radio", false];
	} else {
	player setVariable ["tf_unable_to_use_radio", true];
	};

	HRP_inCurrentCall = false;
	HRP_Calling = false;
};

