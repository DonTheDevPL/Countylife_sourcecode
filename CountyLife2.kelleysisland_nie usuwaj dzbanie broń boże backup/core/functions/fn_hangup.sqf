//File: fn_hangup.sqf
	if(CallInProgress) then
	{
		playSound "cl_hangup";
		if(player isEqualTo myCallOwner) exitwith {
			[] call life_fnc_resetcall;
			callInProgress = false;
		};
		_total = myCallOwner getVariable "PhonecallNumber";
		_total = _total - 1;
		myCallOwner setvariable["PhoneCallNumber",_total,true];
		[] call life_fnc_resetcall;
		callInProgress = false;
	};
	[] call life_fnc_hudUpdate;