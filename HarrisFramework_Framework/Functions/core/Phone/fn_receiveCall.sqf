/*
	Author: Ben Harris
	Description: Receives a Call and allows response
*/
HRP_fnc_receiveCall = {
	params["_callFreq", "_callerID", "_caller"];

	if (player getVariable "blockedCall") exitWith { [] remoteExecCall ["HRP_fnc_blockedCall", _caller]; };

	HRP_OwnerFreq = _callFreq;
	_bool = false;
	HRP_receivingCall = true;

	HRP_Caller = _caller;
	HRP_CallerID = _callerID;
	HRP_CallerFreq = _callFreq;

	systemChat format ["You are Getting a Call From %1", HRP_CallerID];

	ringTone = player getVariable "ringTone";
	{
		if (ringTone isEqualTo (_x select 1)) then{
			ringSleepTime = _x select 2;
		};
	} forEach HRP_ringTones;
	[] spawn {
		while {true} do
		{
	 		if !(HRP_receivingCall) exitWith {};
	 		playSound ringTone;
	 		sleep ringSleepTime;
		};
	};
};