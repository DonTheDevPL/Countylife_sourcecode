/*
	Author: Ben Harris
	Description: Taxi
*/

HRP_fnc_onTaxiLBChanged = {
	lb = lbData [ 1501, ( lbCurSel 1501 ) ];
	lb = call compile lb;

	HRP_TaxiDriver = HRP_TaxiDrivers select lb;

	_distance = player distance HRP_TaxiDriver;
	_vehicle = vehicle HRP_TaxiDriver;
	if (_vehicle isKindOf "LandVehicle") then {
		_vehicle = vehicle HRP_TaxiDriver;
		_vehicle = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
	} else {
		_vehicle = "None";
	};
	HRP_numberToCall = HRP_TaxiDriver getVariable "yourNumber";

	_disMsg = format ["%1m", _distance];

	ctrlSetText [1235, _disMsg];
	ctrlSetText [1236, _vehicle];
};