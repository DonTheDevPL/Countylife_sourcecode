/*
	Author: Ben Harris
	Description: Harvest Your Crops
*/

HRP_fnc_Harvest = {
	params["_ct"];
	_timeLeft = _ct getVariable "growTime";
	test = _timeLeft;
	if (_timeLeft < 100) exitWith {	_msg = format ["Ta roślina urosła tylko w %1 procentach, Poczekaj aż dojrzeje.", _timeLeft]; ["Error", _msg, true] spawn HRP_fnc_Notifications; };

	_type = _ct getVariable "plantType";
	player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
	switch (_type) do
	{
		case "Wheat": 
		{
			_valueArray = ["1","2","3","4","5"];
			_value = selectRandom _valueArray;
			_value = call compile _value;
			_msg = format ["Zebrałeś %1 zboża, cierpliwość popłaca.", _value];
			["Zebrałeś zboże", _msg, true] spawn HRP_fnc_Notifications;
			deleteVehicle _ct;

			while {_value > 0} do
				{
					player addItem "HRP_Wheat";
					_value = _value - 1;
				};
		};
	};
};