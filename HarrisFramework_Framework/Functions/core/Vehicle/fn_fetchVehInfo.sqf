//Author: TheWolek
HRP_fnc_fetchVehInfo = {
	_class = [_this,0,"",[""]] call BIS_fnc_param;
	if (_class isEqualTo "") exitWith {[]}; //Bad class passed.

	_picture = "";
	_displayName = "";
	_vehicleClass = "";
	_speed = 0;
	_armor = 0;
	_seats = 0;
	_hp = 0;
	_fuel = 0;

	if (isClass (configFile >> "CfgVehicles" >> _class)) then {
		_vehicleClass = _class;
		_displayName = getText(configFile >> "CfgVehicles" >> _class >> "DisplayName");
		_picture = getText(configFile >> "CfgVehicles" >> _class >> "picture");
		_speed = getNumber(configFile >> "CfgVehicles" >> _class >> "maxSpeed");
		_armor = getNumber(configFile >> "CfgVehicles" >> _class >> "armor");
		_seats = getNumber(configFile >> "CfgVehicles" >> _class >> "transportSoldier");
		_hp = getNumber(configFile >> "CfgVehicles" >> _class >> "enginePower");
		_fuel = getNumber(configFile >> "CfgVehicles" >> _class >> "fuelCapacity");
	};

	//Return
	[_class,_vehicleClass,_displayName,_picture,_speed,_armor,_seats,_hp,_fuel];
	
};