//Author: TheWolek
HRP_fnc_fuelLBChange = {
	_control = _this select 0;
	_index = _this select 1;

	_className = _control lbData _index;
	_vIndex = _control lbValue _index;
	_vehicle = (VehiclefuelList select _vIndex) select 0;
	_vehicleInfo = [_className] call HRP_fnc_fetchVehInfo;

	_fuel = fuel _vehicle;
	_fuelTank = (_vehicleInfo select 8);
	ctrlShow [20330,true];

	((findDisplay 20300) (displayCtrl 20303)) ctrlSetStructuredText parseText format [
		"Pojemność baku: %1l<br/>" + 
		"Aktualna ilość paliwa: %2l",
		_fuelTank, round(_fuelTank * _fuel)
	];

	{
		slidersetRange [_x,(floor(_fuel * _fuelTank)),_fuelTank];		
	} forEach [20901];

	{
		sliderSetPosition[_x,(floor(_fuel * _fuelTank))];		
	} forEach [20901];

	ctrlSetText [20323,format ["Total: $%1",FuelCost * ((SliderPosition 20901) - (floor(_fuel * _fuelTank)))]];
	true;
};