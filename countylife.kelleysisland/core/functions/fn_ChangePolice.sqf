//File: fn_changePolice.sqf
	if(side player isEqualTo civilian) exitwith {};
	player setvariable["PhoneCallNumber",997,true];
	player setvariable["PhoneID",997,true];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, 997] call TFAR_fnc_SetChannelFrequency;
	callInProgress = false;
	myCallOwner = player;
	player setVariable ["tf_unable_to_use_radio", false];
	call TFAR_fnc_HideHint;
	playSound "cl_slide";
	[] call life_fnc_hudUpdate;
	hint "Jestes na policyjnej czestotliwosci!";