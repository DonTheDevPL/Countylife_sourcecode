HRP_fnc_dumpsterDrop = {
	if((player distance HRP_dumpster) > 60) exitWith {
		["Error","Jesteś za daleko od swojej śmieciary!",true] spawn HRP_fnc_Notifications;
	};
	_value = (Trash * round(random[20,50,100]) / 2);
	_outstanding = player getVariable "outStandingPay";
	_outstanding = _outstanding + _value;
	player setVariable["outStandingPay",_outstanding,true];
	systemChat format ["Dostałeś bonus w wyskokości $" + "%1, pamiętaj by zabrać swoją wypłatę z ceterLink'a", _value];
	Trash = 0;
	["Sukces","Opróżniłeś śmieciarę! Możesz zbierać dalej.",true] spawn HRP_fnc_Notifications;
};