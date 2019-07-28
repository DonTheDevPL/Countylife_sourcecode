//File: fn_tryhangup.sqf
	if(PhonesRinging) exitwith {
		PhonesRinging = false;
		hint "Wyslano sygnal zajety.";
		[] call life_fnc_hangup;
	};

	if(tryingCall) exitwith {
		tryingcall = false;
		hint"Rozlaczam polaczenie.";
		[] call life_fnc_resetcall;
	};

	if(myCallOwner isEqualTo player) exitwith {
		hint"Rozlaczam polaczenie.";
		[] call life_fnc_resetcall;
	};

	if(callInProgress) exitwith {
		hint"Rozlaczam polaczenie.";
		[] call life_fnc_hangup;
	};


	hint"Resetuje liste polaczen.";
	[] call life_fnc_resetcall;