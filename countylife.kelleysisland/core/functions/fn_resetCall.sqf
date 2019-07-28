//File: fn_resetCall.sqf
	if(playerSide isEqualTo west) exitwith { [] call life_fnc_ChangePolice; };
	if(playerSide isEqualTo independent) exitwith { [] call life_fnc_ChangeEMS; };
	playSound "cl_hangup";
	player setvariable["PhoneCallNumber",0,true];
	player setvariable["PhoneID",0,true];
	callInProgress = false;
	myCallOwner = player;
	_mynumber = getPlayerUID player;
	//if(side player isEqualTo civilian) then {
	//	player setVariable ["tf_unable_to_use_radio", true];
	//};
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, _mynumber] call TFAR_fnc_SetChannelFrequency;
	call TFAR_fnc_HideHint;
	[] call life_fnc_hudUpdate;