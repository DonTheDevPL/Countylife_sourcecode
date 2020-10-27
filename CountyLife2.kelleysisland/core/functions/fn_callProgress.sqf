//File: fn_callProgress.sqf
	callInProgress = true;
	[] spawn {
		sleep 7;
		while{callInProgress} do {
			if( isNull myCallOwner ) exitwith { [] call life_fnc_resetcall; };
			_total = myCallOwner getVariable "PhonecallNumber";
			if( _total < 2 ) exitwith { [] call life_fnc_resetcall; };
			if( !alive player && myCallOwner != player ) exitwith { hint "Polaczenie rozlaczone (Jestes nieprzytomny)"; [] call life_fnc_hangup };
			sleep 10;
		};
	};
	[] call life_fnc_hudUpdate;