//Author: TheWolek
HRP_fnc_fuelRefuelCar = {
	_className = lbData[20302,(lbCurSel 20302)];
	_index = lbValue[20302,(lbCurSel 20302)];

	if (isNil "_classname" || _classname isEqualTo "") exitWith {
		hint "Wybierz pojazd";
		vehiclefuelList = [];
		closeDialog 0;
	};

	_car = (vehiclefuelList select _index) select 0;
	_vehicleInfo = [_className]call HRP_fnc_fetchVehInfo;
	_fuelNow = fuel _car;
	_fueltank = _vehicleInfo select 8;
	_fueltoput= ((SliderPosition 20901)-(floor(_fuelnow * _fueltank)));
	_setfuell = _fuelnow + (_fueltoput/_fueltank);

	if (_car distance player > 10 && !(isNull objectParent player)) exitWith {
		hint "Pojazd jest zbyt daleko!";
		vehiclefuelList = [];
		closeDialog 0;
	};

	TotalCost = _fueltoput * FuelCost;
	HRP_Check = [0, TotalCost] call HRP_fnc_checkMoney;
	_Station = nearestObject [position player, "Land_FuelStation_01_shop_F"];
	_ownerV = _station getVariable "fuelStation";
	/*
		0: owner UID
		1: 
	*/
	_owner = _ownerV select 0;
	if(_owner != "" ) then {
		if(HRP_Check) then {

		} else {
			["Error", "Zbyt mało funduszy w banku.", true] spawn HRP_fnc_Notifications;
		};

	} else {
		["Error", "Brak właściciela stacji", true] spawn HRP_fnc_Notifications;
	};
	
};