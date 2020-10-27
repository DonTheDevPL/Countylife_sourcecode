//File: fn_ringPlayer.sqf
	CurrentCaller = _this;
	_radios = player call TFAR_fnc_radiosList;
	if(count _radios > 0) then {
		//if( phoneDisabled ) exitwith { currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["Polaczenie od %1 trafilo do rejestru polaczen (Wylaczony telefon)",name CurrentCaller], false] spawn domsg; };
		if( callInProgress || PhonesRinging ) exitwith { currentCaller remoteExec ["life_fnc_busyAnswer",currentCaller]; };
		//if( life_battery < 5 ) exitwith { currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["Polaczenie od %1 trafilo do rejestru polaczen (Slaba bateria) ",name CurrentCaller], false] spawn domsg; };

		PhonesRinging = true;
		_endme = 0;
		while{PhonesRinging} do {
			playSound "cl_ringing";
			hint format["Dzwoni do Ciebie %1!",name currentcaller];
			sleep 5;
			_endme = _endme + 5;
			if(_endme > 20) exitwith { hint "Nie odebrales polaczenia!";  };
		};

		PhonesRinging = false;
	} else {
		currentCaller remoteExec ["life_fnc_busyAnswer",currentCaller];
		hint "Nie odebrales telefonu!";
	};