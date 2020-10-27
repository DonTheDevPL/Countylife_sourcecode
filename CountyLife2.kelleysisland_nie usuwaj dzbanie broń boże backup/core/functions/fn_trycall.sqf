//File: fn_trycall.sqf
	/*
	if(callInProgress) exitwith {
		hint "Probujesz dodac kogos do obecnej rozmowy!";
		[] call life_fnc_callMenu;
	};
	*/
	if(PhonesRinging) exitwith {
		hint "Lacze z rozmowca..";
		CurrentCaller spawn life_fnc_answerCall;
	};
	if(TryingCall) exitwith {
		hint "Prosze poczekac az obecne polaczenie skonczy sie!";
	};

	hint "Dzwonisz do kogos!";
	[] call life_fnc_callMenu;