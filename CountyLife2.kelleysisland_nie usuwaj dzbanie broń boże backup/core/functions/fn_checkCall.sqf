//File: fn_checkCall.sqf
	tryingcall = true;
	private["_total","_endme","_newTotal"];
	_endme = 0;
	_total = myCallOwner getVariable "PhonecallNumber";
	_newTotal = _total + 1;
	if(_total isEqualTo 0) then {
		while{tryingCall} do {
			playSound "cl_calling";
			sleep 4;
			_endme = _endme + 2;
			_total = myCallOwner getVariable "PhonecallNumber";
			if(_total isEqualTo 1) exitwith { [] call life_fnc_answered; player call life_fnc_answercall; };
			if(_endme > 20) exitwith { [] call life_fnc_noanswer; };
		};
	} else {
		while{tryingCall} do {
			playSound "cl_calling";
			sleep 4;
			_endme = _endme + 2;
			_total = myCallOwner getVariable "PhonecallNumber";
			if(_total isEqualTo _newTotal) exitwith { [] call life_fnc_answered; };
			if(_endme > 20) exitwith { [] call life_fnc_noanswer; };
		};
	};
	tryingcall = false;