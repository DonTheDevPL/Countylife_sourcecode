HRP_fnc_dumpsterTake = {
	//this setVariable["full",1,true];
	if((cursorObject getVariable "full") > 0) then {
		if((player distance HRP_dumpster) > 60) exitWith {
			["Error","Jesteś za daleko od swojej śmieciary!",true] spawn HRP_fnc_Notifications;
		};
		player playmove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		_chance = round(random 10);
		if(_chance > 7) then {
			Trash = Trash + 10;
		} else {
			Trash = Trash + 40;
		};
		if(Trash >= 100) then {
			["Pełny","Twoja śmieciara jest pełna, opróżnij ją na wysypisku!",true] spawn HRP_fnc_Notifications;
			Trash = 100;
		} else {
			cursorObject setVariable["full",0,true];
			cursorObject setVariable["loot",0,true];
			sleep 1;
			["Sukces","Zebrałeś śmieci z tego kontenera, jedź dalej",true] spawn HRP_fnc_Notifications;
		};
	} else {
		["Pusto","Kontener jest pusty, ktoś cię wyprzedził... Szukaj dalej",true] spawn HRP_fnc_Notifications;
	};
};