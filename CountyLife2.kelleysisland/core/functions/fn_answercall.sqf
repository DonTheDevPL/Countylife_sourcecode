//File: fn_answercall.sqf
	PhonesRinging = false;
	myCallOwner = _this;
	myPhoneCall = getPlayerUID myCallOwner;
	player setvariable["PhoneID",myPhoneCall,true];
	player setVariable ["tf_unable_to_use_radio", false];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, myPhoneCall] call TFAR_fnc_SetChannelFrequency;
	call TFAR_fnc_HideHint;
	_total = myCallOwner getVariable "PhonecallNumber";
	_total = _total + 1;
	myCallOwner setvariable["PhoneCallNumber",_total,true];
	playSound "cl_slide";
	[] spawn life_fnc_callProgress;
	[] call life_fnc_hudUpdate;