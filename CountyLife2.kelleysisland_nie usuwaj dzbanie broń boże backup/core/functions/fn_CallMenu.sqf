//File: fn_CallMenu.sqf
	private["_display","_list","_side"];
	if (!([(call TFAR_fnc_ActiveSwRadio), "tf_anprc152"] call TFAR_fnc_isSameRadio)) then {
		hint "Nie masz telefonu";
	}else {
		disableSerialization;
		createdialog "cl_phone_call";
		waitUntil {!isNull (findDisplay 5337)};
		_display = findDisplay 5337;
		_list = _display displayCtrl 5338;
		lbClear _list;
		{
			if(_x != player) then {
				_side = switch(side _x) do {case west: {"Cop"}; case east : {"Mafia"}; case civilian : {"Civ"}; case independent : {"Medic"}; default {"Unknown"}; };
				_list lbAdd format["%1 - %2", name _x,_side];
				_list lbSetdata [(lbSize _list)-1,str(_x)];
			};
		} foreach playableUnits;

		if(side player != civilian) then {
				player setvariable["PhoneCallNumber",0,true];
				player setvariable["PhoneID",0,true];
				callInProgress = false;
				myCallOwner = player;
				_mynumber = getPlayerUID player;
				_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
				_channel = _channel + 1;
				[(call TFAR_fnc_activeSwRadio), _channel, _mynumber] call TFAR_fnc_SetChannelFrequency;
				call TFAR_fnc_HideHint;
		}else {
			ctrlShow[1002,false];
			ctrlShow[1003,false];
		};
	};