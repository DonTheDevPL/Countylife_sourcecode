//File: fn_changeEMS.sqf
	if(side player isEqualTo civilian ) exitwith {};
	player setvariable["PhoneCallNumber",999,true];
	player setvariable["PhoneID",999,true];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, 999] call TFAR_fnc_SetChannelFrequency;
	callInProgress = false;
	myCallOwner = player;
	player setVariable ["tf_unable_to_use_radio", false];
	call TFAR_fnc_HideHint;
	playSound "cl_slide";
	[] call life_fnc_hudUpdate;
	hint "Jestes na czestotliwosci EMS!";