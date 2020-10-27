//Author: TheWolek
HRP_fnc_onSliderChange = {
	_value = [_this,1,-1,[0]] call BIS_fnc_param;

	_className = lbData[20302,(lbCurSel 20302)];
	_index = lbValue[20302,(lbCurSel 30302)];
	if((lbCurSel 20302) isEqualTo -1) exitWith {hint "Wybierz pojazd"};
	if(!isNil "_className" || _className == "") then {
		_car = (vehiclefuelList select _index) select 0;
		_vehicleInfo = [_className] call HRP_fnc_fetchVehInfo;
		_fuel = fuel _car;
		_fuelTank = (_vehicleInfo select 8);
		ctrlSetText[20324,format ["Fuel : %1 liters",round(_value) - (floor(_fuel * _fueltank))]];
            ctrlSetText [20323,format ["Total : $%1",round (life_fuelPrices * (round(_value) -(floor(_fuel * _fueltank)))) ]];
	} else {
		hint "Wybierz pojazd";
	};
};