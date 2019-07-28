//File: fn_CallSomebody.sqf
	private["_unit"];
	_unit = lbData[5338,lbCurSel (5338)];
	_unit = call compile format["%1", _unit];
	closeDialog 0;
	if(isNil "_unit") exitwith {};
	if(isNull _unit) exitWith {};
	if(tryingcall) exitwith { hint "Poczekaj zanim znowu dodasz kogos do rozmowy - ktos sie laczy z poleczeniem!"; };
	if(PhonesRinging) exitwith { hint "Poczekaj zanim znowu dodasz kogos do rozmowy - ktos sie laczy z poleczeniem!"; };
	[] spawn life_fnc_checkCall;
	myCallOwner remoteExec ["life_fnc_ringPlayer",_unit];